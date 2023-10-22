*** Settings ***
Resource             ../common.robot
Suite Setup           Setup Browser
#Library               pyotp
Library                QMobile

               
#Suite Teardown        End Suite


*** Variables ***









*** Test Cases ***
My Test To Login & Perform MFA
    Login
   # Open Application    http://localhost:4723/wd/hub    platformName=iOS    platformVersion=17.0.3   deviceName=shashank's iPhone    app=com.example.myapp
    
     
 


*** Test Cases ***
Generate OTP
    ${secret_key} =    Set Variable    YOUR_SECRET_KEY_HERE
    ${totp} =    pyotp.TOTP    ${secret_key}
    ${otp} =    ${totp}.now()
    Log    OTP: ${otp}


Generate OTP
    [Arguments]        ${secret}
    ${totp} =    pyotp.TOTP    ${secret}
    ${otp} =    ${totp}.now()
    [Return]    ${otp}