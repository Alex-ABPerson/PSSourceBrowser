"C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\msbuild.exe" /r /m /bl

rmdir PSSource /Q /S
git clone https://github.com/powershell/powershell PSSource
rmdir Generated /Q /S
src\HtmlGenerator\bin\Debug\net472\HtmlGenerator.exe PSSource\PowerShell.sln /out:Generated