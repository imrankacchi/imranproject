# imranproject
Unzip the zip file and place it in the same directory as the Dockerfile 

Install SQL Server Management Studio

pull this: microsoft/mssql-server-windows

Create Container for SQLServer
docker run -d -p 1433:1433 -e sa_password=<SA_PASSWORD> -e ACCEPT_EULA=Y microsoft/mssql-server-windows

docker ps

Get IP
docker inspect --format="{{.NetworkSettings.Networks.nat.IPAddress}}" containerName

Use IP and login with SQL server Management
Create DataBase and Table
"create table GuidGeneratorTable (GuidId int Not null primary key Identity,GuidName varchar(max),GuidDept varchar(max),GuidSummary varchar(max))"

Run the .bat in the same directory as everything else and you should end up with an image called "guidgenerator" 
and a running container called "guids"

To Know running container IP 
docker inspect --format="{{.NetworkSettings.Networks.nat.IPAddress}}" guids  

Run on Browser
IPAddress/api/values/

