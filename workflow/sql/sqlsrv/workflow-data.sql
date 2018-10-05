-- phpMyAdmin SQL Dump
-- version 2.7.0
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 09, 2006 at 06:39 PM
-- Server version: 4.0.25
-- PHP Version: 4.4.2
-- 
-- Database: workflow
-- 

-- 
-- Dumping data for table wf_arc
-- 

INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (1, 2, 1, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2005-10-06 18:54:22', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (1, 2, 3, 'OUT', 'SEQ', NULL, NULL, NULL, NULL, '2005-10-06 18:54:51', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (1, 3, 2, 'OUT', 'SEQ', NULL, NULL, NULL, NULL, '2004-12-11 18:47:37', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (1, 3, 3, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2004-12-11 18:47:17', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (2, 1, 1, 'IN', 'OR-SPLIT-I', NULL, NULL, NULL, NULL, '2006-02-16 14:23:02', 'AJM', '2006-02-18 15:35:09', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (2, 1, 3, 'OUT', 'SEQ', NULL, NULL, NULL, NULL, '2006-02-16 15:07:04', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (2, 2, 1, 'IN', 'OR-SPLIT-I', NULL, NULL, NULL, NULL, '2006-02-16 14:59:13', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (2, 2, 2, 'OUT', 'OR-JOIN', NULL, NULL, NULL, NULL, '2006-02-16 15:00:07', 'AJM', '2006-02-18 15:47:28', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (2, 3, 2, 'OUT', 'OR-JOIN', NULL, NULL, NULL, NULL, '2006-02-16 15:09:39', 'AJM', '2006-02-16 15:12:02', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (2, 3, 3, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-02-16 15:07:35', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 1, 1, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-19 16:59:39', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 1, 3, 'OUT', 'AND-SPLIT', NULL, NULL, NULL, NULL, '2006-03-19 17:00:47', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 1, 4, 'OUT', 'AND-SPLIT', NULL, NULL, NULL, NULL, '2006-03-19 17:01:18', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 2, 3, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-19 17:03:09', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 2, 5, 'OUT', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-19 17:19:21', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 3, 2, 'OUT', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-19 17:22:24', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 3, 5, 'IN', 'AND-JOIN', NULL, NULL, NULL, NULL, '2006-03-19 17:20:19', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 3, 6, 'IN', 'AND-JOIN', NULL, NULL, NULL, NULL, '2006-03-19 17:20:38', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 4, 4, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-19 17:04:05', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (3, 4, 6, 'OUT', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-19 17:19:44', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 1, 1, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2004-04-25 20:56:17', 'AJM', '2006-03-20 11:25:31', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 1, 3, 'IN', 'OR-SPLIT-I', NULL, NULL, NULL, NULL, '2004-04-25 21:00:26', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 1, 3, 'OUT', 'OR-SPLIT-E', 'if (strlen($fieldarray[''telephone_no'']) < 1) return TRUE;', 'strlen(telephone_no)', '<', '1', '2006-03-20 11:26:30', 'AJM', '2015-05-01 13:06:07', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 1, 4, 'OUT', 'OR-SPLIT-E', NULL, NULL, NULL, NULL, '2006-03-20 11:26:49', 'AJM', '2006-03-20 12:00:53', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 2, 2, 'OUT', 'OR-JOIN', NULL, NULL, NULL, NULL, '2006-03-20 11:27:51', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 2, 3, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-20 11:27:11', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 3, 2, 'OUT', 'OR-JOIN', NULL, NULL, NULL, NULL, '2006-03-20 11:28:07', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (4, 3, 4, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-20 11:27:29', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (5, 1, 1, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-20 14:24:03', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (5, 1, 1, 'OUT', 'OR-SPLIT-E', NULL, NULL, NULL, NULL, '2006-03-20 14:28:09', 'AJM', NULL, NULL);
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (5, 1, 3, 'OUT', 'OR-SPLIT-E', 'if ($fieldarray[''count''] > 0) return TRUE;', 'count', '>', '0', '2006-03-20 14:28:30', 'AJM', '2015-05-01 14:31:15', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (5, 2, 2, 'OUT', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-20 14:28:58', 'AJM', '2006-05-12 18:06:21', 'AJM');
INSERT INTO wf_arc (workflow_id, transition_id, place_id, direction, arc_type, pre_condition, condition_field, condition_operator, condition_value, created_date, created_user, revised_date, revised_user) VALUES (5, 2, 3, 'IN', 'SEQ', NULL, NULL, NULL, NULL, '2006-03-20 14:28:46', 'AJM', NULL, NULL);

-- 
-- Dumping data for table wf_place
-- 

INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (1, 1, '1', 'START', NULL, '2004-04-13 16:47:25', 'AJM', '2004-04-14 12:22:23', 'AJM');
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (1, 2, '9', 'END', NULL, '2004-04-13 16:47:38', 'AJM', '2004-04-14 12:22:40', 'AJM');
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (1, 3, '5', 'p1', NULL, '2004-04-12 19:06:04', 'AJM', '2004-04-13 17:11:47', 'AJM');
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (2, 1, '1', 'START', NULL, '2006-02-16 12:28:10', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (2, 2, '9', 'END', NULL, '2006-02-16 12:28:10', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (2, 3, '5', 'P1', NULL, '2006-02-16 12:29:57', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (3, 1, '1', 'START', NULL, '2004-04-23 16:28:42', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (3, 2, '9', 'END', NULL, '2004-04-23 16:28:42', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (3, 3, '5', 'P1', NULL, '2006-03-19 16:54:19', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (3, 4, '5', 'P2', NULL, '2006-03-19 16:54:24', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (3, 5, '5', 'P3', NULL, '2006-03-19 16:54:29', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (3, 6, '5', 'P4', NULL, '2006-03-19 17:11:53', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (4, 1, '1', 'START', NULL, '2004-04-20 16:23:28', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (4, 2, '9', 'END', NULL, '2004-04-20 16:23:33', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (4, 3, '5', 'P1', NULL, '2004-04-25 16:14:28', 'AJM', '2006-03-20 11:21:53', 'AJM');
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (4, 4, '5', 'P2', NULL, '2004-04-25 21:01:37', 'AJM', '2006-03-20 11:21:58', 'AJM');
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (4, 5, '5', 'p3', NULL, '2004-04-25 21:47:46', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (5, 1, '1', 'START', NULL, '2006-03-20 13:58:31', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (5, 2, '9', 'END', NULL, '2006-03-20 13:58:32', 'AJM', NULL, NULL);
INSERT INTO wf_place (workflow_id, place_id, place_type, place_name, place_desc, created_date, created_user, revised_date, revised_user) VALUES (5, 3, '5', 'P1', NULL, '2006-03-20 14:22:04', 'AJM', NULL, NULL);

-- 
-- Dumping data for table wf_transition
-- 

INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (1, 2, 'Add Person Address', NULL, 'USER', NULL, 'x_person_addr(add2)', '', '2004-04-13 17:51:02', 'AJM', '2005-10-06 18:53:16', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (1, 3, 'Update Person Address', NULL, 'USER', NULL, 'x_person_addr(upd1)', '', '2004-04-13 17:51:31', 'AJM', '2016-10-07 14:54:39', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (2, 1, 'Add Person Address', NULL, 'USER', NULL, 'x_person_addr(add2)', '', '2006-02-16 12:56:21', 'AJM', '2016-10-06 15:40:39', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (2, 2, 'Delete Person (without user dialog)', NULL, 'USER', NULL, 'x_person(del2)', '', '2006-02-16 13:04:02', 'AJM', '2016-10-06 15:46:37', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (2, 3, 'Update Person Address', NULL, 'USER', NULL, 'x_person_addr(upd1)', '', '2006-02-16 15:01:25', 'AJM', '2016-10-07 14:54:39', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (3, 1, 'T1 - Add Person Address', NULL, 'USER', NULL, 'x_person_addr(add2)', '', '2006-03-19 16:55:48', 'AJM', '2006-03-19 17:15:21', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (3, 2, 'T2 - Update Person Address (1)', NULL, 'USER', NULL, 'x_person_addr(upd1)', '', '2006-03-19 16:56:58', 'AJM', '2016-10-07 14:54:39', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (3, 3, 'T4 - Update Person Address (2)', NULL, 'USER', NULL, 'x_person_addr(upd1)', '', '2006-03-19 16:57:38', 'AJM', '2016-10-07 14:54:39', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (3, 4, 'T3 - Maintain Options', NULL, 'USER', NULL, 'x_pers_opt_xref(link1)a', '', '2006-03-19 16:58:42', 'AJM', '2016-10-07 13:31:28', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (4, 1, 'T1 - Add Person Address', NULL, 'USER', NULL, 'x_person_addr(add2)', '', '2004-04-20 16:25:12', 'AJM', '2006-03-20 11:22:43', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (4, 2, 'T2 - Update Person Address', NULL, 'USER', NULL, 'x_person_addr(upd1)', '', '2004-04-25 21:02:58', 'AJM', '2016-10-07 14:54:39', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (4, 3, 'T3 - Maintain Options', NULL, 'USER', NULL, 'x_pers_opt_xref(link1)a', '', '2006-03-20 11:24:51', 'AJM', '2016-10-07 13:31:28', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (5, 1, 'T1 - Maintain Options', NULL, 'USER', NULL, 'x_pers_opt_xref(link1)a', '', '2006-03-20 14:22:56', 'AJM', '2016-10-07 13:31:28', 'AJM');
INSERT INTO wf_transition (workflow_id, transition_id, transition_name, transition_desc, transition_trigger, time_limit, task_id, role_id, created_date, created_user, revised_date, revised_user) VALUES (5, 2, 'T2 - Add Person Address', NULL, 'USER', NULL, 'x_person_addr(add2)', '', '2006-03-20 14:23:37', 'AJM', NULL, NULL);

-- 
-- Dumping data for table wf_workflow
-- 

INSERT INTO wf_workflow (workflow_id, workflow_name, workflow_desc, start_task_id, is_valid, workflow_errors, start_date, end_date, created_date, created_user, revised_date, revised_user) VALUES (1, 'This is a test of a simple sequence.', 'Add Person -> Add Address -> Update Address.\n\nThis is just a plain sequence.', 'x_person(add1)', 'Y', NULL, '2004-04-10', '9999-12-31', '2004-04-04 00:10:10', 'AJM', '2016-10-07 17:39:07', 'AJM');
INSERT INTO wf_workflow (workflow_id, workflow_name, workflow_desc, start_task_id, is_valid, workflow_errors, start_date, end_date, created_date, created_user, revised_date, revised_user) VALUES (2, 'This has a timed split', 'Add Person -> Add Address. Will delete Person if Address is not added within a time limit.\n\nThis uses an Implicit OR Split and an OR Join.', 'x_person(add1)', 'Y', NULL, '2006-02-16', '2016-10-01', '2006-02-16 12:28:10', 'AJM', '2016-10-07 17:38:53', 'AJM');
INSERT INTO wf_workflow (workflow_id, workflow_name, workflow_desc, start_task_id, is_valid, workflow_errors, start_date, end_date, created_date, created_user, revised_date, revised_user) VALUES (3, 'This has parallel routing.', 'This is a test of parallel routing.', 'x_person(add1)', 'Y', NULL, '2006-03-18', '2006-03-18', '2004-04-23 16:28:42', 'AJM', '2016-10-06 14:13:27', 'AJM');
INSERT INTO wf_workflow (workflow_id, workflow_name, workflow_desc, start_task_id, is_valid, workflow_errors, start_date, end_date, created_date, created_user, revised_date, revised_user) VALUES (4, 'Conditional routing with a Guard', 'This test uses conditional routing with a Guard (pre-condition).', 'x_person(add1)', 'Y', NULL, '2006-03-19', '2006-03-19', '2004-04-20 16:23:27', 'AJM', '2016-10-06 14:13:27', 'AJM');
INSERT INTO wf_workflow (workflow_id, workflow_name, workflow_desc, start_task_id, is_valid, workflow_errors, start_date, end_date, created_date, created_user, revised_date, revised_user) VALUES (5, 'Iterative routing', 'This is an example of iterative routing.', 'x_person(add1)', 'Y', NULL, '2006-03-20', '2006-03-20', '2006-03-20 13:58:31', 'AJM', '2016-10-06 14:13:27', 'AJM');