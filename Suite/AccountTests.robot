*** Settings ***
Documentation   Create account tests. Sign in/ sign out tests.
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Test Cases ***
Verify that page loaded
    Load Page And Maximize Browser Window
    Close Browser
User choose the language settings
    Load Page And Maximize Browser Window
    Choose The Language Settings
    Verify That Language Settings Changed
    Close Browser
User create account
    Load Page And Maximize Browser Window
    Create Account  Bazhena  Беларусь, Минск, проспект Независимости, 58  +375255433153  bazhenkak@gmail.com  123456789
    Close Browser
User sign in
    Load Page And Maximize Browser Window
    Sign In  bazhenkak@gmail.com  123456789
    Close Browser
User sign out
    Load Page And Maximize Browser Window
    Sign In   bazhenkak@gmail.com  123456789
    Sign Out
    Close Browser
User choose adress to delivery
    Load Page And Maximize Browser Window
    Choose Adress To Delivery  Беларусь, Минск, проспект Независимости, 58
    Verify That Adress To Delivery Added
    Close Browser
User choose adress to delivery in the map
    Load Page And Maximize Browser Window
    Choose Adress To Delivery In The Map
    Verify That Adress To Delivery Added
    Close Browser