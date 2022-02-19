***Settings***
Documentation   Check the new user's account by logging in and shopping with that account
Library     SeleniumLibrary
Library     DataDriver  ../TestData/TestData.xlsx   sheet_name=Login Test Credentials

Resource    ../Resources/BaseKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/ShoppingKeywords.robot
Resource    ../Resources/CheckoutKeywords.robot

Suite Setup     Open and visit website  ${link}  ${browser}
Suite Teardown  Close Browser


***Variables***
#Make sure your Browser Driver is at Global Variable Path
${browser}  chrome
${link}  http://automationpractice.com/index.php

${heading}  Authentication
${login_heading}  My account


***Test Cases***
TC_MyStore_01_to_08
    [Documentation]     To cycle TS_MyStore_003 with multiple users all the Test Cases are done under one Test Case for Automation
    [Template]  Repeating testcases from TS_MyStore_003
    ${username}  ${password}
    

***Keywords***
Repeating testcases from TS_MyStore_003
    [Arguments]     ${username}  ${password}

    set selenium speed  1s
    # TC_MyStore_Login_New_User_01
    Go to signin Page  ${heading}
    Login to user portal  ${username}  ${password}

    # TC_MyStore_Goto_Casual_Dresses_02
    Visit Casual Dresses category 

    # TC_MyStore_Add_Cart_Casual_Dresses_03
    Add one item to cart from Casual Dresses Section

    # TC_MyStore_Goto_T_Shirt_04
    Visit T-shirt section from Navigation Bar

    # TC_MyStore_Filter_Blue_Color_05
    Filter the list with blue color from T-shirt section

    # TC_MyStore_Add_Cart_Blue_Shirt_06
    Add a shirt from the filtered list

    # TC_MyStore_Checkout_07
    Checkout with two different products and select payment process
    sleep   1s

    # TC_MyStore_Logout_08
    Logout from user portal
    sleep   1s



