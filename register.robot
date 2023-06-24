*** Settings ***
Library   SeleniumLibrary
Resource    keywords.resource

*** Test Cases ***
Register Cermati
    Open Browser   ${url}    chrome
    Wait Until Element Is Visible    //input[@id='email']
    Click Element    //input[@id='email']
    Input Text    //input[@id='email']   ${email}
    Click Element    //input[@id='mobilePhone']
    Input Text    id=mobilePhone    ${nomorhp}
    Click Element    //input[@id='password']
    Input Password    id=password    ${sandi}
    Click Element    //input[@id='confirmPassword']
    Input Password    id=confirmPassword    ${confirmsandi}
    Click Element    //input[@id='firstName']
    Input Text    id=firstName    ${namadepan}
    Click Element    //input[@id='lastName']
    Input Text    id=lastName    ${namabelakang}
    Click Element    //input[@id='cityAndProvince']
    Input Text    id=cityAndProvince    ${kota}
    Wait Until Page Contains Element    //div[@class='autocomplete__list-item-label_-S4yV']
    Click Element    //div[@class='autocomplete__list-item-label_-S4yV']
    Click Button    //button[@class='btn_SGZcZ btn-track btn--action_kallT RegistrationForm_form-container__button__rqOgr']
