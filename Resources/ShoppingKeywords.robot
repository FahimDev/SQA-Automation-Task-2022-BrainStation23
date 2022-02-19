***Settings***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

***Variables***
${sort_type}    In stock


***Keywords***
Visit Casual Dresses category 
    mouse over   ${dresses_tag}
    click element   ${casual_dresses_tag}
    sleep   5s
    #Sort items by In-Stock
    #sleep   5s
    Get first item of the list

Add one item to cart from Casual Dresses Section
    Add to cart and continue

Visit T-shirt section from Navigation Bar
    click element   ${t_shirts_tag}
    sleep   5s
    #Sort items by In-Stock
    #sleep   5s
    Get first item of the list

Add a shirt from the filtered list
    Add to cart and checkout


Filter the list with blue color from T-shirt section
    click element   ${color_blue_tag}
    sleep   1s

Add to cart and continue
    click button    ${btn_add_cart}
    sleep   2s
    click element    ${btn_continue}

Add to cart and checkout
    click button    ${btn_add_cart}
    sleep   2s
    click element    ${btn_proceed_checkout}


Get first item of the list
    #scroll element into view    ${first_item}
    click element   ${first_item}
    sleep   5s
    click element   ${item_details_tag}
    sleep   5s

Sort items by In-Stock
    Select From List By Label   ${select_sort_by}   ${sort_type}



