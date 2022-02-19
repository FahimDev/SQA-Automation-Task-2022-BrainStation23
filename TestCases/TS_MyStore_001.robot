***Settings***
Documentation   Check the functionality of landing page
Library     SeleniumLibrary
Resource    ../Resources/BaseKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser


***Variables***
#Make sure your Browser Driver is at Global Variable Path
${browser}  chrome
${link}  http://automationpractice.com/index.php


***Test Cases***
TC_MyStore_Landing_Page_01
    [Documentation]     Check if landing page can be visited
    [Tags]  p0
    Maximize Browser Window
    sleep   3s