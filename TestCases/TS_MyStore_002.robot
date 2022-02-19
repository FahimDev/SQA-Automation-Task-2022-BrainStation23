***Settings***
Documentation   Check the functionality of Sign in page including createing new account
Library     SeleniumLibrary
Library     DataDriver  ../TestData/TestData.xlsx   sheet_name=User Registration Data

Resource    ../Resources/BaseKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/RegistrationKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser


***Variables***
#Make sure your Browser Driver is at Global Variable Path
${browser}  chrome
${link}  http://automationpractice.com/index.php

${heading_signin}  Authentication

${heading_registration}  Create an account
${heading1}  Your personal information
${heading2}  Your address

***Test Cases***
TC_MyStore_Signin_02_to_04
    [Tags]    p0
    [Documentation]     For cycling multiple users registration all four Test Cases of this Scenario (TS_MyStore_002) is covered under one Automation Test Case   
    set selenium speed  1s
    [Template]  Repeating testcases from TC_MyStore_Signin
    ${title}     ${first_name}    ${last_name}  ${email}    ${password}    ${dob_day}    ${dob_month}    ${dob_year}    ${company}    ${address_location}    ${address_route}    ${city}    ${zip}    ${state}    ${country}    ${additional_info}    ${phone}    ${mobile}    ${address_alias}
    

***Keywords***
Repeating testcases from TC_MyStore_Signin
    [Arguments]     ${title}     ${first_name}    ${last_name}  ${email}    ${password}    ${dob_day}    ${dob_month}    ${dob_year}    ${company}    ${address_location}    ${address_route}    ${city}    ${zip}    ${state}    ${country}    ${additional_info}    ${phone}    ${mobile}    ${address_alias}
    
    # TC_MyStore_Signin_01 | Check if sign-in page can be visited 
    Go to signin Page     ${heading_signin}

    # TC_MyStore_Signin_02 | Check if create an account validates an email or not
    Check email validation  ${email}

    # TC_MyStore_Signin_03 | Visit main registration page
    Get redirected to main registration from    ${heading_registration}
    sleep   2s

    # TC_MyStore_Signin_04 | Fillup all the fields and Submit the form
    Data entry for user registration    ${title}     ${first_name}    ${last_name}    ${password}    ${dob_day}    ${dob_month}    ${dob_year}    ${company}    ${address_location}    ${address_route}    ${city}    ${zip}    ${state}    ${country}    ${additional_info}    ${phone}    ${mobile}    ${address_alias}   ${heading1}     ${heading2}
    sleep   2s

    Hit registration button 

    Logout from user portal
    sleep   1s


