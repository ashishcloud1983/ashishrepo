REVOKE ALL ON audit_fld FROM PUBLIC;
REVOKE ALL ON audit_logon_errors FROM PUBLIC;
REVOKE ALL ON audit_logon_errors_seq FROM PUBLIC;
REVOKE ALL ON audit_ssn FROM PUBLIC;
REVOKE ALL ON audit_ssn_seq FROM PUBLIC;
REVOKE ALL ON audit_tbl FROM PUBLIC;
REVOKE ALL ON audit_trn FROM PUBLIC;
REVOKE ALL ON php_session FROM PUBLIC;

GRANT SELECT,INSERT,DELETE,UPDATE ON audit_fld TO PUBLIC;
GRANT SELECT,INSERT,DELETE,UPDATE ON audit_logon_errors TO PUBLIC;
GRANT SELECT,ALTER                ON audit_logon_errors_seq TO PUBLIC;
GRANT SELECT,INSERT,DELETE,UPDATE ON audit_ssn TO PUBLIC;
GRANT SELECT,ALTER                ON audit_ssn_seq TO PUBLIC;
GRANT SELECT,INSERT,DELETE,UPDATE ON audit_tbl TO PUBLIC;
GRANT SELECT,INSERT,DELETE,UPDATE ON audit_trn TO PUBLIC;
GRANT SELECT,INSERT,DELETE,UPDATE ON php_session TO PUBLIC;

