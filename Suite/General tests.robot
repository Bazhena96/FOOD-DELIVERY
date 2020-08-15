*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Test Cases ***
Verify That Page Loaded
    Load Page And Maximize Browser Window
    Close Browser
User Choose language Settings
    Load Page And Maximize Browser Window
    Choose Language Settings
    Verify That Language Settings Changed
    Close Browser
User sort product by rating
    Load Page And Maximize Browser Window
    Sort By Rating
    Close Browser
User Choose The Cuisine
    [Documentation]  User choose thai cuisine.
    Load Page And Maximize Browser Window
    Choose The Cuisine
    Close Browser
User Choose Adress To Delivery
    Load Page And Maximize Browser Window
    Choose Adress To Delivery
    Verify That Adress To Delivery Added
    Close Browser
User Choose Adress To Delivery In The Map
    Load Page And Maximize Browser Window
    Choose Adress To Delivery In The Map
    Verify That Adress To Delivery Added
    Close Browser
User Search The Dish
    Load Page And Maximize Browser Window
    Search The Dish  burger
    Verify That Search Completed  css=.filter-status-block > a:nth-child(1)
    Close Browser
Userch Search The Restaurant
    Load Page And Maximize Browser Window
    Search The Restaraunt  Paul
    Verify That Search Completed  css=.filter-status-block > a:nth-child(1)
    Close browser
User Add Product To The Cart
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Close Browser
Check The Product In The Cart
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Check The Cart 
    Close Browser
User Confirme Order
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Confirme Order
    Close Browser
User Delite Order From The Cart
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Delite Order
    Close Browser
User Create Account
    Load Page And Maximize Browser Window
    Create Account
    Close Browser
User Sign In 
    Load Page And Maximize Browser Window
    Sign In
    Close Browser
User Sign Out
    Load Page And Maximize Browser Window
    Sign In
    Sign Out
    Close Browser
User Add Restourant To Favorite
    Load Page And Maximize Browser Window
    Add To Favorite
    Close Browser
    
    
    
    
    
    
    
    
    