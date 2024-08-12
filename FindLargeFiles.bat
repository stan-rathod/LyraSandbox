@echo off
set "projectDir=%~dp0"
powershell -Command "Get-ChildItem -Path '%projectDir%' -Recurse -Filter *.* | Where-Object { $_.FullName -match '\\content\\' -and $_.Length -gt 100MB } | Select-Object FullName, Length"
pause
