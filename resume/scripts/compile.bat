@echo off
setlocal enabledelayedexpansion
set ROOT=%~dp0..
pushd "%ROOT%" >nul

if not exist result mkdir result

set TYPST=typst
where typst >nul 2>nul || set "TYPST=%LOCALAPPDATA%\Programs\Typst\typst.exe"

for %%d in (java python) do (
  pushd "%%d-backend" >nul
  for %%f in (*.typ) do (
    set "SUF=%%~nf"
    if "!SUF!"=="resume" set "SUF="
    if defined SUF set "SUF=!SUF:resume_=!"
    if defined SUF set "SUF=_!SUF!"
    "%TYPST%" compile --root ".." "%%f" "..\result\resume_%%d!SUF!.pdf"
    if errorlevel 1 (
      echo [FAIL] %%d-backend\%%f
    ) else (
      echo [OK]   %%d-backend\%%f -^> result\resume_%%d!SUF!.pdf
    )
  )
  popd >nul
)

popd >nul
endlocal