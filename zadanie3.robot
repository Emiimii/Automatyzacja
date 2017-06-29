*** Test Cases ***
Suma
    Suma    3    4    5    6
    Suma    -9    -5    -6    -10    0

Odejmowanie
    Odejmowanie    3    4    5    6
    Odejmowanie    -9    -5    -6    -10    0

Dzielenie
    Dzielenie    5    2
    Dzielenie    5    -4
    Dzielenie    5    2.5
    Dzielenie    5    0

Srednia
    Srednia    5    7    3    2    9    1
    Srednia    -2    -4    -6    -8    -10
    Srednia    4.2    5.3    6.4    7.5
    Srednia    0    0    0    0

*** Keywords ***
Suma
    [Arguments]    @{liczby}
    ${suma}    Set Variable    0
    :FOR    ${liczba}    IN    @{liczby}
    \    ${suma}    Evaluate    float(${suma}+${liczba})
    Log To Console    ${suma}
    [Return]    ${suma}

Odejmowanie
    [Arguments]    @{liczby}
    ${roznica}    Set Variable    0
    ${len}    Get Length    ${liczby}
    : FOR    ${liczba}    IN    @{liczby}
    \    ${roznica}    Evaluate    float(${roznica}-${liczba})
    Log To Console    ${roznica}
    [Return]    ${roznica}

Dzielenie
    [Arguments]    ${num1}    ${num2}
    Run Keyword If    ${num2}==0    Fail    Dzielenie przez 0
    ${div}    Evaluate    float(${num1})/${num2}
    Log To Console    ${div}
    [Return]    ${div}

Srednia
    [Arguments]    @{lista_liczb}
    ${sum}    Set Variable    0
    ${len}    Get Length    ${lista_liczb}
    :FOR    ${liczba}    IN    @{lista_liczb}
    \    ${sum}    Evaluate    ${sum}+${liczba}
    ${avg}    Evaluate    float(${sum})/${len}
    Log To Console    ${avg}
    [Return]    ${avg}
