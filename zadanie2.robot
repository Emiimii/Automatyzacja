*** Test Cases ***
Dzielenie
    Dzielenie    25    5
    Dzielenie    10    0

*** Keywords ***
Dzielenie
    [Arguments]    ${num1}    ${num2}
    Run Keyword If    ${num2}==0    Fail    Dzielenie przez 0
    ${div}    Evaluate    float(${num1})/${num2}
    Log To Console    ${div}
    [Return]    ${div}
