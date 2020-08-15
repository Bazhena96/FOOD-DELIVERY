*** Settings ***
Documentation    Close the information window if it's appears.
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Keywords ***
Close information window
    ${button cont}  Get Element Count  css=#fancybox-content
    Run Keyword If  ${BUTTONS_COUNT} >0  Close Window
Close Window
    Wait And Click  css=#fancybox-close
