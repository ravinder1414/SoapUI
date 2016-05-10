echo !! Move File to Archive folder !!
move /Y "x:\SoapUIScripts\SRMPreEnroll\STAGE\testoutput" "x:\SoapUIScripts\SRMPreEnroll\Archive_STAGE"

echo !! Rename the testoutput file in Archive folder !!
x:
cd x:\SoapUIScripts\SRMPreEnroll\Archive_STAGE
rename testoutput testoutput"%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%"

echo !! Soap UI script started !!
c:
cd c:\Program Files\SmartBear\ReadyAPI-1.6.0\bin
testrunner.bat -sSuite_SRMAPIs -a -f\\10.78.7.60\Selenium_Scripts\SoapUIScripts\SRMPreEnroll\STAGE\testoutput -R"JUnit-Style HTML Report" -F.xml -EStage -I c:\SOAPUI_PROJECTS\SRM-PreEnroll-soapui-project.xml
