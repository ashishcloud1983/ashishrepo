<?php
// *****************************************************************************
// Copyright 2003-2005 by A J Marston <http://www.tonymarston.net>
// Copyright 2006-2016 by Radicore Software Limited <http://www.radicore.org>
// *****************************************************************************
require_once 'wf_workflow.class.inc';
class wf_workflow_s01 extends wf_workflow
{
    // ****************************************************************************
    // this subclass validates a workflow process
    // ****************************************************************************

    // ****************************************************************************
    function _cm_validateUpdate ($fieldarray, $originaldata)
    // perform custom validation before update.
    {
        $workflow_id = $fieldarray['workflow_id'];
        $fieldarray['workflow_errors'] = null;

        // ********************************************************************
        $dbplace = RDCsingleton::getInstance('wf_place');

        // check that workflow contains a single START place
        $place_data = $dbplace->getData_raw("workflow_id='$workflow_id' AND place_type='1'");
        if ($dbplace->numrows < 1) {
            // "There is no START place."
            $errors[] = getLanguageText('e0017');
        } // if
        if ($dbplace->numrows > 1) {
            // "There is more than one START place."
            $errors[] = getLanguageText('e0018');
        } // if

        $start_place = $place_data[0]['place_id'];

        // ********************************************************************
        // check that workflow contains a single END place
        $place_data = $dbplace->getData_raw("workflow_id='$workflow_id' AND place_type='9'");
        if ($dbplace->numrows < 1) {
            // "There is no END place."
            $errors[] = getLanguageText('e0019');
        } // if
        if ($dbplace->numrows > 1) {
            // "There is more than one END place."
            $errors[] = getLanguageText('e0020');
        } // if

        $end_place = $place_data[0]['place_id'];

        // ********************************************************************
        // check that workflow contains at least one USER place
        $place_data = $dbplace->getData_raw("workflow_id='$workflow_id' AND place_type='5'");
        if ($dbplace->numrows < 1) {
            // "There are no intermediate places."
            $errors[] = getLanguageText('e0021');
        } // if

        // ********************************************************************
        $dbarc = RDCsingleton::getInstance('wf_arc');

        // check that workflow contains at least one arc
        $count = $dbarc->getCount("workflow_id='$workflow_id'");
        if ($count < 1) {
            // "There are no ARCS."
            $errors[] = getLanguageText('e0023');
        } // if

        // check that there is at least one arc coming out of the START place
        $count = $dbarc->getCount("workflow_id='$workflow_id' and place_id='$start_place' and direction='IN'");
        if ($count < 1) {
            // "There are no ARCS coming out of the START place."
            $errors[] = getLanguageText('e0024');
        } // if

        // check that there are no arcs going into the START place - WRONG!
        // Explicit OR Split is allowed to go to START place
//        $count = $dbarc->getCount("workflow_id='$workflow_id' and place_id='$start_place' and direction='OUT'");
//        if ($count > 0) {
//            // "There is an ARC going into the START place."
//            $errors[] = getLanguageText('e0027');
//        } // if

        // ********************************************************************
        // check that there is at least one arc going into the END place
        $count = $dbarc->getCount("workflow_id='$workflow_id' and place_id='$end_place' and direction='OUT'");
        if ($count < 1) {
            // "There are no ARCS going into the END place."
            $errors[] = getLanguageText('e0025');
        } // if

        // check that there are no arcs coming out of the END place
        $count = $dbarc->getCount("workflow_id='$workflow_id' and place_id='$end_place' and direction='IN'");
        if ($count > 0) {
            // "There is an ARC coming out of the END place."
            $errors[] = getLanguageText('e0026');
        } // if

        // ********************************************************************
        // check that there are as many SPLITS as there are JOINS - WRONG!
        // it is possible to have an Explicit OR Split without an OR Join
//        $split_count = $dbarc->getCount("workflow_id='$workflow_id' AND arc_type IN ('OR-SPLIT-E', 'OR-SPLIT-I')");
//        $join_count  = $dbarc->getCount("workflow_id='$workflow_id' AND arc_type='OR-JOIN'");
//        if ($split_count != $join_count) {
//            // The count of OR-JOINS does not match the count of OR-SPLITS
//        	$errors[] = getLanguageText('e0066');
//        } // if

        // check that there are as many AND-SPLITS as there are AND-JOINS
        $split_count = $dbarc->getCount("workflow_id='$workflow_id' AND arc_type='AND-SPLIT'");
        $join_count  = $dbarc->getCount("workflow_id='$workflow_id' AND arc_type='AND-JOIN'");
        if ($split_count != $join_count) {
            // The count of AND-JOINS does not match the count of AND-SPLITS
        	$errors[] = getLanguageText('e0068');
        } // if

        // ********************************************************************
        // read all places - start, user, end
        $place_data = $dbplace->getData_raw("workflow_id='$workflow_id'");

        // check that each place has right number of INPUT and OUTPUT arcs
        foreach ($place_data as $place) {
            $place_id      = $place['place_id'];
            $place_name    = $place['place_name'];
            $place_type    = $place['place_type'];
            $dbarc->sql_select  = "wf_place.workflow_id, wf_place.place_id, wf_arc.direction, wf_arc.arc_type";
            $dbarc->sql_select .= ", (SELECT count(arc_type) FROM wf_arc AS x WHERE workflow_id='$workflow_id' AND place_id='$place_id' AND x.direction=wf_arc.direction AND x.arc_type=wf_arc.arc_type) AS arc_count";
            $dbarc->sql_from    = "wf_place "
                                . "LEFT JOIN wf_arc ON (wf_arc.workflow_id=wf_place.workflow_id AND wf_arc.place_id=wf_place.place_id) ";
            $dbarc->sql_groupby = '';
            $dbarc->sql_orderby = 'workflow_id, transition_id, place_id, direction';
            $arc_data = $dbarc->getData("workflow_id='$workflow_id' AND place_id='$place_id'");
            $inward_count  = 0;
            $outward_count = 0;
            foreach ($arc_data as $arc) {
                if ($arc['direction'] == 'IN') $inward_count++;
                if ($arc['direction'] == 'OUT') $outward_count++;
                switch ($arc['arc_type']) {
                    case 'SEQ':
                        //if ($arc['arc_count'] > 1) {
                        //    // "Too many arcs of type 'Sequential' at place '$place_name'"
                        //    $errors[] = getLanguageText('e0028', $place_name);
                        //} // if
                        break;
                    case 'OR-SPLIT-E':
                        if ($arc['direction'] != 'OUT') {
                            // "Arc of type 'OR-split (Explicit)' must have OUT direction at place '$place_name'"
                            $errors[] = getLanguageText('e0029', $place_name);
                        } // if
                        break;
                    case 'OR-SPLIT-I':
                        if ($arc['direction'] != 'IN') {
                            // "Arc of type 'OR-split (Implicit)' must have IN direction at place '$place_name'"
                            $errors[] = getLanguageText('e0030', $place_name);
                        } // if
                        if ($arc['arc_count'] < 2) {
                            // "Not enough arcs of type 'OR-split (Implicit)' at place '$place_name'"
                            $errors[] = getLanguageText('e0031', $place_name);
                        } // if
                        //if ($arc['arc_count'] > 2) {
                        //    // "Too many arcs of type 'OR-split (Implicit)' at place '$place_name'"
                        //    $errors[] = getLanguageText('e0065', $place_name);
                        //} // if
                        break;
                    case 'OR-JOIN':
                        if ($arc['direction'] != 'OUT') {
                            // "Arc of type 'OR-join' must have OUT direction at place '$place_name'"
                            $errors[] = getLanguageText('e0032', $place_name);
                        } // if
                        if ($arc['arc_count'] < 2) {
                            // "Not enough arcs of type 'OR-join' at place '$place_name'"
                            $errors[] = getLanguageText('e0033', $place_name);
                        } // if
                        //if ($arc['arc_count'] > 2) {
                        //    // "Too many arcs of type 'OR-join' at place '$place_name'"
                        //    $errors[] = getLanguageText('e0067', $place_name);
                        //} // if
                        break;
                    case 'AND-SPLIT':
                        if ($arc['direction'] != 'OUT') {
                            // "Arc of type 'AND-split' must have OUT direction at place '$place_name'"
                            $errors[] = getLanguageText('e0034', $place_name);
                        } // if
                        break;
                    case 'AND-JOIN':
                        if ($arc['direction'] != 'IN') {
                            // "Arc of type 'AND-join' must have IN direction at place '$place_name'"
                            $errors[] = getLanguageText('e0035', $place_name);
                        } // if
                        break;
                    default:
                        // "Unknown ARC_TYPE (" . $arc['arc_type'] . ") at place '$place_name'"
                        $errors[] = getLanguageText('e0036', $arc['arc_type'], $place_name);
                } // switch
            } // foreach

            if ($place_type != 9) {
                if ($inward_count < 1) {
                    // "There are no INWARD ARCS for place '$place_name'"
                    $errors[] = getLanguageText('e0037', $place_name);
                } // if
            } // if
            if ($place_type != 1) {
            	if ($outward_count < 1) {
                    // "There are no OUTWARD ARCS for place '$place_name'"
                    $errors[] = getLanguageText('e0038', $place_name);
                } // if
            } // if

        } // foreach

        // ********************************************************************
        $dbtransition = RDCsingleton::getInstance('wf_transition');

        // check that workflow contains at least one transition
        $transition_data = $dbtransition->getData_raw("workflow_id='$workflow_id'");
        if ($dbtransition->numrows < 1) {
            // "There are no TRANSITIONS."
            $errors[] = getLanguageText('e0022');
        } // if

        // check that each transition has an INPUT arc and an OUTPUT arc
        foreach ($transition_data as $transition) {
            $transition_id   = $transition['transition_id'];
            $transition_name = $transition['transition_name'];
            $inward_count_by_type  = array();
            $outward_count_by_type = array();
            $dbarc->sql_select  = "wf_transition.workflow_id, wf_transition.transition_id, wf_arc.direction, wf_arc.arc_type";
            $dbarc->sql_select .= ", (SELECT count(condition_field) FROM wf_arc AS x WHERE workflow_id='$workflow_id' AND transition_id='$transition_id' AND x.direction=wf_arc.direction AND x.arc_type=wf_arc.arc_type) AS guard_count";
            $dbarc->sql_select .= ", (SELECT count(arc_type) FROM wf_arc AS x WHERE workflow_id='$workflow_id' AND transition_id='$transition_id' AND x.direction=wf_arc.direction AND x.arc_type=wf_arc.arc_type) AS arc_count";
            $dbarc->sql_from    = "wf_transition "
                                . "LEFT JOIN wf_arc ON (wf_arc.workflow_id=wf_transition.workflow_id AND wf_arc.transition_id=wf_transition.transition_id) ";
            $dbarc->sql_groupby = '';
            $dbarc->sql_orderby = 'workflow_id, transition_id, place_id, direction';
            $arc_data = $dbarc->getData("workflow_id='$workflow_id' AND transition_id='$transition_id'");
            $inward_count    = 0;
            $outward_count   = 0;
            foreach ($arc_data as $arc) {
                if ($arc['direction'] == 'IN') {
                    $inward_count++;
                    $inward_count_by_type[$arc['arc_type']] = $arc['arc_count'];
                } // if
                if ($arc['direction'] == 'OUT') {
                    $outward_count++;
                    $outward_count_by_type[$arc['arc_type']] = $arc['arc_count'];
                } // if
                switch ($arc['arc_type']) {
                    case 'SEQ':
                        break;
                    case 'OR-SPLIT-E':
                        if ($arc['direction'] != 'OUT') {
                            // "Arc of type 'OR-split (Explicit)' must have OUT direction at transition '$transition_name'"
                            $errors[] = getLanguageText('e0039', $transition_name);
                        } // if
                        if ($arc['arc_count'] < 2) {
                            // "Less than 2 arcs of type 'OR-split (Explicit)' at transition '$transition_name'"
                            $errors[] = getLanguageText('e0040', $transition_name);
                        } // if
                        //if ($arc['arc_count'] > 2) {
                        //    // "More than 2 arcs of type 'OR-split (Explicit)' at transition '$transition_name'"
                        //    $errors[] = getLanguageText('e0041', $transition_name);
                        //} // if
                        if ($arc['guard_count'] < 1) {
                            // "Less than 1 pre-condition specified for arcs of type 'OR-split (Explicit)' at transition '$transition_name'"
                            $errors[] = getLanguageText('e0042', $transition_name);
                        } // if
                        //if ($arc['guard_count'] > 1) {
                        //    // "More than 1 pre-condition specified for arcs of type 'OR-split (Explicit)' at transition '$transition_name'"
                        //    $errors[] = getLanguageText('e0043', $transition_name);
                        //} // if
                        if ($arc['guard_count'] != ($arc['arc_count']-1)) {
                        	// "Must be 1 empty pre-condition for arcs of type 'OR-split (Explicit)' at transition '$transition_name'"
                        	$errors[] = getLanguageText('e0070', $transition_name);
                        } // if
                        break;
                    case 'OR-SPLIT-I':
                        if ($arc['direction'] != 'IN') {
                            // "Arc of type 'OR-split (Implicit)' must have IN direction at transition '$transition_name'"
                            $errors[] = getLanguageText('e0044', $transition_name);
                        } // if
                        if ($arc['arc_count'] > 1) {
                            // "More than 1 arc of type 'OR-split (Implicit)' at transition '$transition_name'"
                            $errors[] = getLanguageText('e0045', $transition_name);
                        } // if
                        break;
                    case 'OR-JOIN':
                        if ($arc['direction'] != 'OUT') {
                            // "Arc of type 'OR-join' must have OUT direction at transition '$transition_name'"
                            $errors[] = getLanguageText('e0046', $transition_name);
                        } // if
                        if ($arc['arc_count'] > 1) {
                            // "More than 1 arc of type 'OR-join' at transition '$transition_name'"
                            $errors[] = getLanguageText('e0047', $transition_name);
                        } // if
                        break;
                    case 'AND-SPLIT':
                        if ($arc['direction'] != 'OUT') {
                            // "Arc of type 'AND-split' must have OUT direction at transition '$transition_name'"
                            $errors[] = getLanguageText('e0048', $transition_name);
                        } // if
                        if ($arc['arc_count'] < 2) {
                            // "Not enough arcs of type 'AND-split' at transition '$transition_name'"
                            $errors[] = getLanguageText('e0049', $transition_name);
                        } // if
                        break;
                    case 'AND-JOIN':
                        if ($arc['direction'] != 'IN') {
                            // "Arc of type 'AND-join' must have IN direction at transition '$transition_name'"
                            $errors[] = getLanguageText('e0050', $transition_name);
                        } // if
                        if ($arc['arc_count'] < 2) {
                            // "Not enough arcs of type 'AND-join' at transition '$transition_name'"
                            $errors[] = getLanguageText('e0051', $transition_name);
                        } // if
                        break;
                    default:
                        // "Unknown ARC_TYPE (" . $arc['arc_type'] . ") at transition '$transition_name'"
                        $errors[] = getLanguageText('e0052', $arc['arc_type'], $transition_name);
                } // switch
            } // foreach

            if ($inward_count < 1) {
                // "There are no INWARD ARCS for transition '$transition_name'"
                $errors[] = getLanguageText('e0053', $transition_name);
            } // if
            if (count($inward_count_by_type) > 1) {
                // "There is more than 1 type of INWARD ARC for transition '$transition_name'"
                $errors[] = getLanguageText('e0054', $transition_name);
            } // if
            if ($outward_count < 1) {
                // "There are no OUTWARD ARCS for transition '$transition_name'"
                $errors[] = getLanguageText('e0055', $transition_name);
            } // if
            if (count($outward_count_by_type) > 1) {
                // "There is more than 1 type of OUTWARD ARC for transition '$transition_name'"
                $errors[] = getLanguageText('e0056', $transition_name);
            } // if
        } // foreach

        // ********************************************************************
        if (!empty($errors)) {
            // transfer error messages into database field
            $fieldarray['is_valid'] = 'N';
            foreach ($errors as $error) {
                $fieldarray['workflow_errors'] .= "$error\n";
            } // foreach
            // "Workflow $workflow_id contains errors."
            $this->messages[] = getLanguageText('e0057', $workflow_id);
        } else {
            $fieldarray['is_valid'] = 'Y';
            // "Workflow $workflow_id is valid."
            $this->messages[] = getLanguageText('e0081', $workflow_id);
        } // if

        return $fieldarray;

    } // _cm_validateUpdate

// ****************************************************************************
} // end class
// ****************************************************************************

?>
