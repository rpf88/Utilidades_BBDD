--CREATE TABLE pdm(id_pk INTEGER,fname VARCHAR2(30),pdf_file BLOB);
--SELECT DBMS_LOB.getlength(pdf_file) FROM PDM;

/*CREATE OR REPLACE PROCEDURE load_file(pi_id IN INTEGER, pfname IN VARCHAR2) IS
     src_file BFILE;
     dst_file BLOB;
     lgh_file BINARY_INTEGER;
   BEGIN
     src_file := bfilename('TEMP', pfname);
   
     INSERT INTO pdm
       (id_pk, fname, pdf_file)
     VALUES
       (pi_id, pfname, EMPTY_BLOB())
     RETURNING pdf_file INTO dst_file;
   
     DBMS_LOB.OPEN(src_file, dbms_lob.file_readonly);
     lgh_file := dbms_lob.getlength(src_file);
     DBMS_LOB.LOADFROMFILE(dst_file, src_file, lgh_file);
     dbms_lob.close(src_file);
     COMMIT;
   END load_file;
*/
--drop index IDX_ANEXOS_BLOB;
--CREATE INDEX IDX_PDM_PRUEBA ON PDM(PDF_FILE) INDEXTYPE IS CTXSYS.CONTEXT;
create index IDX_ANEXOS_BLOB on ANEXOS_BLOB (CONTENIDO_ANXB) indextype is ctxsys.context parameters ('sync (on commit)');
--select * from ctx_user_index_errors;
--points to that likely an environmental issue with the shared library environmental variable. 
--EXEC DBMS_STATS.GATHER_TABLE_STATS(USER, 'PDM', cascade=>TRUE);
--SELECT ID_PK FROM PDM WHERE CONTAINS(PDF_FILE,'SOLICITUD')>0;
