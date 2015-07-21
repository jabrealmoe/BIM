package com.amtcs.businessidmanagementregistration.web.bim.exception;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * TODO Please insert class description here.
 * <p/>
 * Copyright (c) 2015 CPP Group Plc. All Rights Reserved.
 *
 * @author 17385
 */
public class MissingDataException extends Exception {

  private static final Log LOG = LogFactory.getLog( MissingDataException.class );

  public MissingDataException( String message ) {
    super( message );
    LOG.error( message );
  }

}
