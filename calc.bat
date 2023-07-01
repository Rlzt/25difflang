@echo off
setlocal

:menu
cls
echo Batch Calculator
echo ---------------
echo.
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo.
set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" (
    call :addition
) else if "%choice%"=="2" (
    call :subtraction
) else if "%choice%"=="3" (
    call :multiplication
) else if "%choice%"=="4" (
    call :division
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto :menu
)

exit /b

:addition
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
set /a result=num1+num2
echo Result: %result%
pause
exit /b

:subtraction
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
set /a result=num1-num2
echo Result: %result%
pause
exit /b

:multiplication
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
set /a result=num1*num2
echo Result: %result%
pause
exit /b

:division
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
set /a result=num1/num2
echo Result: %result%
pause
exit /b
