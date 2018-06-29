select 
min(substr(from_unixtime(unix_timestamp(concat(substr(a.created_ts,0,10),' ', substr(a.created_ts,12,5),':0000'))),0,22)) AS time_test
from table
;

-- Accounts for Time Zone of Store
,from_unixtime(unix_timestamp(trim(concat(split(coalesce(a.created_ts,'9999-12-31T11:59:00-06:00') ,'T')[0],' ',split(split(a.created_ts,'T')[1],'-')[0]))) ) as picked_ts_utc
,CAST(from_unixtime(unix_timestamp(trim(concat(split(coalesce(a.created_ts,'9999-12-31T11:59:00-06:00') ,'T')[0],' ',split(split(a.created_ts,'T')[1],'-')[0]))) ) AS CHAR(10) )as picked_dt_utc
,from_utc_timestamp(from_unixtime(unix_timestamp(trim(concat(split(coalesce(a.created_ts,'9999-12-31T11:59:00-06:00') ,'T')[0],' ',split(split(a.created_ts,'T')[1],'-')[0])))), LOC.TZ_C ) AS picked_ts_local
,CAST(from_utc_timestamp(from_unixtime(unix_timestamp(trim(concat(split(coalesce(a.created_ts,'9999-12-31T11:59:00-06:00') ,'T')[0],' ',split(split(a.created_ts,'T')[1],'-')[0])))), LOC.TZ_C ) AS CHAR(10))AS picked_dt_local

