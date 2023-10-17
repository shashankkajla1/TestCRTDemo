*** Settings ***
Resource             ../common.robot
Suite Setup           Setup Browser
               
#Suite Teardown        End Suite


*** Variables ***









*** Test Cases ***
My Test To Login & Perform MFA
    Login
     IF    ${login_status}
        Run Keyword And Return Status    Should Not Be Equal    ${None}    ${secret}
        IF    ${MFA_needed}
            ${otp} =    Generate OTP    ${secret}
            Type Secret    Verification Code    ${otp}
            Click Text    Verify
        END
    END


Generate OTP
    [Arguments]        ${secret}
    ${totp} =    pyotp.TOTP    ${secret}
    ${otp} =    ${totp}.now()
    [Return]    ${otp}