*** Settings ***

Library      QWeb
Library      QForce
Library      String


*** Variables ***
${login_url}                https://d5h000008kjcqeaq-dev-ed.develop.my.salesforce.com/?
${user_name}                shashanklabs90@gmail.com
${password}                 Murli0007#
${Browser}                  chrome


*** Keywords ***
Setup Browser
    Set Library Search Order      QForce                QWeb
    Open Browser                  about:Blank           ${Browser}
    SetConfig                     DefaultTimeout        20s
    Evaluate                      random.seed()         random

End Suite
  Close All Browsers


Login 
    [Documentation]     User should be login in SF Org
    GoTo                     ${login_url}  
    TypeText                 username             ${user_name} 
    TypeText                 password             ${password}
    ClickText                Log in    







