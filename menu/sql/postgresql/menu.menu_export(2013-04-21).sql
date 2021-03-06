SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path TO "menu";

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Time Limits' ,'2013-04-21 16:42:19' ,'AJM' ,'N' ,'N' ,'N' ,'LIST2' ,'mnu_time_limit_role(list2).php' ,'MENU' ,'List Time Limits for Role' ,'mnu_time_limit_role(list2)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('New' ,'2013-04-21 16:42:19' ,'AJM' ,'N' ,'N' ,'N' ,'ADD2' ,'mnu_time_limit_role(add2).php' ,'MENU' ,'Add Time Limit for Role' ,'mnu_time_limit_role(add2)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Read' ,'2013-04-21 16:42:20' ,'AJM' ,'N' ,'N' ,'N' ,'ENQ1' ,'mnu_time_limit_role(enq1).php' ,'MENU' ,'Enquire Time Limit for Role' ,'mnu_time_limit_role(enq1)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Update' ,'2013-04-21 16:42:21' ,'AJM' ,'N' ,'N' ,'N' ,'UPD1' ,'mnu_time_limit_role(upd1).php' ,'MENU' ,'Update Time Limit for Role' ,'mnu_time_limit_role(upd1)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Delete' ,'2013-04-21 16:42:21' ,'AJM' ,'N' ,'N' ,'N' ,'DEL1' ,'mnu_time_limit_role(del1).php' ,'MENU' ,'Delete Time Limit for Role' ,'mnu_time_limit_role(del1)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Search' ,'2013-04-21 16:42:22' ,'AJM' ,'N' ,'N' ,'N' ,'SRCH' ,'mnu_time_limit_role(search).php' ,'MENU' ,'Search Time Limit for Role' ,'mnu_time_limit_role(search)' ,'PROC' ,'N');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('New' ,'N' ,'2013-04-21 16:42:22' ,'AJM' ,'001' ,'mnu_time_limit_role(add2)' ,'mnu_time_limit_role(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Read' ,'Y' ,'2013-04-21 16:42:22' ,'AJM' ,'002' ,'mnu_time_limit_role(enq1)' ,'mnu_time_limit_role(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Update' ,'Y' ,'2013-04-21 16:42:22' ,'AJM' ,'003' ,'mnu_time_limit_role(upd1)' ,'mnu_time_limit_role(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Delete' ,'Y' ,'2013-04-21 16:42:22' ,'AJM' ,'004' ,'mnu_time_limit_role(del1)' ,'mnu_time_limit_role(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Search' ,'N' ,'2013-04-21 16:42:22' ,'AJM' ,'005' ,'mnu_time_limit_role(search)' ,'mnu_time_limit_role(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Audit Trail' ,'Y' ,'2013-04-21 16:42:23' ,'AJM' ,'006' ,'audit_dtl(list)3' ,'mnu_time_limit_role(list2)');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Time Limits' ,'2013-04-21 16:45:43' ,'AJM' ,'N' ,'N' ,'N' ,'LIST2' ,'mnu_time_limit_user(list2).php' ,'MENU' ,'List Time Limits for User' ,'mnu_time_limit_user(list2)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('New' ,'2013-04-21 16:45:43' ,'AJM' ,'N' ,'N' ,'N' ,'ADD2' ,'mnu_time_limit_user(add2).php' ,'MENU' ,'Add Time Limit for User' ,'mnu_time_limit_user(add2)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Read' ,'2013-04-21 16:45:44' ,'AJM' ,'N' ,'N' ,'N' ,'ENQ1' ,'mnu_time_limit_user(enq1).php' ,'MENU' ,'Enquire Time Limit for User' ,'mnu_time_limit_user(enq1)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Update' ,'2013-04-21 16:45:44' ,'AJM' ,'N' ,'N' ,'N' ,'UPD1' ,'mnu_time_limit_user(upd1).php' ,'MENU' ,'Update Time Limit for User' ,'mnu_time_limit_user(upd1)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Delete' ,'2013-04-21 16:45:45' ,'AJM' ,'N' ,'N' ,'N' ,'DEL1' ,'mnu_time_limit_user(del1).php' ,'MENU' ,'Delete Time Limit for User' ,'mnu_time_limit_user(del1)' ,'PROC' ,'N');

INSERT INTO mnu_task (button_text ,created_date ,created_user ,is_disabled ,keep_data ,log_sql_query ,pattern_id ,script_id ,subsys_id ,task_desc ,task_id ,task_type ,use_https) VALUES
('Search' ,'2013-04-21 16:45:45' ,'AJM' ,'N' ,'N' ,'N' ,'SRCH' ,'mnu_time_limit_user(search).php' ,'MENU' ,'Search Time Limit for User' ,'mnu_time_limit_user(search)' ,'PROC' ,'N');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('New' ,'N' ,'2013-04-21 16:45:46' ,'AJM' ,'001' ,'mnu_time_limit_user(add2)' ,'mnu_time_limit_user(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Read' ,'Y' ,'2013-04-21 16:45:46' ,'AJM' ,'002' ,'mnu_time_limit_user(enq1)' ,'mnu_time_limit_user(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Update' ,'Y' ,'2013-04-21 16:45:46' ,'AJM' ,'003' ,'mnu_time_limit_user(upd1)' ,'mnu_time_limit_user(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Delete' ,'Y' ,'2013-04-21 16:45:46' ,'AJM' ,'004' ,'mnu_time_limit_user(del1)' ,'mnu_time_limit_user(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Search' ,'N' ,'2013-04-21 16:45:46' ,'AJM' ,'005' ,'mnu_time_limit_user(search)' ,'mnu_time_limit_user(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Audit Trail' ,'Y' ,'2013-04-21 16:45:46' ,'AJM' ,'006' ,'audit_dtl(list)3' ,'mnu_time_limit_user(list2)');

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Time Limits' ,'Y' ,'2013-04-21 16:51:48' ,'AJM' ,'012' ,'mnu_time_limit_role(list2)' ,'mnu_role(list1)');

