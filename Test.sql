CREATE TABLE test_backup_table (
    id NUMBER,
    name VARCHAR2(50)
);

INSERT INTO test_backup_table VALUES (1, 'Sample');
SELECT * FROM TEST_BACKUP_TABLE;
COMMIT;


CREATE OR REPLACE DIRECTORY backup_dir AS 'C:\oracle_backup';

GRANT READ, WRITE ON DIRECTORY backup_dir TO C##bappi;
