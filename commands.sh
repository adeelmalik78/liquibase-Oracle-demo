
[UPDATE-TESTING-ROLLBACK]
liquibase \
    --contexts=DEV \
    --liquibase-schema-name=CMS_DEV \
    update-testing-rollback


[SQL] 
SELECT DISTINCT  NAME
	FROM DBA_SOURCE
	WHERE OWNER='CMS_DEV'
	AND TYPE='PACKAGE BODY'
	AND NAME LIKE 'ALPS%';


[ROLLBACK-ONE-UPDATE-SQL]
liquibase \
    --contexts=DEV \
    --liquibase-schema-name=CMS_DEV \
    rollback-one-update-sql


[ROLLBACK-ONE-UPDATE]
liquibase \
    --contexts=DEV \
    --liquibase-schema-name=CMS_DEV \
    rollback-one-update --force

liquibase \
    --contexts=DEV \
    --liquibase-schema-name=CMS_DEV \
    rollback engie-demo