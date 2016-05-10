echo !! Move File to Archive folder !!
move /Y "x:\SoapUIScripts\SRMPostEnrollAPI\STAGE\testoutput" "x:\SoapUIScripts\SRMPostEnrollAPI\Archive_STAGE"

echo !! Rename the testoutput file in Archive folder !!
x:
cd x:\SoapUIScripts\SRMPostEnrollAPI\Archive_STAGE
rename testoutput testoutput"%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%"

echo !! Soap UI script started !!
c:
cd c:\Program Files\SmartBear\ReadyAPI-1.6.0\bin
testrunner.bat -sSRMSFPostEnrollmentAPIs -a -f\\10.78.7.60\Selenium_Scripts\SoapUIScripts\SRMPostEnrollAPI\STAGE\testoutput -R"JUnit-Style HTML Report" -F.xml -EStage -I c:\SOAPUI_PROJECTS\WEB-APIs-soapui-project.xml
