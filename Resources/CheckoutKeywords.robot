***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


***Variables***
${checkout_summary_header}   Shopping-cart summary
${checkout_address_header}   Addresses
${checkout_shipping_header}   Shipping
${checkout_payment_header}   Please choose your payment method
${checkout_final_header}    Order summary

***Keywords***
Checkout with two different products and select payment process
    Checkout Summary
    Checkout Address
    Checkout Shipping
    Checkout Payment
    wait until page contains     ${checkout_final_header}
    sleep   5s




Checkout Summary
    wait until page contains     ${checkout_summary_header}
    click element    ${btn_checkout_to_address}




Checkout Address
    wait until page contains     ${checkout_address_header}
    click button    ${btn_checkout_to_shipping}




Checkout Shipping
    wait until page contains     ${checkout_shipping_header}
    click element   ${check_terms}
    click button    ${btn_checkout_to_payment}




Checkout Payment
    wait until page contains     ${checkout_payment_header}
    click element    ${btn_by_check}