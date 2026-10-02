@echo off
setlocal enabledelayedexpansion

set ROOT=%~dp0..
pushd "%ROOT%" >nul

if not exist result mkdir result

set "TYPST=typst"
where typst >nul 2>nul || set "TYPST=%LOCALAPPDATA%\Programs\Typst\typst.exe"

call :build "java-backend" "java"
call :build "python-backend" "python"
call :build "BSA" "bsa"

popd >nul
endlocal
exit /b 0

:build
setlocal
set "DIR=%~1"
set "NAME=%~2"
pushd "%DIR%" >nul
for %%f in (*.typ) do (
  set "SUF=%%~nf"
  if "!SUF!"=="resume" set "SUF="
  if defined SUF set "SUF=!SUF:resume_=!"
  if defined SUF set "SUF=_!SUF!"
  "%TYPST%" compile --root ".." "%%f" "..\result\resume_!NAME!!SUF!.pdf"
  if errorlevel 1 (
    echo [FAIL] %DIR%\%%f
  ) else (
    echo [OK]   %DIR%\%%f -^> result\resume_!NAME!!SUF!.pdf
  )
)
popd >nul
endlocal
exit /b 0