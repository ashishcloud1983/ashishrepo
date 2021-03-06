<?php
// *****************************************************************************
// Copyright 2003-2005 by A J Marston <http://www.tonymarston.net>
// Copyright 2006-2014 by Radicore Software Limited <http://www.radicore.org>
// *****************************************************************************

// name = std.delete2.inc

// type = delete2

// This will delete a selection of occurrences as identified in $where
// (as supplied from the previous screen).
// Note that there is no dialog with the user.

require_once 'include.general.inc';

// identify mode for xsl file
$mode = 'delete';

// load session variables
initSession();

//if (!empty($selection) AND !isset($return_from)) {
//    // $selection takes precedence over $where
//    $where     = $selection;
//    $selection = null;
//} // if

// create a class instance for the main database table
require_once "classes/$table_id.class.inc";
$dbobject = new $table_id;
// indicate that this object was started from a page controller
$dbobject->initiated_from_controller = true;
// perform any initialisation
$where = $dbobject->initialise ($where, $selection);
$errors   = array_merge($errors, $dbobject->getErrors());
$messages = array_merge($messages, $dbobject->getMessages());
if ($errors) {
    scriptPrevious($errors, $messages, 'fail');
} // if

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    // retrieve profile must have been set by previous screen
    if (empty($where)) {
         // 'Nothing has been selected yet.'
        $batch_errors = scriptPrevious(getLanguageText('sys0081'));
        return $batch_errors;
    } // if
    // convert selection from SQL 'where' format into an array using ') OR ' separator
    $fieldarray = splitWhereByRow($where);

    $dbobject->startTransaction();

    $fieldarray = $dbobject->deleteMultiple($fieldarray);
    $errors = $dbobject->getErrors();
    if (!$errors) {
        $messages = array_merge($messages, $dbobject->getMessages());
        $errors = $dbobject->commit();
    } // if
    if ($errors) {
        $dbobject->rollback();
    } // if

    //$messages = array_merge($messages, $dbobject->getMessages());

    if (empty($errors)) {
    	$action = 'delete';
    } else {
        $action = 'fail';
    } // if

    // return to previous screen
    $batch_errors = scriptPrevious($errors, $messages, $action);
    return $batch_errors;
} // if

?>
