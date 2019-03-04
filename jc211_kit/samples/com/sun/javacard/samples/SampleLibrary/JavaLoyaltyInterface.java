/*
* $Workfile: JavaLoyaltyInterface.java $	$Revision: 5 $,	$Date: 5/02/00 9:05p $
*
* Copyright (c) 1999 Sun Microsystems, Inc. All Rights Reserved.
*
* This software is the confidential and proprietary information of Sun
* Microsystems, Inc. ("Confidential Information"). You shall not
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
// $Workfile: JavaLoyaltyInterface.java $
// $Revision: 5 $
// $Date: 5/02/00 9:05p $
// $Author: Akuzmin $
// $Archive: /Products/Europa/samples/com/sun/javacard/samples/SampleLibrary/JavaLoyaltyInterface.java $
// $Modtime: 5/02/00 7:18p $
// Original author: Vadim Temkin
// */

package	com.sun.javacard.samples.SampleLibrary;

import javacard.framework.*;

/**
* Shareable Loyalty Interface
*
* @author Vadim Temkin
*/
public interface JavaLoyaltyInterface extends Shareable
{
	/**
	* Used to ask JavaLoyalty Card applet to grant points. <p>
	* Only primitive values, global arrays and Shareable Interface Objects should
	* be passed as parameters and results across a context switch. The byte array
	* buffer is APDU buffer in classes implementing this interface.
	* See <em>Java Card Runtime Environment (JCRE) 2.1 Specification</em> for details.
	* <p> The format of data in the buffer is subset of Transaction Log record format:
	* 2 bytes of 0, 1 byte of transaction type, 2 bytes amount of transaction,
	* 4 bytes of CAD ID, 3 bytes of date, and 2 bytes of time.
	* @param buffer Apdu buffer containing transaction data.
	*/
	void grantPoints (byte[] buffer);
}

