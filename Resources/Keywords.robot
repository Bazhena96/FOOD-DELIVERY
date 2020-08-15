*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot
*** Keywords ***
Open and Load
    Open Browser  https://www.menu.by  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
    Click ELement  css=a.introjs-button:nth-child(1)
Verify That Page Loaded
    Page Should Contain  Быстрая доставка
Load Page And Maximize Browser Window
    Open and Load
    Verify That Page Loaded
    Load Page And Maximize Browser Window
Choose Language Settings
    Click Element  css=.new_header_top_block_lang > ul:nth-child(1) > li:nth-child(3) > a:nth-child(1)
Verify That Language Settings Changed
    Page Should Contain  Fast delivery
Sort By Rating
    Wait Until page Contains Element  css=#sortingItems > label:nth-child(8) > a:nth-child(2)
    Click Element  css=#sortingItems > label:nth-child(8) > a:nth-child(2)
Choose The Cuisine
    Wait Until Page Contains Element  css=div.left-column:nth-child(2) > div:nth-child(3) > label:nth-child(72) > a:nth-child(2)
    Click Element  css=div.left-column:nth-child(2) > div:nth-child(3) > label:nth-child(72) > a:nth-child(2)
Choose Adress To Delivery
    Wait Until Page Contains Element  css=#new_header_address_search
    Input Text  css=#new_header_address_search  ${user address}
    Click Element  css=#new_address_form_delivery
Choose Adress To Delivery In The Map
    Wait Until Page Contains Element  css=#new_header_address_search
    Click Element  css=#open_new_popup_map
    Wait Until Page Contains Element  css=#new_header_address_search_under_map
    Input Text  css=#new_header_address_search_under_map  ${user address}
    Click Element  css=#map_set_address_button
Verify That Adress To Delivery Added
    Wait Until Page Contains Element  css=.first
    Page Should Contain Element  css=.first
Search The Dish
    [Arguments]  ${dish}
    Wait Until Page Contains Element  css=.left_block_seach_form_input
    Click element  css=.left_block_seach_form_input
    Input Text  css=.left_block_seach_form_input  ${dish}
    Click Element  css=.left_block_seach_form_input_submit
Search The Restaraunt
    [Arguments]  ${restaraunt}
    Wait Until Page Contains Element  css=.left_block_seach_form_input
    Click element  css=.left_block_seach_form_input
    Input Text  css=.left_block_seach_form_input  ${restaraunt}
    Click Element  css=.left_block_seach_form_input_submit
Verify That Search Completed
    [Arguments]  ${search term}
    Wait Until Page Contains Element  ${search term}
    Page Should Contain Element  ${search term}
User Choose The Restaraunt
    [Documentation]  Restaraunt: Pizza Lisitca
    Wait Until page Contains Element  css=div.item:nth-child(1) > div:nth-child(3) > a:nth-child(1)
    Click Element  css=div.item:nth-child(1) > div:nth-child(3) > a:nth-child(1)
User Choose the Product
    [Documentation]  Product: pizza
    Scroll Element Into View  css=#highligh_115974 > div:nth-child(3) > a:nth-child(1) > img:nth-child(1)
    Wait Until Page Contains Element  css=#highligh_115974 > div:nth-child(3) > a:nth-child(1) > img:nth-child(1)
    Click Element  css=#highligh_115974 > div:nth-child(3) > a:nth-child(1) > img:nth-child(1)
User Confirm Adress To Delivery
    Wait Until Page Contains Element  css=#new_header_address_search_under_map
    Click Element  css=#new_header_address_search_under_map
    Input Text  css=#new_header_address_search_under_map  ${user address}
    Click Element  css=#map_set_address_button
User Choose The Additinal Items
    [Documentation]  Additional items: barbecue souce,teriyaki souce.
    Wait Until Page Contains Element  css=label.option_row:nth-child(2)
    Click element  css=label.option_row:nth-child(2)
    Click Element  css=label.option_row:nth-child(6)
User Choose Size Of The Portion
    [Documentation]  Size:32
    Wait Until Page Contains Element  css=label.option_row:nth-child(11)
    Click Element  css=label.option_row:nth-child(11)
User Choose Number Of Portion
    [Documentation]  Number of portion:2
    Wait Until Page Contains Element  css=.options_count
    Click Element  css=.ui-icon-triangle-1-n
User Add Product To The Cart
    Wait Until Page Contains Element  css=#opts-save
    Click Element  css=#opts-save
Check The Cart 
    Scroll Element Into View  css=#total-products-count
    Wait Until Page Contains Element  css=#total-products-count
    Click Element  css=#total-products-count
    Wait Until Page Contains Element  css=.rest-title
    Page Should Contain Element  css=.rest-title
Add Product To The Cart
    User Choose The Restaraunt
    User Choose the Product
    User Confirm Adress To Delivery
    User Choose The Restaraunt
    User Choose the Product
    User Choose The Additinal Items
    User Choose Size Of The Portion
    User Choose Number Of Portion
    User Add Product To The Cart
Confirm Order
    Wait Until Page Contains Element  css=.order
    Click Element  css=.order
    Wait Until Page Contains Element  css=#use_social_login
    Page Should Contain Element  css=#use_social_login
Delite Order
    Wait Until Page Contains Element  css=#total-products-count
    Click Element  css=#total-products-count
    Wait Until Page Contains Element  css=#closeBasket
    Click Element  css=#closeBasket
    Wait Until Page Contains  Your cart is empty
    Page Should Contain  Your cart is empty
Create Account
    Wait Until page Contains  css=.new_header_top_block_reg_login
    Click Element  css=.new_header_top_block_reg_login
    Wait Until Page Contains Element  css=.__registration
    Click Element  css=.__registration
    Wait Until Page Contains Element  css=#fullname
    Input Text  css=#fullname  ${user name}
    Input Text  css=#address  ${user address}
    Input Text  css=#phone  ${phone number}
    Input Text  css=#email  ${user email}
    Input Text  css=#password  ${user password}
    Input Text  css=#conf_password  ${user password}
    Click Element  css=#submitOrder
Sign In
    Wait Until Page Contains Element  css=.new_header_islogined
    Click Element  css=.new_header_islogined
    Wait Until Page Contains Element  css=#user_email
    Input Text  css=#user_email  ${user email}
    Wait Until Page Contains Element  css=#user_password
    Input Text  css=#user_password  ${user password}
    Wait Until Page Contains Element  css=#submit
    Click Element  css=#submit
Sign Out
    Wait UNtil Page Contains Element  css=.new_header_islogined
    Click Element  css=.new_header_islogined
    Wait Until Page Contains Element  css=.new_header_profile_link_logout
    Click Element  css=.new_header_profile_link_logout
Add To Favorite
    Wait Until Page Contains Element  css=div.item:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > form:nth-child(1) > input:nth-child(3)
    Click Element  css=div.item:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > form:nth-child(1) > input:nth-child(3)
    
    