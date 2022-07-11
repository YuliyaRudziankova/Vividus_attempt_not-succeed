Lifecycle:
 Examples:
 |testUserEmail|
 |#{generate(Name.firstName)}|
 |#{generate(regexify'[a-z]{3}[A-Z]{2}')}|

Scenario: Sign Up 1
Given I am on the main application page
When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`
When I initialize the Story variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`
When I enter `${testUserEmail}@mailinator.com` in field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
!-- When I add `@mailinator.com` to field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
When I click on element located `By.xpath(//button[contains(text(),'Sign up - it’s free')])`
When I click on element located `By.xpath(//span[contains(text(),'Sign up')])`
When I wait until element located `By.xpath(//button[contains(text(),'Continue')])` appears
When I click on element located `By.xpath(//button[contains(text(),'Continue')])`
When I wait until element located `By.xpath(//button[contains(text(),'Take me to Trello')])` appears
When I click on element located `By.xpath(//button[contains(text(),'Take me to Trello')])`
Then the text 'Most popular templates' exists

Scenario: HTTP
Given request body:
{
defaultLists: false
idOrganization: "62cafbc672dc5c574ed15a13"
name: "board2"
prefs_background_url: "https://images.unsplash.com/photo-1657116884812-cbe078701ee3?ixid=Mnw3MDY2fDB8MXxjb2xsZWN0aW9ufDF8MzE3MDk5fHx8fHwyfHwxNjU3NTE5OTgx&ixlib=rb-1.2.1&w=2560&h=2048&q=90"
prefs_permissionLevel: "org"
prefs_selfJoin: true
token: "62cafbc0f24eee12c3d8f071/w1v38qpiSvIbRMrhZKsEyJPHl8N5Vs7ARw3bfzLPBm2E0KARDNAiRxSTbmBPRb6l"
}
When I execute HTTP POST request for resource with URL `https://trello.com/1/boards`
Then `${responseCode}` is equal to `200`
Then JSON element value from context by JSON path `name` is equal to `board1`

Scenario: Sign In



!-- Scenario: Sign Up 2
!-- Given I am on the main application page
!-- When I initialize the STORY variable `testUserEmail` with value `#{generate(regexify'[a-z]{3}[A-Z]{2}')}`
!-- When I enter `${testUserEmail}` in field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
!-- When I add `@mailinator.com` to field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
!-- When I click on element located `By.xpath(//button[contains(text(),'Sign up - it’s free')])`
!-- When I click on element located `By.xpath(//span[contains(text(),'Sign up')])`
!-- When I wait until element located `By.xpath(//button[contains(text(),'Continue')])` appears
!-- When I click on element located `By.xpath(//button[contains(text(),'Continue')])`
!-- When I wait until element located `By.xpath(//button[contains(text(),'Take me to Trello')])` appears
!-- When I click on element located `By.xpath(//button[contains(text(),'Take me to Trello')])`
!-- Then the text 'Most popular templates' exists

Scenario: Verification
Given I am on a page with the URL 'https://www.mailinator.com/'
When I click on element located `By.xpath(//header/div[1]/div[1]/div[1]/div[2]/div[1]/a[1])`
When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`
When I enter `${testUserEmail}@mailinator.com` in field located `By.xpath(//input[@id='inbox_field'])`
!-- When I add `@mailinator.com` to field located `By.xpath(//input[@id='inbox_field'])`
When I click on element located `By.xpath(//body/div[1]/main[1]/div[2]/div[3]/div[1]/div[4]/div[1]/div[1]/table[1])`
When I click on element located  `By.xpath(//a[contains(text(),'Verify your email')])`
Then the text 'Set up your Atlassian account' exists


Scenario: HTTP
!-- Given request body:
{
defaultLists: true
name: "board1"
}

!-- When I execute HTTP POST request for resource with URL `https://trello.com/1/boards`
!-- Then `${responseCode}` is equal to `200`
!-- Then JSON element value from context by JSON path `name` is equal to `board1`