*** Settings ***
Documentation   Create account tests. Sign in/ sign out tests.
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