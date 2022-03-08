@echo off
dotnet publish -a x64 --nologo --self-contained --configuration Release -p:PublishSingleFile=true -o binary -p:SourceDir=src\*.cs
cd binary
del *.pdb
cd ..