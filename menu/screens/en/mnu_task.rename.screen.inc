<?php
$structure['xsl_file'] = 'std.detail1.xsl';

$structure['tables']['main'] = 'mnu_task';

$structure['main']['columns'][] = array('width' => '20%');
$structure['main']['columns'][] = array('width' => '*');

$structure['main']['fields'][] = array('task_id' => 'Old Task Id');
$structure['main']['fields'][] = array('task_name' => 'Name');
$structure['main']['fields'][] = array('new_task_id' => 'New Task Id');

?>