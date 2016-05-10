echo !! Move File to Archive folder !!
move /Y "X:\SoapUIScripts\CVueEnrollmentAPI\STAGE\testoutput" "X:\SoapUIScripts\CVueEnrollmentAPI\Archive_STAGE"

echo !! Rename the testoutput file in Archive folder !!
x:
cd X:\SoapUIScripts\CVueEnrollmentAPI\Archive_STAGE
rename testoutput testoutput"%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%"

echo !! Soap UI script started !!
c:
cd c:\Program Files\SmartBear\ReadyAPI-1.6.0\bin
testrunner.bat -sSuite_Enrollment -a -f\\10.78.7.60\Selenium_Scripts\SoapUIScripts\CVueEnrollmentAPI\STAGE\testoutput -R"JUnit-Style HTML Report" -F.xml -EStage -I C:\SOAPUI_PROJECTS\Enrollment-soapui-projectcopy.xml
