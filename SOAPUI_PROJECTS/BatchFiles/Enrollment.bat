echo !! Move File to Archive folder !!
move /Y "X:\SoapUIScripts\CVueEnrollmentAPI\DEV\testoutput" "X:\SoapUIScripts\CVueEnrollmentAPI\Archive_ DEV"

echo !! Rename the testoutput file in Archive folder !!
x:
cd X:\SoapUIScripts\CVueEnrollmentAPI\Archive_ DEV
rename testoutput testoutput"%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%"

echo !! Soap UI script started !!
c:
cd C:\Program Files\SmartBear\SoapUI-Pro-5.1.2\bin
testrunner.bat -sSuite_Enrollment -a -f\\10.78.7.60\Selenium_Scripts\SoapUIScripts\CVueEnrollmentAPI\DEV\testoutput -R"JUnit-Style HTML Report" -F.xml -EDEV -I C:\SOAPUI_PROJECTS\Enrollment-soapui-projectcopy.xml
