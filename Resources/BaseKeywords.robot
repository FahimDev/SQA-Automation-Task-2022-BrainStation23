***Settings***
Library     SeleniumLibrary
Library     OperatingSystem
Variables   ../PageObjects/Locators.py


***Keywords***
Open and visit website
    [Arguments]     ${url}      ${driver}
    Open Browser    ${url}      ${driver} 
    Maximize Browser Window

Close Browser
    Close All Browsers