# HIVE
Anything Hive

# Cheatsheets:
  - http://www.kdnuggets.com/2015/07/good-data-science-machine-learning-cheat-sheets.html
# Coding
  - CREATE TABLE / TABLE MANIPULATION:
    - https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-CreateTable
  - MANUAL
    - https://cwiki.apache.org/confluence/display/Hive/LanguageManual
    
  - FUNCTIONS 
    - https://www.qubole.com/resources/cheatsheet/hive-function-cheat-sheet/

# Settings for ODBC Connection:
  - ADD TEZ SETTINGS:
    - https://community.hortonworks.com/content/supportkb/49486/how-to-set-hiveexecutionengine-using-hortonworks-h.html

# Hive metadata 
  - use sys;
    query string

  - use infromation_schema;
    query string
    
  - create materialized view table_name
  
  - constraints:
   - primary key (id) disable novalidate, constraint var foredign key (var)
     references table(id) disable novalidate
     
  - create table:
    var as surraget_key()
    
  - resource plan:
   - create resource plan plan_name;
   - create pool plan_name.a with alloc_fraction = 0.8 query_parallelism = 5;
   - create pool plan_name.b with alloc_fraction = 0.2 query_parallelism = 20;
   - create rule ... ;
   - add rule downgrade to a;
   - create application maping ... 
   - alter plan plan_name ... ;
   - apply plan plan_name;
     
