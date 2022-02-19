***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


***Keywords***
Go to signin Page
    [Arguments]     ${key}
    click link     ${nav_sign_in_tag}
    wait until page contains  ${key}     60s  #Default time 5 Sec




Login to user portal
    [Arguments]    ${username}     ${password}    
    input text  ${txt_log_in_email}   ${username}
    input text  ${txt_password}   ${password}
    sleep   1s
    click button    ${btn_submit_login}




Logout from user portal
    click element    ${nav_sign_out_tag}