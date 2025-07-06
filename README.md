# Example for using CMake to generate and use dll in Windows

## Steps

```powershell
cd DllProject
.\build.ps1
cp build\bin\Debug\*.dll .\ExeProject\lib
cp build\lib\Debug\*.lib .\ExeProject\lib

cd ..\ExeProject
.\build.ps1
cp .\lib\MyDll.dll .\build\Debug
.\build\Debug\MyExe.exe
```

Then, you will get the output,

```
This is a dll function from foo.c.
```
