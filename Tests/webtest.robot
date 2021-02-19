*** Setting ***
Documentation                   This is some basic infor about the whole test suite
Library                         SeleniumLibrary
Test Setup                      Begin Web Test
Test Teardown                   End Web Test
*** Keywords ***
Begin Web Test
    Open browser                about:blank          chrome
Go To Web Page
    Load Page
    Verify Page Loaded
Load Page
    Go to                       https://www.willys.se/
Verify Page Loaded
    Wait until Page Contains    Handla billig mat online
Search For Product
    Enter Search Term
    Submit Search
    Verify Search Completed
Enter Search Term
    Input Text                  id=selenium--search-items-input    Felix
Submit Search
    Press Keys                  xpath://*[@id="selenium--search-items-input"]       RETURN
Verify Search Completed
    Wait until Page Contains    Sökord:Felix
End Web Test
    Close Browser

*** Test Cases ***
User can access website
    [Documentation]             This is some basic info about the test
    [Tags]                      Test 1
    Begin Web Test
    Go To Web Page
    Search For Product
    End Web Test
