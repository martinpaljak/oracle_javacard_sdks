/*
* $Workfile: ParametersFile.java $	$Revision: 7 $, $Date: 5/02/00 9:05p $
*
* Copyright (c) 1999 Sun Microsystems, Inc. All Rights Reserved.
*
* This software is the confidential and proprietary information of Sun
* Microsystems, Inc. ("Confidential Information").  You shall not
* disclose such Confidential Information and shall use it only in
* accordance with the terms of the license agreement you entered into
* with Sun.
*
* SUN MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE
* SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
* IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
* PURPOSE, OR NON-INFRINGEMENT. SUN SHALL NOT BE LIABLE FOR ANY DAMAGES
* SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING
* THIS SOFTWARE OR ITS DERIVATIVES.
*/

// /*
// $Workfile: ParametersFile.java $
// $Revision: 7 $
// $Date: 5/02/00 9:05p $
// $Author: Akuzmin $
// $Archive: /Products/Europa/samples/com/sun/javacard/samples/JavaPurse/ParametersFile.java $
// $Modtime: 5/02/00 7:18p $
// Original author:  Zhiqun
// */

package	com.sun.javacard.samples.JavaPurse;
import javacard.framework.*;

/**
 * This is the class for all linear variable-length record files, and the base class
 * for linear variable-fixed and cyclic record files.<p>
 *
 */

class ParametersFile {

  // Variables
  Record records[];
  byte numRecords;

  /**
   * Constructor.
   * @param maxNumRecords the maximum number of records in this file
   */
   public ParametersFile(byte maxNumRecords) {
    records = new Record[maxNumRecords];
	numRecords = 0;
   }


  /**
   * Get the actual number of records in this file.
   * @return numRecords
   */
   public byte getNumRecords() {
    return numRecords;
   }

  /**
   * Add (append) a new record to the file. Note that
   * the record reference is stored in the file object. A copy of the
   * record byte array is not made.
   * @param record the record byte array
   * @exception ISOException if the file is full.
   * <ul>
   * <li>ISOException.reason = ISO7816.SW_FILE_FULL
   * </ul>
   */
   public void addRecord(byte record[]) throws ISOException{
     if ( records.length == numRecords)
       ISOException.throwIt(ISO7816.SW_FILE_FULL);
     records[numRecords++] = new Record(record);
   }


  /**
   * Get the record byte array for the specified record number. This is a
   * reference to the actual file data, not a copy of the file data.
   * Records are in the order that they were added to the file.
   * Record number is in the range from 1 to the number of records in the file
   * @param recordNum the index (first record = 1) of the record.
   * @return record or null if the record is not found
   */
   public byte[] getRecord(byte recordNum) {

     // current record only has meaning in the context of file system
     // file system will translate 0 to the currentRecord number in
     // its methods
     // but you can not pass in 0 to getRecord directly
     if ( (recordNum <= 0) || ( recordNum > numRecords) )
       return null;

     return records[recordNum-1].record;
   }

  /**
   * Find the record.
   * @param firstByte  if non-0, the record's first byte must match this value; if 0, any value of the record's first byte matches.
   * @return the record number, or 0 if the record is not found
   */

   public byte findRecord(byte firstByte) {

     // empty file
     if (numRecords == 0)
       return 0;

     byte eRecNum = numRecords; // existing record number
	 byte currentRecNumber = 1;
     byte thisRec[];

     while (true) {

       thisRec = getRecord(currentRecNumber);

       if ( firstByte == 0) {
          return currentRecNumber;
       }

       if ( thisRec[0] == firstByte) {
           return currentRecNumber;
       }

      if ( currentRecNumber == eRecNum )
        return 0;
      currentRecNumber++;
    }
  }
}
