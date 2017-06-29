*** Test Cases ***
Srednia liczb
    ${srednia}    Srednia    10    15    2    3    -6
    ...    6
    Log To Console    ${srednia}
    Max Min    40    25

*** Keywords ***
Srednia
    [Arguments]    @{lista_liczb}
    ${sum}    Set Variable    0
    ${len}    Get Length    ${lista_liczb}
    : FOR    ${liczba}    IN    @{lista_liczb}
    \    ${sum}    Set Variable    ${${sum}+${liczba}}
    ${avg}    Evaluate    float($sum)/$len
    [Return]    ${avg}

Max Min
    [Arguments]    ${liczba1}    ${liczba2}
    Run Keyword If    ${liczba1}>${liczba2}    Log To Console    Max: ${liczba1} Min: ${liczba2}
    ...    ELSE    Log To Console    Max: ${liczba2} Min: ${liczba1}
