@echo OFF

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

if %OS%==32BIT (
    rem echo Win32
	rem echo -----
	rem echo racine = %~dp0
    rem echo arguments = %*
    rem echo arg0 = %0
	rem echo arg1 = %1
    %~dp0\win32\ds_LimaDetector.exe %*
) 

if %OS%==64BIT (
    rem echo Win64
	rem echo -----
	rem echo path = %~dp0
	rem echo arguments = %*
    rem echo arg0 = %0
	rem echo arg1 = %1
	rem we have Windows Seven 64 bits, but we provide only win32 binaries until today 
    %~dp0\win32\ds_LimaDetector.exe %*
)