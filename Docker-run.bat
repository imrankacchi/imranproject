@Echo off
Echo The batch script is now running!
docker build -t guidgenerator .
docker run --name guids -d -p 80:80 guidgenerator
docker inspect --format="{{.NetworkSettings.Networks.nat.IPAddress}}" guids
