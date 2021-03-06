<?php
// *****************************************************************************
// Copyright 2003-2005 by A J Marston <http://www.tonymarston.net>
// Copyright 2006-2014 by Radicore Software Limited <http://www.radicore.org>
// *****************************************************************************
require_once 'std.table.class.inc';
class audit_trn extends Default_Table
{
    // ****************************************************************************
    function __construct ()
    {
        // save directory name of current script
        $this->dirname   = dirname(__file__);

        $this->dbname      = 'audit';
        $this->tablename   = 'audit_trn';

        // call this method to get original field specifications
        // (note that they may be modified at runtime)
        $this->fieldspec = $this->getFieldSpec_original();

        // there is absolutely NO logging of the audit database
        // (otherwise there would be an endless loop)
        $this->audit_logging = false;

    } // __construct

    // ****************************************************************************
    function _cm_getInitialData ($fieldarray)
    // Perform custom processing for the getInitialData method.
    // $fieldarray contains data from the initial $where clause.
    {
        if (empty($fieldarray['tran_seq_no'])) {
            $session_id = $fieldarray['session_id'];
            // obtain the next value for tran_seq_no
            $select = "SELECT max(tran_seq_no) FROM $this->tablename WHERE session_id='$session_id'";
            $count = $this->getCount($select);
            $fieldarray['tran_seq_no'] = $count + 1;
            // try incrementing this value if a duplicate is detected
            $this->retry_on_duplicate_key = 'tran_seq_no';
            // fill in other data
            $fieldarray['task_id'] = $GLOBALS['task_id'];
        } // if

        if (empty($fieldarray['trn_datetime'])) {
            $fieldarray['trn_datetime'] = getTimeStamp();
        } // if

        return $fieldarray;

    } // _cm_getInitialData

// ****************************************************************************
} // end class
// ****************************************************************************

?>