UPDATE mnu_nav_button SET revised_date='2013-04-21 16:52:27' ,revised_user='AJM' ,sort_seq='012' WHERE task_id_snr='mnu_role(list1)' AND task_id_jnr='audit_dtl(list)3';

UPDATE mnu_nav_button SET revised_date='2013-04-21 16:52:28' ,revised_user='AJM' ,sort_seq='010' WHERE task_id_snr='mnu_role(list1)' AND task_id_jnr='mnu_role(pdf)';

UPDATE mnu_nav_button SET revised_date='2013-04-21 16:52:28' ,revised_user='AJM' ,sort_seq='011' WHERE task_id_snr='mnu_role(list1)' AND task_id_jnr='mnu_time_limit_role(list2)';

UPDATE mnu_nav_button SET button_text='Time Limits' ,revised_date='2013-04-21 16:53:11' ,revised_user='AJM' WHERE task_id_snr='mnu_role(list1)' AND task_id_jnr='mnu_time_limit_role(list2)';

UPDATE mnu_task SET revised_date='2013-04-21 16:54:12' ,revised_user='AJM' ,task_desc='Add Time Limit for Role' WHERE task_id='mnu_time_limit_role(add2)';

UPDATE mnu_task SET revised_date='2013-04-21 16:54:27' ,revised_user='AJM' ,task_desc='Delete Time Limit for Role' WHERE task_id='mnu_time_limit_role(del1)';

UPDATE mnu_task SET revised_date='2013-04-21 16:54:41' ,revised_user='AJM' ,task_desc='Enquire Time Limit for Role' WHERE task_id='mnu_time_limit_role(enq1)';

UPDATE mnu_task SET revised_date='2013-04-21 16:55:01' ,revised_user='AJM' ,task_desc='List Time Limit for Role' WHERE task_id='mnu_time_limit_role(list2)';

UPDATE mnu_task SET revised_date='2013-04-21 16:55:16' ,revised_user='AJM' ,task_desc='Search Time Limit for Role' WHERE task_id='mnu_time_limit_role(search)';

UPDATE mnu_task SET revised_date='2013-04-21 16:55:32' ,revised_user='AJM' ,task_desc='Update Time Limit for Role' WHERE task_id='mnu_time_limit_role(upd1)';

UPDATE mnu_task SET revised_date='2013-04-21 16:57:39' ,revised_user='AJM' ,task_desc='Add Time Limit for User' WHERE task_id='mnu_time_limit_user(add2)';

UPDATE mnu_task SET revised_date='2013-04-21 16:57:55' ,revised_user='AJM' ,task_desc='Delete Time Limit for User' WHERE task_id='mnu_time_limit_user(del1)';

UPDATE mnu_task SET revised_date='2013-04-21 16:58:08' ,revised_user='AJM' ,task_desc='Enquire Time Limit for User' WHERE task_id='mnu_time_limit_user(enq1)';

UPDATE mnu_task SET button_text='Time Limits' ,revised_date='2013-04-21 16:58:47' ,revised_user='AJM' ,task_desc='List Time Limit for User' WHERE task_id='mnu_time_limit_user(list2)';

UPDATE mnu_task SET revised_date='2013-04-21 16:59:03' ,revised_user='AJM' ,task_desc='Search Time Limit for User' WHERE task_id='mnu_time_limit_user(search)';

UPDATE mnu_task SET revised_date='2013-04-21 16:59:19' ,revised_user='AJM' ,task_desc='Update Time Limit for User' WHERE task_id='mnu_time_limit_user(upd1)';

INSERT INTO mnu_nav_button (button_text ,context_preselect ,created_date ,created_user ,sort_seq ,task_id_jnr ,task_id_snr) VALUES
('Time Limits' ,'Y' ,'2013-04-21 17:00:46' ,'AJM' ,'015' ,'mnu_time_limit_user(list2)' ,'mnu_user(list1)');

UPDATE mnu_nav_button SET revised_date='2013-04-21 17:01:27' ,revised_user='AJM' ,sort_seq='015' WHERE task_id_snr='mnu_user(list1)' AND task_id_jnr='audit_dtl(list)3';

UPDATE mnu_nav_button SET button_text='Time Limits' ,revised_date='2013-04-21 17:01:28' ,revised_user='AJM' ,sort_seq='014' WHERE task_id_snr='mnu_user(list1)' AND task_id_jnr='mnu_time_limit_user(list2)';

UPDATE mnu_nav_button SET button_text='Email Signature' ,revised_date='2013-04-21 17:03:04' ,revised_user='AJM' WHERE task_id_snr='mnu_user(list1)' AND task_id_jnr='py_email_signature(multi1)';

