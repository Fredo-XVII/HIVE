select 
min(substr(from_unixtime(unix_timestamp(concat(substr(a.created_ts,0,10),' ', substr(a.created_ts,12,5),':0000'))),0,22)) AS time_test
from table