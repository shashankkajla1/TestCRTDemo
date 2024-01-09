*** Settings ***
Resource              ../common.robot
Suite Setup           Setup Browser
Suite Teardown        End Suite


# Setup Browser
               

*** Variables ***
${typeText}   xpath 







    

*** Test Cases ***
My Test To Login & Perform MFA
    GoTo             https://robotframework.org/robotframework/latest/libraries/BuiltIn.html
    ClickText          //input[@class\="Test" and @text\="Test"]               timeout=30
    TypeText           Password                   ${typeText}                  timeout=30
    VerifyText         test                       timeout=30
    DropDown           DOB                        10                          timeout=30                    
    Picklist           DOB                        10                          timeout=30  


   
     
 


