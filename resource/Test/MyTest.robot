*** Settings ***
Resource          ../common.robot
Suite Setup       Setup Browser
Suite Teardown    End Suite


# Setup Browser


*** Variables ***
${type_Text}      xpath









*** Test Cases ***
This is Jira-120
    GoTo          https://robotframework.org/robotframework/latest/libraries/BuiltIn.html
    ClickText     //input[@class\="Test" and @text\="Test"]                 timeout=30
    TypeText      Pass                        ${type_Text}    timeout=30
    VerifyText    test                        timeout=30
    DropDown      DOB                         10              timeout=30
    Picklist      DOB                         10              timeout=30
    ScrollText       Text/xpath                               timeout=30
    VerifyText       Text/xpath 

    ${varValue}            GET TEXT      //input[@class\="Test" and @text\="Test"]     # MyName 
    ${var}                 MyName
    
  IF     '${varValue}' ==  '${var}' 
      
      Sleep     20 
      ClicText      TextClickTest  timeout=30

  END

    ${varValue}          GET Element Count      //input[@class\="Test" and @text\="Test"]     # MyName 
    ${var}                 MyName

   IF    ${varValue}  > 0

       ClickText     Value 
       VerifyText    Value
       
   END


  TRY
         ClicText      TextClickTest  timeout=30

      
      EXCEPT

         ClicText      TextClickTest  timeout=30

  END


    ${varValue}          GET Element Count      //input[@class\="Test" and @text\="Test"]      # 5


   FOR    ${myVariable}    IN RANGE     ${varValue}    # 0, 1, 2, 3, 4, 5.  --> 6

        VerifyText          xpath
        PageRefresh
        ${var}                 MyName    timeout=30


       IF     '${var}' ==  '${type_Text}'
             ClickText    perform
            BREAK
           
       END


   END
  
   
   @{VarType}                Create List               Test     Vikar    Tomy     Text 

   FOR    ${myVariable}    IN     @{VarType} 
          VerifyText       ${myVariable}
       
   END
     

    


