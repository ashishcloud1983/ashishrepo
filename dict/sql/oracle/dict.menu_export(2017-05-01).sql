ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'YYYY-MM-DD HH24:MI:SS';
SET SCAN OFF;

ALTER SESSION SET CURRENT_SCHEMA = "MENU";

INSERT INTO mnu_nav_button (task_id_snr, task_id_jnr, sort_seq, button_text, context_preselect, created_date, created_user, revised_date, revised_user) VALUES ('dict_relationship(list2)d', 'audit_dtl(list)3', 005, 'Audit Trail', 'Y', '2017-05-02 18:41:56', 'AJM', '2012-06-23 18:58:25', 'AJM');
INSERT INTO mnu_nav_button (task_id_snr, task_id_jnr, sort_seq, button_text, context_preselect, created_date, created_user, revised_date, revised_user) VALUES ('dict_relationship(list2)d', 'dict_related_column(list2)a', 002, 'Read', 'Y', '2017-05-02 18:41:56', 'AJM', '2012-06-23 20:02:00', 'AJM');
INSERT INTO mnu_nav_button (task_id_snr, task_id_jnr, sort_seq, button_text, context_preselect, created_date, created_user, revised_date, revised_user) VALUES ('dict_relationship(list2)d', 'dict_related_column(multi4)a', 003, 'Update', 'Y', '2017-05-02 18:41:56', 'AJM', '2012-06-23 20:04:48', 'AJM');
INSERT INTO mnu_nav_button (task_id_snr, task_id_jnr, sort_seq, button_text, context_preselect, created_date, created_user, revised_date, revised_user) VALUES ('dict_relationship(list2)d', 'dict_relationship(del4)', 004, 'Delete', 'Y', '2017-05-02 18:41:56', 'AJM', '2012-06-23 18:58:25', 'AJM');
INSERT INTO mnu_nav_button (task_id_snr, task_id_jnr, sort_seq, button_text, context_preselect, created_date, created_user, revised_date, revised_user) VALUES ('dict_relationship(list2)d', 'dict_relationship(output2)a', 006, 'Output to PDF(L)', 'N', '2017-05-02 18:41:56', 'AJM', '2012-06-23 20:11:16', 'AJM');
INSERT INTO mnu_nav_button (task_id_snr, task_id_jnr, sort_seq, button_text, context_preselect, created_date, created_user, revised_date, revised_user) VALUES ('dict_relationship(list2)d', 'dict_relationship(output3)a', 007, 'Output to PDF(D)', 'N', '2017-05-02 18:41:56', 'AJM', '2012-06-23 20:13:07', 'AJM');
INSERT INTO mnu_nav_button (task_id_snr, task_id_jnr, sort_seq, button_text, context_preselect, created_date, created_user, revised_date, revised_user) VALUES ('dict_relationship(list2)d', 'dict_relationship(search)', 001, 'Search', 'N', '2017-05-02 18:41:56', 'AJM', '2012-06-23 18:58:25', 'AJM');

-- finished