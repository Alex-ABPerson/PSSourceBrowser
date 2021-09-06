dotnet build src\SourceIndexServer\SourceIndexServer.csproj --configuration Release
xcopy "src\SourceIndexServer\bin\Release\netcoreapp3.1" "Generated\" /y /s
xcopy "src\SourceIndexServer\wwwroot" "Generated\wwwroot\" /y /s