*** Settings ***

Library      QWeb
Library      QForce
Library      String


*** Variables ***
${login_url}                https://tutorialsninja.com/demo/index.php?
${username}                
${password}                 
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
   # TypeText                 username             ${user_name} 
    #TypeText                 password             ${password}
    #ClickText                Log in    







