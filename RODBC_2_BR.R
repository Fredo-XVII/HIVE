##### ODBC Into LittleRED/bigRED #####


# Note: You must have the Horton works Drivers installed on your Machine

library(RODBC)

# creates the connection to BigRED using ODBC Drivers
conn <- odbcConnect("devHadoop" , uid = "XXXX" , pwd = "XXX")
conn <- odbcConnect("devHadoop64" , uid = "XXXX" , pwd = "XXXX")

# Learn about the connection that you are making
odbcGetInfo(conn)

# Query directly from Hive
test <- sqlQuery(conn, 
"
SELECT * FROM schema.test
"         
         )

# Create new table in Hive like existing table
sqlQuery(conn,
"
CREATE TABLE schema.test2 LIKE schema.test
"         
         )

# Confirm that your table was created
sqlTables(conn, errors = FALSE, as.is = TRUE,
          catalog = NULL, schema = "schema", tableName = NULL,
          tableType = NULL, literal = FALSE)

# Save a table to HIVE: not very efficient to upload data to bigRED
sqlSave(conn, test, tablename = "schema.test2", append = TRUE,
        rownames = FALSE, colnames = FALSE, verbose = FALSE,
        safer = FALSE, addPK = FALSE, typeInfo, varTypes,
        fast = TRUE, test = FALSE, nastring = NULL)

# Disconnect from BigRED
odbcClose(conn)
