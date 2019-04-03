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
    
  - resource plan + caching:
   - create resource plan plan_name;
   - create pool plan_name.a with alloc_fraction = 0.8 query_parallelism = 5;
   - create pool plan_name.b with alloc_fraction = 0.2 query_parallelism = 20;
   - create rule ... ;
   - add rule downgrade to a;
   - create application maping ... 
   - alter plan plan_name ... ;
   - apply plan plan_name;
   - options: hive.query.results.cache.enabled=true on by default
   - works on managed tables
   - store in /tmp/ folder
   
 - Spark-Hive connect
  - options:
   - hive.executeUpdate("sql String") : Bool
   - df.write.format(hive_warehouse_dconnector).save() "writes ORC files" from spark.
   - df.select()
       .filter
       .
   - streaming:
    - df.write.format(stream_to_stream).start()
    
# Hive Arrays
  - explode: lateral view explode(array_string_field) x as field_name
  - array_contains
 
# Map Field
 - key value pais concept
 - maps can be exploded.
 - 
 
# Struct fields
 - must follow specific schema, not so in maps
 - use "dot" formais
 - create table:
  - insert overwrite table
   select *
    named_struct( # map() for map
     'tiny_int.field_c', tinyint_field,
     'tiny_int', tinyint_field
    )
   from 
   
# JSON
 - get_json_object(json_col, "$.field[0].name") as var1
 
# Partition field
 - always the last couple of cols.
 
# UDF - create temporary functions
 - 

# collect() - put data into 1 row, like collect(map())
- 
  
   
