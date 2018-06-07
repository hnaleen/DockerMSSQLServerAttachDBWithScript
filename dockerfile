# Using MS SQL server windows base image
FROM microsoft/mssql-server-windows-developer
 
# Create directoty for database files
#RUN powershell -Command "mkdir C:\\SQLServer"

#copy the database files from host to container
COPY DB C:\\SQLServer

#Create directory for entry points and other misc files
RUN powershell -Command "mkdir C:\\NOVA"

#copy the misc files from host to container
COPY misc C:\\NOVA

# set environment variables
ENV SA_PASSWORD=Nova@7610
 
ENV ACCEPT_EULA=Y


# Start the SQL server, wait 20 seconds and attach dbs
CMD start C:\\NOVA\\attach_DBs.bat ; .\start -sa_password $env:sa_password -ACCEPT_EULA $env:ACCEPT_EULA -Verbose




