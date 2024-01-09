*** Settings ***
Resource              ../common.robot
Suite Setup           Setup Browser
Suite Teardown        End Suite


# Setup Browser
               

*** Variables ***
${type_Text}                   xpath 







    

*** Test Cases ***

    GoTo             https://robotframework.org/robotframework/latest/libraries/BuiltIn.html
    ClickText          //input[@class\="Test" and @text\="Test"]               timeout=30
    TypeText           Pass                      ${type_Text}                  timeout=30 
    VerifyText         test                       timeout=30
    DropDown           DOB                        10                          timeout=30                    
    Picklist           DOB                        10                          timeout=30  


   
     
 


