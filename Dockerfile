FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine AS build

WORKDIR /src

COPY . .

RUN dotnet build "src/SourceIndexServer/SourceIndexServer.csproj" -c Release -o /app/build -r linux-musl-x64

COPY ["Generated/index", "/app/build/index"]
COPY ["src/SourceIndexServer/wwwroot", "/app/build/wwwroot/"]

FROM mcr.microsoft.com/dotnet/runtime:5.0-alpine

COPY --from=build /app/build .

EXPOSE 80
ENTRYPOINT ["dotnet", "Microsoft.SourceBrowser.SourceIndexServer.dll"]