FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 5000

# Copy artifact từ pipeline publish
COPY . .

ENTRYPOINT ["dotnet", "app/demo-redis-cache.dll"]
