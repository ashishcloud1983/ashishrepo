<?php
    // file created on May 5, 2017, 9:07 am
    
    // field specifications for table menu.mnu_role_taskfield
    $fieldspec['role_id']                   = array('type' => 'string',
                                                    'size' => 16,
                                                    'pkey' => 'y',
                                                    'required' => 'y',
                                                    'uppercase' => 'y');
    
    $fieldspec['task_id']                   = array('type' => 'string',
                                                    'size' => 80,
                                                    'pkey' => 'y',
                                                    'required' => 'y',
                                                    'lowercase' => 'y');
    
    $fieldspec['field_id']                  = array('type' => 'string',
                                                    'size' => 40,
                                                    'pkey' => 'y',
                                                    'required' => 'y',
                                                    'uppercase' => 'y');
    
    $fieldspec['access_type']               = array('type' => 'string',
                                                    'size' => 4,
                                                    'required' => 'y',
                                                    'uppercase' => 'y',
                                                    'control' => 'dropdown',
                                                    'optionlist' => 'access_type');
    
    $fieldspec['created_date']              = array('type' => 'datetime',
                                                    'size' => 20,
                                                    'required' => 'y',
                                                    'default' => '2000-01-01 00:00:00',
                                                    'autoinsert' => 'y',
                                                    'noedit' => 'y',
                                                    'nosearch' => 'y');
    
    $fieldspec['created_user']              = array('type' => 'string',
                                                    'size' => 16,
                                                    'required' => 'y',
                                                    'default' => 'UNKNOWN',
                                                    'autoinsert' => 'y',
                                                    'noedit' => 'y',
                                                    'nosearch' => 'y');
    
    $fieldspec['revised_date']              = array('type' => 'datetime',
                                                    'size' => 20,
                                                    'autoupdate' => 'y',
                                                    'noedit' => 'y',
                                                    'nosearch' => 'y');
    
    $fieldspec['revised_user']              = array('type' => 'string',
                                                    'size' => 16,
                                                    'autoupdate' => 'y',
                                                    'noedit' => 'y',
                                                    'nosearch' => 'y');
    
    // primary key details 
    $this->primary_key                      = array('role_id',
                                                    'task_id',
                                                    'field_id');
    
    // unique key details 
    $this->unique_keys                      = array();
    
    // child relationship details 
    $this->child_relations                  = array();
    
    // parent relationship details 
    $this->parent_relations[]               = array('parent' => 'mnu_role',
                                                    'parent_field' => 'role_name',
                                                    'fields' => array('role_id' => 'role_id'));
    
    $this->parent_relations[]               = array('parent' => 'mnu_role_task',
                                                    'fields' => array('role_id' => 'role_id',
                                                                      'task_id' => 'task_id'));
    
    $this->parent_relations[]               = array('parent' => 'mnu_task',
                                                    'parent_field' => 'task_name',
                                                    'alt_language_table' => 'mnu_task_alt',
                                                    'alt_language_cols' => 'task_name, task_desc, button_text',
                                                    'fields' => array('task_id' => 'task_id'));
    
    $this->parent_relations[]               = array('parent' => 'mnu_task_field',
                                                    'parent_field' => 'field_desc',
                                                    'fields' => array('task_id' => 'task_id',
                                                                      'field_id' => 'field_id'));
    
    // determines if database updates are recorded in an audit log 
    $this->audit_logging                    = TRUE;
    
    // default sort sequence 
    $this->default_orderby                  = '';
    
    // alternative language options 
    $this->alt_language_table               = '';
    $this->alt_language_cols                = '';
    
    // alias names 
    $this->nameof_start_date                = '';
    $this->nameof_end_date                  = '';
    
    // finished
?>