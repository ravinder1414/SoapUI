echo !! Move File to Archive folder !!
move /Y "x:\SoapUIScripts\SRMPostEnrollAPI\DEV\testoutput" "x:\SoapUIScripts\SRMPostEnrollAPI\Archive_DEV"

echo !! Rename the testoutput file in Archive folder !!
x:
cd x:\SoapUIScripts\SRMPostEnrollAPI\Archive_DEV
rename testoutput testoutput"%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%"

echo !! Soap UI script started !!
c:
cd c:\Program Files\SmartBear\ReadyAPI-1.6.0\bin
testrunner.bat -sSRMSFPostEnrollmentAPIs -a -f\\10.78.7.60\Selenium_Scripts\SoapUIScripts\SRMPostEnrollAPI\DEV\testoutput -R"JUnit-Style HTML Report" -F.xml -EDEV -I c:\SOAPUI_PROJECTS\WEB-APIs-soapui-project.xml
