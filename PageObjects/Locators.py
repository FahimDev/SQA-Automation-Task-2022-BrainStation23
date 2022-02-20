
#Navigation Bar
nav_sign_in_tag = 'xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a'
nav_sign_out_tag = 'xpath://*[@id="header"]/div[2]/div/div/nav/div[2]/a'


#Top Menu
dresses_tag = 'xpath://*[@id="block_top_menu"]/ul/li[2]/a'
casual_dresses_tag = 'xpath://*[@id="block_top_menu"]/ul/li[2]/ul/li[1]/a'
t_shirts_tag = 'xpath://*[@id="block_top_menu"]/ul/li[3]/a'


#Signin Page
lbl_sign_up_email = 'xpath://*[@id="create-account_form"]/div/div[2]/label'
txt_sign_up_email = 'xpath://*[@id="email_create"]'
btn_submit_create = 'id:SubmitCreate'

txt_log_in_email = 'id:email'
txt_password = 'id:passwd'
btn_submit_login = 'id:SubmitLogin'


#Customer Registration From
radio_gender_mr = 'id:id_gender1'
radio_gender_mrs = 'id:id_gender2'

txt_first_name = 'id:customer_firstname'
txt_last_name = 'id:customer_lastname'

txt_password = 'id:passwd'

select_dob_day = 'id:days'
select_dob_month = 'id:months'
select_dob_year = 'id:years'

txt_first_name_addr = 'id:firstname'
txt_last_name_addr = 'id:lastname'

txt_company = 'id:company'

txt_address = 'id:address1'
txt_address_route = 'id:address2'
txt_city = 'id:city'
txt_postcode = 'id:postcode'

select_state = 'id:id_state'
select_country = 'id:id_country'

txtarea_extra_info = 'id:other'

txt_phone = 'id:phone'
txt_mobile = 'id:phone_mobile'

txt_alias  = 'id:alias'

btn_submit_registration = 'id:submitAccount'


#Shopping
select_sort_by = 'id:selectProductSort'
in_stock = 'xpath://*[@id="center_column"]/ul/li/div/div[2]/span/span'
first_item = 'xpath://*[@id="center_column"]/ul/li'
item_details_tag = 'xpath://*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[2]'
btn_add_cart = 'xpath://*[@id="add_to_cart"]/button'#ProductDetailPage
btn_continue = 'xpath://*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span' #popup
btn_proceed_checkout = 'xpath://*[@id="layer_cart"]/div[1]/div[2]/div[4]/a' #popup
color_blue_tag = 'name:Blue' #ProductDetailPage


#Checkout to Billing Stages
#Stage 1 : Summary
btn_checkout_to_address = 'xpath://*[@id="center_column"]/p[2]/a[1]'
#Stage 2 : Address
btn_checkout_to_shipping = 'xpath://*[@id="center_column"]/form/p/button'
#Stage 3 : Shipping
check_terms = 'id:cgv'
btn_checkout_to_payment = 'xpath://*[@id="form"]/p/button'
#Stage 4 : Payment
btn_by_check = 'xpath://*[@id="HOOK_PAYMENT"]/div[2]/div/p/a'