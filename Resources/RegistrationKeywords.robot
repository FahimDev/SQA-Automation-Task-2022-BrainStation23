***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


***Variables***
#Gender Mr./Mrs.
${match}   Mr.



***Keywords***
Check email validation
    [Arguments]    ${username}
    input text  ${txt_sign_up_email}   ${username}
    click element   ${lbl_sign_up_email}




Get redirected to main registration from
    [Arguments]     ${heading}
    click button     ${btn_submit_create}
    wait until page contains  ${heading}  #Default time 5 Sec




Data entry for user registration
    [Arguments]     ${gender}     ${first_name}    ${last_name}    ${password}    ${dob_day}    ${dob_month}    ${dob_year}    ${company}    ${addr1}    ${addr2}    ${city}    ${postcode}    ${state}    ${country}    ${extra}    ${phone}    ${mobile}    ${alias}  ${heading1}     ${heading2}
    wait until page contains     ${heading1}
    wait until page contains     ${heading2}

    IF  '${gender}'=='${match}'   
        click element   ${radio_gender_mr}
    ELSE   
        click element   ${radio_gender_mrs}
    END

    input text  ${txt_first_name}     ${first_name}
    input text  ${txt_last_name}     ${last_name}
    input text  ${txt_password}     ${password}

    Select From List By Value    ${select_dob_day}   ${dob_day}
    Select From List By Value    ${select_dob_month}   ${dob_month}
    Select From List By Value    ${select_dob_year}   ${dob_year}

    input text  ${txt_company}     ${company}

    input text  ${txt_first_name_addr}     ${first_name}
    input text  ${txt_last_name_addr}     ${last_name}

    input text  ${txt_address}     ${addr1}
    input text  ${txt_address_route}     ${addr2}
    input text  ${txt_city}     ${city}
    input text  ${txt_postcode}     ${postcode}

    Select From List By Label   ${select_state}   ${state}
    Select From List By Label   ${select_country}   ${country}

    input text  ${txtarea_extra_info}     ${extra}
    input text  ${txt_phone}     ${phone}
    input text  ${txt_mobile}     ${mobile}
    input text  ${txt_alias}     ${alias}




Hit registration button 
    click button    ${btn_submit_registration}