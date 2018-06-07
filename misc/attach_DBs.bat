REM wait for the SQL server to start
ping -n 20 127.0.0.1 >nul

REM TODO - replace with simple sqlcmd
sqlcmd -S localhost,1433 -U sa -P Nova@7610 -d master -i c:\\nova\\spider.sql