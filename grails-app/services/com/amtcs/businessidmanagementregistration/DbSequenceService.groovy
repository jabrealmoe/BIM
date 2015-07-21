package com.amtcs.businessidmanagementregistration

import groovy.sql.Sql

class DbSequenceService {

  public static final String CSID_SEQ_SQL = "SELECT csid_trace_number_seq.NEXTVAL FROM DUAL"

  def dataSource

  def getNextTraceNumber( ) {
    def sql = new Sql( dataSource )
    def seqRow = sql.firstRow(CSID_SEQ_SQL)
    def trace = seqRow.NEXTVAL
    log.debug("Returning trace number $trace")
    return trace
  }
}
