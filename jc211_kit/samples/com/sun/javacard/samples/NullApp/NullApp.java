/*
* $Workfile: NullApp.java $	$Revision: 11 $, $Date: 5/02/00 9:05p $
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
// $Workfile: NullApp.java $
// $Revision: 11 $
// $Date: 5/02/00 9:05p $
// $Author: Akuzmin $
// $Archive: /Products/Europa/samples/com/sun/javacard/samples/NullApp/NullApp.java $
// $Modtime: 5/02/00 7:18p $
// Original author:  Mitch Butler
// */

package com.sun.javacard.samples.NullApp;

import javacard.framework.*;

/**
 */

public class NullApp extends Applet
{
    /**
     * Only this class's install method should create the applet object.
     * @see APDU
     * @param apdu the incoming APDU containing the INSTALL command.
     */
    protected NullApp(APDU apdu)
    {
        register();
    }

    /**
     * Installs this applet.
     * @see APDU
     * @param apdu the incoming APDU containing the INSTALL command.
     * @exception ISOException with the response bytes per ISO 7816-4
     */
    public static void install( byte[] bArray, short bOffset, byte bLength )
    {
        new NullApp(null);
    }

    /**
     * Returns <0x6D,INS> response status always.
     * @see APDU
     * @param apdu the incoming APDU containing the INSTALL command.
     * @exception ISOException with the response bytes per ISO 7816-4
     */
    public void process(APDU apdu) throws ISOException
    {
        byte buffer[] = apdu.getBuffer();
        ISOException.throwIt(Util.makeShort((byte)(ISO7816.SW_INS_NOT_SUPPORTED>>8), buffer[1]));
    }

}