INSERT INTO mnu_pattern (pattern_id, pattern_desc, pattern_long_desc, visible_screen, context_preselect, keep_data, created_date, created_user, revised_date, revised_user) VALUES('MULTI5', 'MULTI5 - Select and Display/Modify multiple occurrences', 'The top zone will act as a selection screen which will provide the selection criteria to populate the bottom zone with multiple occurrences.

The bottom zone is amendable by default, but can be made read-only.', 'Y', 'Y', 'N', '2013-06-10 13:54:36', 'AJM', NULL, NULL);

-- update all help text
DELETE FROM help_text WHERE task_id LIKE 'mnu%';
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_account(add1)', 'This will allow a new record to be added to the ACCOUNT table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_account(add1).html">Add Account</a> for full details.', '2008-01-04 10:27:45', 'AJM', '2013-06-11 15:40:40', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_account(del1)', 'This will display a record from the ACCOUNT table and allow it to be deleted.

Refer to <a href="%root%/mnu_account(del1).html">Delete Account</a> for full details.', '2008-01-04 10:32:08', 'AJM', '2013-06-11 15:41:00', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_account(enq1)', 'This will display the contents of a record from the ACCOUNT table.

Refer to <a href="%root%/mnu_account(enq1).html">Enquire Account</a> for full details.', '2008-01-04 10:33:41', 'AJM', '2013-06-11 15:41:13', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_account(list1)', 'This will list records on the ACCOUNT table.

Refer to <a href="%root%/mnu_account(list1).html">List Account</a> for full details.', '2008-01-04 10:50:02', 'AJM', '2013-06-11 15:41:22', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_account(search)', 'This will allow search criteria to be entered for the ACCOUNT table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_account(search).html">Search Account</a> for full details.', '2008-01-04 10:35:17', 'AJM', '2013-06-11 15:41:31', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_account(upd1)', 'This will display the contents of a record from the ACCOUNT table and allow it to be updated. 

Refer to <a href="%root%/mnu_account(upd1).html">Update Account</a> for full details.', '2008-01-04 10:36:51', 'AJM', '2013-06-11 15:41:40', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_control(upd3)', 'This will allow global settings on the MENU CONTROL table to be changed.

Refer to <a href="%root%/mnu_control(upd3).html">Update Menu Control data</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-11 15:43:51', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_control(upd3)noedit', 'This will allow global settings on the MENU CONTROL table to be viewed.

Refer to <a href="%root%/mnu_control(upd3).html">Update Menu Control data</a> for full details.', '2009-05-21 10:59:13', 'AJM', '2013-06-11 15:45:16', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_favourite(add2)', 'This will allow a new record to be added to the FAVOURITE table.

Refer to <a href="%root%/mnu_favourite(add2).html">Add Favourite</a> for full details.', '2013-06-11 15:50:37', 'AJM', '2013-06-11 15:52:48', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_favourite(del1)', 'This will allow a record to be deleted from the FAVOURITE table.

Refer to <a href="%root%/mnu_favourite(del1).html">Delete Favourite</a> for full details.', '2013-06-11 15:54:02', 'AJM', '2013-06-11 15:55:33', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_favourite(enq1)', 'This will display the contents of a record from the FAVOURITE table.

Refer to <a href="%root%/mnu_favourite(enq1).html">Enquire Favourite</a> for full details.', '2013-06-11 15:48:41', 'AJM', '2013-06-11 15:55:58', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_favourite(list2)', 'This will list the contents of the FAVOURITE table for a selected USER.

Refer to <a href="%root%/mnu_favourite(list2).html">List Favourite by User</a> for full details.', '2013-06-11 15:57:21', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_favourite(search)', 'This will allow search criteria to be entered before listing the contents of the FAVOURITE table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_favourite(search).html">Search Favourites</a> for full details.', '2013-06-11 15:59:34', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_favourite(upd1)', 'This will allow a record on the FAVOURITE table to be updated.

Refer to <a href="%root%/mnu_favourite(upd1).html">Update Favourite</a> for full details.', '2013-06-11 16:02:02', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_help_text_alt(add2)', 'This will allow a new record to be added to the HELP_TEXT_ALT table.

Refer to <a href="%root%/mnu_help_text_alt(add2).html">Add Help Text (Alternative Language)</a> for full details.', '2013-06-11 16:14:19', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_help_text_alt(del1)', 'This will allow a record to be deleted from the HELP_TEXT_ALT table.

Refer to <a href="%root%/mnu_help_text_alt(del1).html">Delete Help Text (Alternative Language)</a> for full details.', '2013-06-11 16:15:52', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_help_text_alt(enq1)', 'This will allow a record on the HELP_TEXT_ALT tableto be viewed

Refer to <a href="%root%/mnu_help_text_alt(enq1).html">Enquire Help Text (Alternative Language)</a> for full details.', '2013-06-11 16:28:30', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_help_text_alt(list2)', 'This will allow the contents of the HELP_TEXT_ALT table for a selected TASK to be viewed.

This table holds help text in alternative languages.

Refer to <a href="%root%/mnu_help_text_alt(list2).html">Maintain Alternative Languages for HELP_TEXT</a> for full details.', '2013-06-11 16:11:57', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_help_text_alt(search)', 'This will allow search criteria to be entered before listing the contents of the HELP_TEXT_ALT table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_help_text_alt(search).html">Search Help Text (Alternative Language)</a> for full details.', '2013-06-11 16:30:31', 'AJM', '2013-06-11 16:54:52', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_help_text_alt(upd1)', 'This will allow a record on the HELP_TEXT_ALT table to be updated.

Refer to <a href="%root%/mnu_help_text_alt(upd1).html">Update Help Text (Alternative Language)</a> for full details.', '2013-06-11 16:33:46', 'AJM', '2013-06-11 16:55:03', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_help_text(multi1)', 'This will allow the contents of the HELP TEXT table to be maintained.

Refer to <a href="%root%/mnu_help_text(multi1).html">Maintain Help Text</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-11 16:05:19', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_initial_value_role(multi3)a', 'This will allow the contents of the INITIAL_VALUE_ROLE table to be maintained by Role for a selected Task.

These values are used during the creation of new records.

Refer to <a href="%root%/mnu_initial_value_role(multi3)a.html">Maintain Initial Values (Role) by Task</a> for full details.', '2007-05-08 10:34:16', 'AJM', '2013-06-11 17:13:48', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_initial_value_role(multi3)b', 'This will allow the contents of the INITIAL_VALUE_ROLE table to be maintained by Task for a selected Role.

These values are used during the creation of new records.

Refer to <a href="%root%/mnu_initial_value_role(multi3)b.html">Maintain Initial Values (Task) by Role</a> for full details.', '2007-05-08 10:34:37', 'AJM', '2013-06-11 17:09:12', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_initial_value_user(multi3)a', 'This will allow the contents of the INITIAL_VALUE_USER table to be maintained by User for a selected Task.

These values are used during the creation of new records.

Refer to <a href="%root%/mnu_initial_value_user(multi3)a.html">Maintain Initial Values (Task) by User</a> for full details.', '2007-05-27 22:01:13', 'AJM', '2013-06-11 17:19:37', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_initial_value_user(multi3)b', 'This will allow the contents of the INITIAL_VALUE_USER table to be maintained by Task for a selected User.

These values are used during the creation of new records.

Refer to <a href="%root%/mnu_initial_value_user(multi3)b.html">Maintain Initial Values (Task) by User</a> for full details.', '2007-05-27 22:03:03', 'AJM', '2013-06-11 17:20:59', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_language(add1)', 'This will allow a new record to be added to the LANGUAGE table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_language(add1).html">Add Language</a> for full details.', '2008-01-04 10:31:04', 'AJM', '2013-06-11 17:22:57', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_language(del1)', 'This will display a record from the LANGUAGE table and allow it to be deleted.

Refer to <a href="%root%/mnu_language(del1).html">Delete Language</a> for full details.', '2008-01-04 10:32:38', 'AJM', '2013-06-11 17:22:59', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_language(enq1)', 'This will display the contents of a record from the LANGUAGE table.

Refer to <a href="%root%/mnu_language(enq1).html">Enquire Language</a> for full details.', '2008-01-04 10:34:05', 'AJM', '2013-06-11 17:23:01', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_language(list1)', 'This will list records on the LANGUAGE table.

Refer to <a href="%root%/mnu_language(list1).html">List Language</a> for full details.', '2008-01-04 10:28:39', 'AJM', '2013-06-11 17:23:03', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_language(search)', 'This will allow search criteria to be entered for the LANGUAGE table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_language(search).html">Search Language</a> for full details.', '2008-01-04 10:35:40', 'AJM', '2013-06-11 17:23:07', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_language(upd1)', 'This will display the contents of a record from the LANGUAGE table and allow it to be updated. 

Refer to <a href="%root%/mnu_language(upd1).html">Update Language</a> for full details.', '2008-01-04 10:37:13', 'AJM', '2013-06-11 17:23:09', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_menu(link1)', 'This will display the contents of the MENU table for a selected task of type \'menu\'.

Refer to <a href="%root%/mnu_menu(link1).html">Maintain Menu Items (2)</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:19:05', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_menu(list2)', 'This will list records on the MENU table for a selected Task of type \'menu\'.

Refer to <a href="%root%/mnu_menu(list2).html">List Menu Items</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:19:17', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_menu(list2)a', 'This will list parent records on the MENU table for a selected Task of type \'menu\'.

Refer to <a href="%root%/mnu_menu(list2)a.html">List Menu Parents</a> for full details.', '2007-08-12 22:04:22', 'AJM', '2013-06-12 12:19:24', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_menu(multi2)', 'This will display the contents of the MENU table for a selected task of type \'menu\', with the ability to modify data on existing records.. 

Refer to <a href="%root%/mnu_menu(multi2).html">Maintain Menu Items (1)</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:26:01', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_menu(search)', 'This will allow search criteria to be entered for the MENU table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_menu(search).html">Search Menu Items</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:26:33', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_menu(upd1)', 'This will display the contents of a record from the MENU table and allow it to be updated. 

Refer to <a href="%root%/mnu_menu(upd1).html">Update Menu Item</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:27:23', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_motd(add1)', 'This will allow a new record to be added to the MOTD (Message Of The Day) table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_motd(add1).html">Add MOD</a> for full details.', '2009-05-14 10:27:54', 'AJM', '2013-06-12 12:34:17', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_motd(del1)', 'This will display a record from the MOTD (Message Of The Day) table and allow it to be deleted.

Refer to <a href="%root%/mnu_motd(del1).html">Delete MOTD</a> for full details.', '2009-05-14 10:28:30', 'AJM', '2013-06-12 12:34:20', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_motd(enq1)', 'This will display the contents of a record from the MOTD (Message Of The Day) table.

Refer to <a href="%root%/mnu_motd(enq1).html">Enquire MOTD</a> for full details.', '2009-05-14 10:29:03', 'AJM', '2013-06-12 12:34:22', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_motd(list1)', 'This will list records on the MOTD (Message Of The Day) table.

Refer to <a href="%root%/mnu_motd(list1).html">List MOTD</a> for full details.', '2009-05-14 10:29:33', 'AJM', '2013-06-12 12:34:24', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_motd(search)', 'This will allow search criteria to be entered for the MOTD (Message Of The Day) table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_motd(search).html">Search MOTD</a> for full details.', '2009-05-14 10:30:06', 'AJM', '2013-06-12 12:34:27', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_motd(show)', 'This will show unexpired records from the MOTD (Message Of The Day) table, latest first.

Refer to <a href="%root%/mnu_motd(show).html">Show MOTD</a> for full details.', '2009-05-14 10:31:46', 'AJM', '2013-06-12 12:34:29', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_motd(upd1)', 'This will display the contents of a record from the MOTD (Message Of The Day) table and allow it to be updated. 

Refer to <a href="%root%/mnu_motd(upd1).html">Update MOTD</a> for full details.', '2009-05-14 10:30:36', 'AJM', '2013-06-12 12:34:30', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_nav_button(link1)', 'This will display the contents of the NAVIGATION BUTTON table for a selected Task. Each of these will appear in the navigation bar area when the task is selected.

Refer to <a href="%root%/mnu_nav_button(link1).html">Maintain Navigation Buttons (2)</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:35:48', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_nav_button(list2)', 'This will list records on the NAVIGATION BUTTON table for a selected TASK.

Refer to <a href="%root%/mnu_nav_button(list2).html">List Navigation Buttons</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:35:50', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_nav_button(list2)a', 'This will list parent records on the NAVIGATION BUTTON table for a selected TASK.

Refer to <a href="%root%/mnu_nav_button(list2)a.html">List Navigation Button Parents</a> for full details.', '2007-08-12 18:27:39', 'AJM', '2013-06-12 12:35:52', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_nav_button(multi2)', 'This will display the contents of the NAVIGATION BUTTON table for a selected task. 

Refer to <a href="%root%/mnu_nav_button(multi2).html">Maintain Navigation Buttons (1)</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:35:53', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_nav_button(search)', 'This will allow search criteria to be entered for the NAVIGATION BUTTON table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_nav_button(search).html">Search Navigation Button</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:35:55', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_nav_button(upd1)', 'This will display the contents of a record from the NAVIGATION BUTTON table and allow it to be updated. 

Refer to <a href="%root%/mnu_nav_button(upd1).html">Update Navigation Button</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:35:56', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_pattern(add1)', 'This will allow a new record to be added to the PATTERN table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_pattern(add1).html">Add Pattern</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:38:42', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_pattern(del1)', 'This will display a record from the PATTERN table and allow it to be deleted.

Refer to <a href="%root%/mnu_pattern(del1).html">Delete Pattern</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:38:44', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_pattern(enq1)', 'This will display the contents of a record from the PATTERN table.

Refer to <a href="%root%/mnu_pattern(enq1).html">Enquire Pattern</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:38:46', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_pattern(list1)', 'This will list records on the PATTERN table.

Refer to <a href="%root%/mnu_pattern(list1).html">List Pattern</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:38:49', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_pattern(search)', 'This will allow search criteria to be entered for the PATTERN table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_pattern(search).html">Search Pattern</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:38:51', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_pattern(upd1)', 'This will display the contents of a record from the PATTERN table and allow it to be updated. 

Refer to <a href="%root%/mnu_pattern(upd1).html">Update Pattern</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:38:53', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role_task(link1)a', 'This will display the contents of the ROLE TASK table for a selected task and allow updates to be made.

Refer to <a href="%root%/mnu_role_task(link1)a.html">Link Role(s) to selected task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:45:50', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role_task(link1)b', 'This will display the contents of the ROLE TASK table for a selected role and allow updates to be made.

Refer to <a href="%root%/mnu_role_task(link1)b.html">Link Task(s) to selected Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:45:52', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role_taskfield(multi3)a', 'This will show the contents of the ROLE TASK FIELD table for a selected Task and allow changes to be made.

Refer to <a href="%root%/mnu_role_taskfield(multi3)a.html">Maintain Field Access via Task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:48:59', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role_taskfield(multi3)b', 'This will show the contents of the ROLE TASK FIELD table for a selected Role and allow changes to be made.

Refer to <a href="%root%/mnu_role_taskfield(multi3)b.html">Maintain Field Access via Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:49:02', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role(add1)', 'This will allow a new record to be added to the ROLE table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_role(add1).html">Add Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:51:47', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role(del1)', 'This will display a record from the ROLE table and allow it to be deleted.

Refer to <a href="%root%/mnu_role(del1).html">Delete Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:56:15', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role(enq1)', 'This will display the contents of a record from the ROLE table.

Refer to <a href="%root%/mnu_role(enq1).html">Enquire Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:56:17', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role(list1)', 'This will list records on the ROLE table.

Refer to <a href="%root%/mnu_role(list1).html">List Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:56:20', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role(popup1)', 'This will list records on the ROLE table and allow one or more to be selected.

After selecting records please press the CHOOSE button.

Refer to <a href="%root%/mnu_role(popup1).html">Choose Role</a> for full details.', '2004-08-26 14:08:25', 'AJM', '2013-06-12 12:56:27', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role(search)', 'This will allow search criteria to be entered for the ROLE table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_role(search).html">Search Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:56:30', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_role(upd1)', 'This will display the contents of a record from the ROLE table and allow it to be updated. 

Refer to <a href="%root%/mnu_role(upd1).html">Update Role</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:56:38', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_session(upd3)', 'This will allow certain settings which are being used within the current session to be changed.

Refer to <a href="%root%/mnu_session(upd3).html">Update Session data</a> for full details.', '2006-04-07 11:22:29', 'AJM', '2013-06-12 12:57:19', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_subsystem(add1)', 'This will allow a new record to be added to the SUBSYSTEM table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_subsystem(add1).html">Add Subsystem</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:59:26', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_subsystem(del1)', 'This will display a record from the SUBSYSTEM table and allow it to be deleted.

Refer to <a href="%root%/mnu_subsystem(del1).html">Delete Subsystem</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:59:31', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_subsystem(enq1)', 'This will display the contents of a record from the SUBSYSTEM table.

Refer to <a href="%root%/mnu_subsystem(enq1).html">Enquire Subsystem</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 12:59:33', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_subsystem(erase)', 'This will allow all the records on all associated tables for the selected Subsystem to be erased.

To proceed with the erase press SUBMIT, otherwise press CANCEL.

Refer to <a href="%root%/mnu_subsystem(erase).html">Erase Subsystem</a> for full details.', '2013-06-12 13:02:28', 'AJM', '2013-06-12 13:04:08', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_subsystem(list1)', 'This will list records on the SUBSYSTEM table.

Refer to <a href="%root%/mnu_subsystem(list1).html">List Subsystem</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:04:16', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_subsystem(search)', 'This will allow search criteria to be entered for the SUBSYSTEM table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_subsystem(search).html">Search Subsystem</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:04:19', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_subsystem(upd1)', 'This will display the contents of a record from the SUBSYSTEM table and allow it to be updated. 

Refer to <a href="%root%/mnu_subsystem(upd1).html">Update Subsystem</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:04:22', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_alt(add2)', 'This will allow a new record to be added to the TASK_ALT table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_task_alt(add2).html">Add Task (Alternative Language)</a> for full details.', '2013-06-12 13:09:41', 'AJM', '2013-06-12 13:11:00', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_alt(del1)', 'This will allow a record to be deleted from the TASK_ALT table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_task_alt(del1).html">Delete Task (Alternative Language)</a> for full details.', '2013-06-12 13:14:44', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_alt(enq1)', 'This will display the contents record from the TASK_ALT table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_task_alt(enq1).html">Enquire Task (Alternative Language)</a> for full details.', '2013-06-12 13:17:47', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_alt(list2)', 'This will list records on the TASK_ALT table for a selected TASK.

Refer to <a href="%root%/mnu_task_alt(list2).html">Maintain Alternative Language for Task</a> for full details.', '2013-06-12 13:22:08', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_alt(search)', 'This will allow search criteria to be entered for the TASK_ALT table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_task_alt(search).html">Search Task (Alternative Language)</a> for full details.', '2013-06-12 13:23:54', 'AJM', '2013-06-12 13:25:05', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_alt(upd1)', 'This will display the contents of a record from the TASK_ALT table and allow it to be updated. 

Refer to <a href="%root%/mnu_task_alt(upd1).html">Update Task (Alternative Language)</a> for full details.', '2013-06-12 13:26:59', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_field(add2)', 'This will allow a record to be added to the TASK FIELD table for a selected TASK.

Refer to <a href="%root%/mnu_task_field(add2).html">Add Task Field</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:35:57', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_field(del1)', 'This will display a record from the TASK FIELD table and allow it to be deleted.

Refer to <a href="%root%/mnu_task_field(del1).html">Delete Task Field</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:37:10', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_field(enq1)', 'This will display the contents of a record from the TASK FIELD table.

Refer to <a href="%root%/mnu_task_field(enq1).html">Enquire Task Field</a> for full details.', '2009-12-05 10:30:50', 'AJM', '2013-06-12 13:37:41', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_field(list2)', 'This will list records on the TASK FIELD table for a selected TASK.

Refer to <a href="%root%/mnu_task_field(list2).html">List Task Field</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:37:44', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_field(search)', 'This will allow search criteria to be entered for the TASK FIELD table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_task_field(search).html">SearchTask Field</a> for full details.', '2009-12-05 10:32:23', 'AJM', '2013-06-12 13:37:46', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_field(upd1)', 'This will display the contents of a record from the TASK FIELD table and allow it to be updated. 

Refer to <a href="%root%/mnu_task_field(upd1).html">Update Task Field</a> for full details.', '2009-12-05 10:34:05', 'AJM', '2013-06-12 13:37:48', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_ip_address(add2)', 'This will allow a new record to be added to the TASK_IP_ADDRESS table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_task_ip_address(add2).html">Add Task IP Address</a> for full details.', '2009-12-05 10:35:14', 'AJM', '2013-06-12 13:47:11', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_ip_address(del1)', 'This will display a record from the TASK_IP_ADDRESS table and allow it to be deleted.

Refer to <a href="%root%/mnu_task_ip_address(del1).html">Delete Task IP Address</a> for full details.', '2009-12-05 10:36:30', 'AJM', '2013-06-12 13:46:04', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_ip_address(enq1)', 'This will display the contents of a record from the TASK_IP_ADDRESS table.

Refer to <a href="%root%/mnu_task_ip_address(enq1).html">Enquire Task IP Address</a> for full details.', '2009-12-05 10:37:31', 'AJM', '2013-06-12 13:46:11', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_ip_address(list2)', 'This will list records on the TASK_IP_ADDRESS table for a selected Task.

Refer to <a href="%root%/mnu_task_ip_address(list2).html">List IP Address by Task</a> for full details.', '2009-12-05 10:38:49', 'AJM', '2013-06-12 13:46:13', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_ip_address(search)', 'This will allow search criteria to be entered for the TASK_IP_ADDRESS table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_task_ip_address(search).html">Search Task IP Address</a> for full details.', '2009-12-05 10:39:57', 'AJM', '2013-06-12 13:46:15', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task_ip_address(upd1)', 'This will display the contents of a record from the TASK_IP_ADDRESS table and allow it to be updated. 

Refer to <a href="%root%/mnu_task_ip_address(upd1).html">Update Task IP Address</a> for full details.', '2009-12-05 10:41:00', 'AJM', '2013-06-12 13:46:18', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(add1)', 'This will allow a new record to be added to the TASK table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_task(add1).html">Add Task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:50:09', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(del1)', 'This will display a record from the TASK table and allow it to be deleted.

Refer to <a href="%root%/mnu_task(del1).html">Delete Task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:50:12', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(enq1)', 'This will display the contents of a record from the TASK table.

Refer to <a href="%root%/mnu_task(enq1).html">Enquire Task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:50:14', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(list1)', 'This will list records on the TASK table regardless of their TASK-TYPE.

Refer to <a href="%root%/mnu_task(list1).html">List Task (All)</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:50:16', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(list1)a', 'This will list records on the TASK table where type = \'TASK\'.

Refer to <a href="%root%/mnu_task(list1)a.html">List Task (Proc)</a> for full details.', '2004-08-26 12:07:32', 'AJM', '2013-06-12 12:42:49', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(list1)b', 'This will list records on the TASK table where type = \'MENU\'.

Refer to <a href="%root%/mnu_task(list1)b.html">List Task (Menu)</a> for full details.', '2004-08-26 12:07:39', 'AJM', '2013-06-12 12:42:55', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(list2)a', 'This will list records on the TASK table for a selected PATTERN.

Refer to <a href="%root%/mnu_task(list2)a.html">List Task by Pattern</a> for full details.', '2004-08-26 12:09:31', 'AJM', '2013-06-12 12:43:08', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(list2)b', 'This will list records on the TASK table for a selected SUBSYSTEM.

Refer to <a href="%root%/mnu_task(list2)b.html">List Task by Subsystem</a> for full details.', '2004-08-26 12:09:43', 'AJM', '2013-06-12 12:43:14', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(popup1)', 'This will list records on the TASK table and allow one or more to be selected.

After selecting records please press the CHOOSE button.

Refer to <a href="%root%/mnu_task(popup1).html">Choose Task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 13:50:48', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(popup1)a', 'This will list records on the TASK table with type = PROC and allow one or more to be selected.

After selecting records please press the CHOOSE button.

Refer to <a href="%root%/mnu_task(popup1)a.html">Choose Task (Proc)</a> for full details.', '2004-08-26 14:09:00', 'AJM', '2013-06-12 14:11:33', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(popup1)a1', '[copy: mnu_task(popup1)a]', '2013-06-12 13:56:46', 'AJM', '2013-06-12 14:12:04', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(popup1)a2', '[copy: mnu_task(popup1)a]', '2013-06-12 13:57:56', 'AJM', '2013-06-12 14:12:09', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(popup1)b', 'This will list records on the TASK table with type = MENUand allow one or more to be selected.

After selecting records please press the CHOOSE button.

Refer to <a href="%root%/mnu_task(popup1)b.html">Choose Task (Menu)</a> for full details.', '2004-08-26 14:09:10', 'AJM', '2013-06-12 14:12:36', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(rename)', 'This will allow a entry on the TASK table to be renamed. It will also rename any associated records on any related tables. 

Refer to <a href="%root%/mnu_task(rename).html">Rename Task</a> for full details.', '2004-08-26 12:25:54', 'AJM', '2013-06-12 13:58:48', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(search)', 'This will allow search criteria to be entered for the TASK table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_task(search).html">Search Task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:08:08', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_task(upd1)', 'This will display the contents of a record from the TASK table and allow it to be updated. 

Refer to <a href="%root%/mnu_task(upd1).html">Update Task</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:08:10', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_role(add2)', 'This will allow a record to be added to the TIME_LIMIT_ROLE table for a selected ROLE.

Refer to <a href="%root%/mnu_time_limit_role(add2).html">Add Time Limit for Role</a> for full details.', '2013-06-12 15:24:37', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_role(del1)', 'This will display a record from the TIME_LIMIT_ROLE table and allow it to be deleted.

Refer to <a href="%root%/mnu_time_limit_role(del1).html">Delete Time Limit for Role</a> for full details.', '2013-06-12 15:27:03', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_role(enq1)', 'This will display a record from the TIME_LIMIT_ROLE table.

Refer to <a href="%root%/mnu_time_limit_role(enq1).html">Enquire Time Limit for Role</a> for full details.', '2013-06-12 15:27:49', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_role(list2)', 'This will list records on the TIME_LIMIT_ROLE table for a selected ROLE.

Refer to <a href="%root%/mnu_time_limit_role(list2).html">List Time Limit for Role</a> for full details.', '2013-06-12 15:22:34', 'AJM', NULL, NULL);
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_role(search)', 'This will allow search criteria to be entered for the TIME_LIMIT_ROLE table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_time_limit_role(search).html">Search Time Limit for Role</a> for full details.', '2013-06-12 15:29:29', 'AJM', '2013-06-12 15:29:50', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_role(upd1)', 'This will display a record from the TIME_LIMIT_ROLE table and allow it to be updated.

Refer to <a href="%root%/mnu_time_limit_role(upd1).html">Update Time Limit for Role</a> for full details.', '2013-06-12 15:30:24', 'AJM', '2013-06-12 15:31:14', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_user(add2)', 'This will allow a record to be added to the TIME_LIMIT_USER table for a selected User.

Refer to <a href="%root%/mnu_time_limit_user(add2).html">Add Time Limit for User</a> for full details.', '2013-06-12 15:24:37', 'AJM', '2013-06-12 16:33:37', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_user(del1)', 'This will display a record from the TIME_LIMIT_USER table and allow it to be deleted.

Refer to <a href="%root%/mnu_time_limit_user(del1).html">Delete Time Limit for User</a> for full details.', '2013-06-12 15:27:03', 'AJM', '2013-06-12 16:33:48', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_user(enq1)', 'This will display a record from the TIME_LIMIT_USER table.

Refer to <a href="%root%/mnu_time_limit_user(enq1).html">Enquire Time Limit for User</a> for full details.', '2013-06-12 15:27:49', 'AJM', '2013-06-12 16:33:57', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_user(list2)', 'This will list records on the TIME_LIMIT_USER table for a selected User.

Refer to <a href="%root%/mnu_time_limit_user(list2).html">List Time Limit for User</a> for full details.', '2013-06-12 15:22:34', 'AJM', '2013-06-12 16:34:06', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_user(search)', 'This will allow search criteria to be entered for the TIME_LIMIT_USER table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_time_limit_user(search).html">Search Time Limit for User</a> for full details.', '2013-06-12 15:29:29', 'AJM', '2013-06-12 16:34:15', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_time_limit_user(upd1)', 'This will display a record from the TIME_LIMIT_USER table and allow it to be updated.

Refer to <a href="%root%/mnu_time_limit_user(upd1).html">Update Time Limit for User</a> for full details.', '2013-06-12 15:30:24', 'AJM', '2013-06-12 16:34:24', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_todo(add1)', 'This will allow a new record to be added to the ToDo table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_todo(add1).html">Add ToDo</a> for full details.', '2006-04-19 16:10:08', 'AJM', '2013-06-12 14:20:02', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_todo(del1)', 'This will display a record from the ToDo table and allow it to be deleted.

Refer to <a href="%root%/mnu_todo(del1).html">Delete ToDo</a> for full details.', '2006-04-19 16:10:55', 'AJM', '2013-06-12 14:20:04', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_todo(enq1)', 'This will display the contents of a record from the ToDo table.

Refer to <a href="%root%/mnu_todo(enq1).html">Enquire ToDo</a> for full details.', '2006-04-19 16:12:45', 'AJM', '2013-06-12 14:20:06', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_todo(list1)', 'This will list records on the ToDo table.

Refer to <a href="%root%/mnu_todo(list1).html">List ToDo</a> for full details.', '2006-04-19 15:57:45', 'AJM', '2013-06-12 14:20:08', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_todo(list2)', 'This will list records on the ToDo table for a particular USER.

Refer to <a href="%root%/mnu_todo(list)2.html">List ToDo for User</a> for full details.', '2006-04-19 16:07:56', 'AJM', '2013-06-12 14:20:10', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_todo(search)', 'This will allow search criteria to be entered for the ToDo table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_todo(search).html">Search ToDo</a> for full details.', '2006-04-19 16:13:45', 'AJM', '2013-06-12 14:20:12', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_todo(upd1)', 'This will display the contents of a record from the ToDo table and allow it to be updated. 

Refer to <a href="%root%/mnu_todo(upd1).html">Update ToDo</a> for full details.', '2006-04-19 16:14:40', 'AJM', '2013-06-12 14:20:14', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user_ip_address(add2)', 'This will allow a new record to be added to the USER_IP_ADDRESS table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_user_ip_address(add2).html">Add User IP Address</a> for full details.', '2009-12-05 10:46:48', 'AJM', '2013-06-12 14:22:52', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user_ip_address(del1)', 'This will display a record from the USER_IP_ADDRESS table and allow it to be deleted.

Refer to <a href="%root%/mnu_user_ip_address(del1).html">Delete User IP Address</a> for full details.', '2009-12-05 10:47:57', 'AJM', '2013-06-12 14:21:53', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user_ip_address(enq1)', 'This will display the contents of a record from the USER_IP_ADDRESS table.

Refer to <a href="%root%/mnu_user_ip_address(enq1).html">Enquire User IP Address</a> for full details.', '2009-12-05 10:48:25', 'AJM', '2013-06-12 14:21:55', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user_ip_address(list2)', 'This will list records on the USER_IP_ADDRESS table for a selected User.

Refer to <a href="%root%/mnu_user_ip_address(list2).html">List IP Address by User</a> for full details.', '2009-12-05 10:49:07', 'AJM', '2013-06-12 14:21:56', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user_ip_address(search)', 'This will allow search criteria to be entered for the USER_IP_ADDRESS table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_user_ip_address(search).html">Search User IP Address</a> for full details.', '2009-12-05 10:49:42', 'AJM', '2013-06-12 14:21:58', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user_ip_address(upd1)', 'This will display the contents of a record from the USER_IP_ADDRESS table and allow it to be updated. 

Refer to <a href="%root%/mnu_user_ip_address(upd1).html">Update User IP Address</a> for full details.', '2009-12-05 10:50:17', 'AJM', '2013-06-12 14:22:00', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(add1)', 'This will allow a new record to be added to the USER table.

Enter your data then press the SUBMIT button to add it to the database.

Refer to <a href="%root%/mnu_user(add1).html">Add User</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:35:32', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(del1)', 'This will display a record from the USER table and allow it to be deleted.

Refer to <a href="%root%/mnu_user(del1).html">Delete User</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:35:35', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(enq1)', 'This will display the contents of a record from the USER table.

Refer to <a href="%root%/mnu_user(enq1).html">Enquire User</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:35:37', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(list1)', 'This will list records on the USER table.

Refer to <a href="%root%/mnu_user(list1).html">List User</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:35:38', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(list2)', 'This will list records on the USER table for a selected ROLE.

Refer to <a href="%root%/mnu_user(list2).html">List User by Role</a> for full details.', '2004-08-26 12:10:17', 'AJM', '2013-06-12 14:35:40', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(popup1)', 'This will list records on the USER table and allow one or more to be selected.

After selecting records please press the CHOOSE button to return to the previous screen.

Refer to <a href="%root%/mnu_user(popup1).html">Choose User</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:35:42', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(search)', 'This will allow search criteria to be entered for the USER table.

Enter selection criteria then press the SUBMIT button to pass it back to the previous task for processing.

Refer to <a href="%root%/mnu_user(search).html">Search User</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:43:17', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(upd1)', 'This will display the contents of a record from the USER table and allow it to be updated. 

Refer to <a href="%root%/mnu_user(upd1).html">Update User</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:43:20', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(upd1)a', 'This will allow a user\'s password to be changed.

Refer to <a href="%root%/mnu_user(upd1)a.html">Change User Password</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:44:12', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(upd1)b', 'This will allow a user\'s password to be changed.

Refer to <a href="%root%/mnu_user(upd1)b.html">Reset User Password</a> for full details.', '2003-01-01 12:00:00', 'AJM', '2013-06-12 14:44:34', 'AJM');
INSERT INTO help_text (task_id, help_text, created_date, created_user, revised_date, revised_user) VALUES ('mnu_user(upd1)c', 'Enter your e-mail address and your password will be sent to you.

Note: this will only work if your e-mail address is recorded on your user details.

Refer to <a href="%root%/mnu_user(pswd).html">Retrieve Password</a> for full details.', '2006-04-23 11:41:11', 'AJM', '2013-06-12 14:45:02', 'AJM');
