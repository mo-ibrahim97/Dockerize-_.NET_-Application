# Dockerize-_.NET_-Application
Dockerize ASP.NET Core Application with mulitstage Dockerfile
## 
commends 
   dotnet new mvc --name hrapp --output dockerapp
   dotnet build
   docker build --tag dotnet_sample_app .
   docker container run -d -p 8070:80 --name myapp dotnet_sample_app
