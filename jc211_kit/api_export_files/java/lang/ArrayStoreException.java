/*
* $Workfile: ArrayStoreException.java $	$Revision: 13 $, $Date: 5/02/00 9:03p $
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
// $Workfile: ArrayStoreException.java $
// $Revision: 13 $
// $Date: 5/02/00 9:03p $
// $Author: Akuzmin $
// $Archive: /Products/Europa/api21/java/lang/ArrayStoreException.java $
// $Modtime: 5/02/00 7:13p $
// Original author:  Ravi
// */

package java.lang;

/**
 * A JCRE owned instance of <code>ArrayStoreException</code> is thrown to indicate that an attempt
 * has been made to store the wrong type of object into an array of objects.
 * For example, the following code generates an <code>ArrayStoreException</code>:<p>
 *
 * <pre>
 *        Object x[] = new AID[3];
 *        x[0] = new OwnerPIN( (byte) 3, (byte) 8);
 * </pre>
 * <p>JCRE owned instances of exception classes are temporary JCRE Entry Point Objects
 * and can be accessed from any applet context. References to these temporary objects
 * cannot be stored in class variables or instance variables or array components.
 * See <em>Java Card Runtime Environment (JCRE) Specification</em>, section 6.2.1 for details.
 * <p>This Java Card class's functionality is a strict subset of the definition in the 
 * <em>Java Platform Core API Specification</em>.<p>
 */

public class ArrayStoreException extends RuntimeException{
  /**
   * Constructs an <code>ArrayStoreException</code>.
   */
  public ArrayStoreException() {}
  
}
