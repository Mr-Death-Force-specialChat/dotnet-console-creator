@echo off
echo Project dir -^> %1
mkdir %1
cd %1

echo Creating project
dotnet new console

echo Copying build script
copy ..\build_script.bat .\build.bat

echo Source dir -^> %1\src
mkdir src

echo Output dir -^> %1\binary
mkdir binary

echo Moving Program.cs to src\Program.cs
move Program.cs src\Program.cs

echo Reseting Program.cs
copy ..\Program_cs_script.cs src\Program.cs

cd src

echo Done.
