<?php
$structure['xsl_file'] = 'std.list2.xsl';

$structure['tables']['outer'] = 'mnu_task_snr';

$structure['outer']['columns'][] = array('width' => '20%');
$structure['outer']['columns'][] = array('width' => '*');

$structure['outer']['fields'][] = array('task_id' => 'Menu Id');
$structure['outer']['fields'][] = array('task_name' => 'Menu Name');

$structure['tables']['inner'] = 'mnu_menu';

$structure['inner']['columns'][] = array('width' => 5);
$structure['inner']['columns'][] = array('width' => '*');
$structure['inner']['columns'][] = array('width' => '*');
$structure['inner']['columns'][] = array('width' => 60);
$structure['inner']['columns'][] = array('width' => 150);

$structure['inner']['fields'][] = array('selectbox' => 'Select');
$structure['inner']['fields'][] = array('task_id_jnr' => 'Task Id');
$structure['inner']['fields'][] = array('task_name_jnr' => 'Task Name');
$structure['inner']['fields'][] = array('sort_seq' => 'Seq');
$structure['inner']['fields'][] = array('button_text' => 'Button Text', 'size' => 20);

?>