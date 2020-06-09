*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Test Cases ***
Verify That Page Loaded
    Open and Load
    Verify That Page Loaded
    Close Browser
User Choose language Settings
    Open and Load
    Verify that Page Loaded
    Choose Language Settings
    Verify That Language Settings Changed
    Close Browser
User sort product by rating
    Open and Load
    Maximize Browser Window
    Sort By Rating
    Close Browser
User Choose The Cuisine
    [Documentation]  User choose thai cuisine.
    Open and Load
    Maximize Browser Window
    Choose The Cuisine
    Close Browser
User Choose Adress To Delivery
    Open and Load
    Maximize Browser Window
    Choose Adress To Delivery
    Verify That Adress To Delivery Added
    Close Browser
User Choose Adress To Delivery In The Map
    Open and Load
    Maximize Browser Window
    Choose Adress To Delivery In The Map
    Verify That Adress To Delivery Added
    Close Browser
User Search The Dish
    Open and Load
    Maximize Browser Window
    Search The Dish  burger
    Verify That Search Completed  css=.filter-status-block > a:nth-child(1)
    Close Browser
Userch Search The Restaurant
    Open and Load
    Maximize Browser Window
    Search The Restaraunt  Paul
    Verify That Search Completed  css=.filter-status-block > a:nth-child(1)
    Close browser
User Add Product To The Cart
    Open and Load
    Maximize Browser Window
    Add Product To The Cart
    Close Browser
Check The Product In The Cart
    Open and Load
    Maximize Browser Window
    Add Product To The Cart
    Check The Cart 
    Close Browser
User Confirme Order
    Open and Load
    Maximize Browser Window
    Add Product To The Cart
    Confirm Order
    Close Browser
User Delite Order From The Cart
    Open and Load
    Maximize Browser Window
    Add Product To The Cart
    Delite Order
    Close Browser
User Create Account
    Open and Load
    Maximize Browser Window
    Create Account
    Close Browser
User Sign In 
    Open and Load
    Maximize Browser Window
    Sign In
    Close Browser
User Sign Out
    Open and Load
    Maximize Browser Window
    Sign In
    Sign Out
    Close Browser
User Add Restourant To Favorite
    Open and Load
    Maximize Browser Window
    Add To Favorite
    Close Browser
    
    
    
    
    
    
    
    
    