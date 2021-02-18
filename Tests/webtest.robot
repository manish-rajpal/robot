*** Setting ***
Documentation                   This is some basic infor about the whole test suite
Library                         SeleniumLibrary

*** Test Cases ***
User can access website
    [Documentation]             This is some basic info about the test
    [Tags]                      Test 1
    Open browser                about:blank          chrome
    Go to                       https://www.willys.se/
    Wait until Page Contains    Handla billig mat online
    Input Text                  id=selenium--search-items-input    Felix
    Press Keys                  xpath://*[@id="selenium--search-items-input"]       RETURN
    Wait until Page Contains    Sökord:Felix
    Close Browser