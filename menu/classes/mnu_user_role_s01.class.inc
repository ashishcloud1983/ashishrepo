<?php
// *****************************************************************************
// Copyright 2003-2005 by A J Marston <http://www.tonymarston.net>
// Copyright 2006-2017 by Radicore Software Limited <http://www.radicore.org>
// *****************************************************************************
require_once 'mnu_user_role.class.inc';
class mnu_user_role_s01 extends mnu_user_role
{
    // ****************************************************************************
    // this subtype is used by mnu_user_role(upd4)moveup.php
    // it will move a row UP (earlier) in the sequence
    // ****************************************************************************

    // ****************************************************************************
    function _cm_changeConfig ($where, $fieldarray)
    // Change the table configuration for the duration of this instance.
    // $where = a string in SQL 'where' format.
    // $fieldarray = the contents of $where as an array.
    {
        // customisable code goes here

        return $fieldarray;

    } // _cm_changeConfig

    // ****************************************************************************
    function _cm_initialise ($where, &$selection, $search)
    // perform any initialisation for the current task.
    // NOTE: $selection is passed by reference as it may be amended.
    // NOTE: $search    is only available for OUTPUT tasks.
    {
        // customisable code goes here

        return $where;

    } // _cm_initialise

    // ****************************************************************************
    function _cm_post_getData ($rowdata, &$where)
    // perform custom processing after database record(s) are retrieved.
    // NOTE: $where is passed BY REFERENCE so that it may be modified.
    {
        // can only process a single row
        if (count($rowdata) > 1) {
            // 'Multiple rows selected - only the 1st accepted'
            $this->messages[] = getLanguageText('e0070');
            $array[0] = $rowdata[0];
            $rowdata  = $array;
        } // if

        // save primary key of this record
        $user_id = $rowdata[0]['user_id'];
        $role_id = $rowdata[0]['role_id'];

        // tell previous screen to keep this row selected
        $this->instruction['select']['role_id'] = $role_id;

        $this_sort_seq = $rowdata[0]['sort_seq'];

        // look for record(s) with lower sort_seq
        $where = "user_id='$user_id' AND sort_seq=(SELECT MAX(sort_seq) FROM mnu_user_role WHERE user_id='$user_id' AND sort_seq<'$this_sort_seq')";
        $this->sql_select = 'user_id, role_id, sort_seq';
        $this->sql_from   = $this->tablename;
        $prev_rows = $this->getData_raw($where);
        if (empty($prev_rows)) {
            // "This entry cannot be moved UP any further";
            $this->errors[] = getLanguageText('e0071');
            return $rowdata;
        } // if

        $prev_sort_seq = (int)$prev_rows[0]['sort_seq'];

        // update sequence number of current entry
        $rowdata[0]['sort_seq'] = $prev_sort_seq;

        // copy in previous row(s) and update sort_seq
        foreach ($prev_rows as $prev_data) {
        	$prev_data['sort_seq'] = $this_sort_seq;
        	$rowdata[] = $prev_data;
        } // foreach

        return $rowdata;

    } // _cm_post_getData

    // ****************************************************************************
    function _cm_post_updateMultiple ($rows)
    // perform custom processing after multiple database records have been updated.
    {
        // customisable code goes here

        return $rows;

    } // _cm_post_updateMultiple

    // ****************************************************************************
    function _cm_pre_getData ($where, $where_array, $parent_data=null)
    // perform custom processing before database record(s) are retrieved.
    // (WHERE is supplied in two formats - string and array)
    // $fieldarray may contain full details of the current record in the parent
    // class, not just its primary key.
    {
        // check that full primary key has been passed down from parent form
        $this->checkPrimaryKey = true;

        return $where;

    } // _cm_pre_getData

    // ****************************************************************************
    function _cm_pre_updateMultiple ($rows)
    // perform custom processing before multiple database records are updated.
    {
        // customisable code goes here

        return $rows;

    } // _cm_pre_updateMultiple

// ****************************************************************************
} // end class
// ****************************************************************************

?>
