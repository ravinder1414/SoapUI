echo !! Move File to Archive folder !!
move /Y "x:\SoapUIScripts\BlueprintAPI\TEST\testoutput" "x:\SoapUIScripts\BlueprintAPI\Archive_TEST"

echo !! Rename the testoutput file in Archive folder !!
x:
cd x:\SoapUIScripts\BlueprintAPI\Archive_TEST
rename testoutput testoutput"%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%"

echo !! Soap UI script started !!
c:
cd c:\Program Files\SmartBear\ReadyAPI-1.6.0\bin
testrunner.bat -sPROD_TestSuite_BluePrintAPIs -a -f\\10.78.7.60\Selenium_Scripts\SoapUIScripts\BlueprintAPI\TEST\testoutput -R"JUnit-Style HTML Report" -F.xml -ETest -I "c:\SOAPUI_PROJECTS\Blue PrintAPIs-soapui-project.xml"