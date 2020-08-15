*** Settings ***
Documentation  User choose the product and confirms the order.
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Test Cases ***
User sort product by rating
    Load Page And Maximize Browser Window
    Sort By Rating
    Close Browser
User choose the cuisine
    [Documentation]  User choose thai cuisine.
    Load Page And Maximize Browser Window
    Choose The Cuisine
    Close Browser
User search the dish
    Load Page And Maximize Browser Window
    Search The Dish  burger
    Verify That Search Completed  css=.filter-status-block > a:nth-child(1)
    Close Browser
Userch search the restaurant
    Load Page And Maximize Browser Window
    Search The Restaraunt  Paul
    Verify That Search Completed  css=.filter-status-block > a:nth-child(1)
    Close browser
User add product to the cart
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Close Browser
Check the product in the cart
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Check The Cart 
    Close Browser
User confirm order
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Confirm Order
    Close Browser
User delite order from the cart
    Load Page And Maximize Browser Window
    Add Product To The Cart
    Delite Order
    Close Browser
User add restourant to favorite
    Load Page And Maximize Browser Window
    Add To Favorite
    Close Browser
    
    
    
    
    
    
    
    
    