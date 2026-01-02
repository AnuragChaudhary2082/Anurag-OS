@echo off
:: This runs your PowerShell script as an Admin automatically
powershell.exe -ExecutionPolicy Bypass -Command "Start-Process powershell -ArgumentList '-ExecutionPolicy Bypass -File ""%~dp0optimize.ps1""' -Verb RunAs"