ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'YYYY-MM-DD HH24:MI:SS';
SET SCAN OFF;

ALTER SESSION SET CURRENT_SCHEMA = "MENU";

INSERT INTO mnu_task_quicksearch (task_id, field_id, sort_seq, field_name, created_date, created_user, revised_date, revised_user) VALUES ('audit_logon_errors(list)', 'email_addr', 2, 'Email Address', '2016-05-19 18:44:49', 'AJM', NULL, NULL);
INSERT INTO mnu_task_quicksearch (task_id, field_id, sort_seq, field_name, created_date, created_user, revised_date, revised_user) VALUES ('audit_logon_errors(list)', 'user_id', 1, 'User Id', '2016-05-19 18:44:26', 'AJM', NULL, NULL);
