@echo off
echo "create vbs auto startup script"
set cmd=%~dp0jre\bin\java -jar %~dp0webdav-aliyundriver-2.4.0.jar  --aliyundrive.refresh-token="%token%" 
echo the complete command is %cmd%
(
echo set ws=WScript.CreateObject("WScript.Shell"^)
echo ws.Run "%~dp0start.bat /start",0
)>%~dp0aliyundriver.vbs
echo %ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp| clip
echo copy the "%~dp0aliyundriver.vbs" to %ProgramData%Microsoft\Windows\Start Menu\Programs\StartUp
echo the "%ProgramData%Microsoft\Windows\Start Menu\Programs\StartUp" is in clipboard 
pause