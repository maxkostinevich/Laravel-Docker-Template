@echo off

echo [92m..Preparing new project..[0m

set arg1=%1
IF [%1] == [] (set arg1=project-%RANDOM%)

git clone git@github.com:maxkostinevich/Laravel-Docker-Template.git %arg1%
cd %arg1%/
rm -rf .git

setlocal enableextensions disabledelayedexpansion

set "search=appname"
set "replace=%arg1%"

set "textFile=.env"

for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
	set "line=%%i"
	setlocal enabledelayedexpansion
	>>"%textFile%" echo(!line:%search%=%replace%!
	endlocal
)

cls

echo [93m%arg1% has been created[0m
echo [93mStart making something great![0m