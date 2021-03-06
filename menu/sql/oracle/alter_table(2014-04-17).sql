ALTER SESSION SET CURRENT_SCHEMA = "MENU";

ALTER TABLE MENU.MNU_LANGUAGE  ADD (input_date_format  VARCHAR2(12 BYTE));
ALTER TABLE MENU.MNU_LANGUAGE  ADD (output_date_format  VARCHAR2(12 BYTE));

CREATE UNIQUE INDEX "MENU"."MNU_FAVOURITE_IDX2" ON "MENU"."MNU_FAVOURITE" ("USER_ID","TASK_ID") ;

CREATE TABLE "MENU"."MNU_USER_ALT" (
	"USER_ID" VARCHAR2(16 BYTE), 
	"LANGUAGE_ID" VARCHAR2(5 BYTE),
	"USER_NAME" VARCHAR2(30 BYTE) NOT NULL,  
	"CREATED_DATE" TIMESTAMP (6) DEFAULT '2001-01-01', 
	"CREATED_USER" VARCHAR2(16 BYTE) DEFAULT 'UNKNOWN', 
	"REVISED_DATE" TIMESTAMP (6), 
	"REVISED_USER" VARCHAR2(16 BYTE),
	PRIMARY KEY (user_id, language_id)
) ;
REVOKE ALL ON mnu_user_alt FROM PUBLIC;
GRANT SELECT,INSERT,DELETE,UPDATE ON mnu_user_alt TO PUBLIC;

CREATE TABLE "MENU"."MNU_USER_ROLE" (
	"USER_ID" VARCHAR2(16 BYTE), 
	"ROLE_ID" VARCHAR2(16 BYTE),
	"IS_PRIMARY" CHAR(1 BYTE) DEFAULT 'N', 
	"CREATED_DATE" TIMESTAMP (6) DEFAULT '2001-01-01', 
	"CREATED_USER" VARCHAR2(16 BYTE) DEFAULT 'UNKNOWN', 
	"REVISED_DATE" TIMESTAMP (6), 
	"REVISED_USER" VARCHAR2(16 BYTE),
	PRIMARY KEY (user_id, role_id)
) ;
REVOKE ALL ON mnu_user_role FROM PUBLIC;
GRANT SELECT,INSERT,DELETE,UPDATE ON mnu_user_role TO PUBLIC;

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'YYYY-MM-DD HH24:MI:SS';
SET SCAN OFF;
INSERT INTO mnu_user_role (user_id, role_id, is_primary, created_date, created_user)
                    SELECT user_id, role_id, 'Y', '2014-04-17', created_user FROM mnu_user;

DROP INDEX "MENU"."MNU_USER_IDX2";
ALTER TABLE "MENU"."MNU_USER" DROP COLUMN "ROLE_ID";
