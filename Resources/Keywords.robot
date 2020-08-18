*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Open and Load
    Open Browser  https://www.menu.by  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
    Click Element  css=a.introjs-button:nth-child(1)
    Wait And Click  css=body > div.req_notif_perm_main_block > div > div.fr > div.block_btn > button.block_btn_cancel.fr
Verify That Page Loaded
    Page Should Contain  Быстрая доставка
Load Page And Maximize Browser Window
    Open and Load
    Verify That Page Loaded
    Maximize Browser Window
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Choose The Language Settings
    Wait And Click  css=.new_header_top_block_lang > ul:nth-child(1) > li:nth-child(3) > a:nth-child(1)
Verify That Language Settings Changed
    Page Should Contain  Fast delivery
Sort By Rating
    Wait and Click  css=#sortingItems > label:nth-child(8) > a:nth-child(2)
Choose The Cuisine
    Wait And Click   css=div.left-column:nth-child(2) > div:nth-child(3) > label:nth-child(72) > a:nth-child(2)
Choose Adress To Delivery
    [Arguments]  ${user address}
    Wait Until Page Contains Element  css=#new_header_address_search
    Input Text  css=#new_header_address_search  ${user address}
    Click Element  css=#new_address_form_delivery
Choose Adress To Delivery In The Map
    [Arguments]  ${user address}
    Wait Until Page Contains Element  css=#new_header_address_search
    Wait And Click  css=#open_new_popup_map
    Wait Until Page Contains Element  css=#new_header_address_search_under_map
    Input Text  css=#new_header_address_search_under_map  ${user address}
    Wait And Click  css=#map_set_address_button
Verify That Adress To Delivery Added
    Wait And Click  css=.first
Search The Dish
    [Arguments]  ${dish}
    Wait And Click  css=.left_block_seach_form_input
    Input Text  css=.left_block_seach_form_input  ${dish}
    Wait And Click  css=.left_block_seach_form_input_submit
Search The Restaraunt
    [Arguments]  ${restaraunt}
    Wait And Click  css=.left_block_seach_form_input
    Input Text  css=.left_block_seach_form_input  ${restaraunt}
    Wait And Click  css=.left_block_seach_form_input_submit
Verify That Search Completed
    [Arguments]  ${search term}
    Wait And Click  ${search term}
User Choose The Restaraunt
    [Documentation]  Restaraunt: Pizza Lisitca
    Wait And Click  css=div.item:nth-child(1) > div:nth-child(3) > a:nth-child(1)
User Choose the Product
    [Documentation]  Product: pizza
    Scroll Element Into View  css=#highligh_115974 > div:nth-child(3) > a:nth-child(1) > img:nth-child(1)
    Wait And Click  css=#highligh_115974 > div:nth-child(3) > a:nth-child(1) > img:nth-child(1)
User Confirm Adress To Delivery
    [Arguments]  ${user address}
    Wait And Click  css=#new_header_address_search_under_map
    Input Text  css=#new_header_address_search_under_map  ${user address}
    Wait And Click  css=#map_set_address_button
User Choose The Additinal Items
    [Documentation]  Additional items: barbecue souce,teriyaki souce.
    Wait And Click  css=label.option_row:nth-child(2)
    Wait And Click  css=label.option_row:nth-child(2)
    Wait And Click  css=label.option_row:nth-child(6)
User Choose Size Of The Portion
    [Documentation]  Size:32
    Wait And Click  css=label.option_row:nth-child(11)
User Choose Number Of The Portion
    [Documentation]  Number of portion:2
    Wait Until Page Contains Element  css=.options_count
    Wait And Click  css=.ui-icon-triangle-1-n
User Add Product To The Cart
    Wait And Click  css=#opts-save
Check The Cart 
    Scroll Element Into View  css=#total-products-count
    Wait And Click  css=#total-products-count
    Wait And Click  css=.rest-title
Add Product To The Cart
    User Choose The Restaraunt
    User Choose the Product
    User Confirm Adress To Delivery  Беларусь, Минск, проспект Независимости, 58
    User Choose The Restaraunt
    User Choose the Product
    User Choose The Additinal Items
    User Choose Size Of The Portion
    User Choose Number Of The Portion
    User Add Product To The Cart
Confirm Order
    Wait And Click  css=.order
    Wait And Click  css=#use_social_login
Delite Order
    Wait And Click  css=#total-products-count
    Wait And Click  css=#closeBasket
    Wait Until Page Contains  Your cart is empty
Create Account
    [Arguments]  ${user name}  ${user address}  ${phone number}  ${user email}  ${user password}
    Wait And Click  css=.new_header_top_block_reg_login
    Wait And Click  css=.__registration
    Wait Until Page Contains Element  css=#fullname
    Input Text  css=#fullname  ${user name}
    Input Text  css=#address  ${user address}
    Input Text  css=#phone  ${phone number}
    Input Text  css=#email  ${user email}
    Input Text  css=#password  ${user password}
    Input Text  css=#conf_password  ${user password}
    Wait And Click  css=#submitOrder
Sign In
    [Arguments]  ${user email}  ${user password}
    Wait And Click  css=.new_header_top_block_reg_login
    Wait Until Page Contains Element  css=#user_email
    Input Text  css=#user_email  ${user email}
    Wait Until Page Contains Element  css=#user_password
    Input Text  css=#user_password  ${user password}
    Wait And Click  css=#submit
Sign Out
    Wait And Click  css=.new_header_islogined
    Wait And Click  css=.new_header_profile_link_logout
Add To Favorite
    Wait And Click  css=div.item:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > form:nth-child(1) > input:nth-child(3)

    