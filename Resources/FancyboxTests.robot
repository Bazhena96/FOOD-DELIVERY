*** Settings ***
Documentation    Close the information window if it's appears.
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
*** Keywords ***
Close information window
    ${button count}  Get Element Count  css=#fancybox-content
    Run Keyword If  ${button count } >0  Close Window
Close Window
    Wait And Click  css=#fancybox-close
