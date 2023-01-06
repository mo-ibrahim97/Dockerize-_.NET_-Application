#stage_1 
FROM  mcr.microsoft.com/dotnet/sdk:6.0 as build
WORKDIR /source
COPY *.csproj .
RUN  dotnet restore

# publish of stage_1
COPY . .
RUN dotnet publish -c release -o /app

# stage_2
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
#use output of stage one and copy of all files in new app dir
COPY --from=build /app .

ENTRYPOINT [ "dotnet", "hrapp.dll" ]


