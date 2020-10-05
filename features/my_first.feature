Feature: Login feature 

Scenario: Register
Given I want to enter user name
When enter password
Then I click register

Scenario: Login
Given Enter officer id
When Enter Password
Then I click login button

Scenario: Record non-visit action - Take a payment 
	Given click record an action 
	When choose action type 
	When enter the payment details and click next 
	Then enter notes and submit 
	
Scenario: Record non-visit action - Record notes 
	Given click record an action 
	When enter notes 
	Then submit record notes 
	
Scenario: Record visit action - Take payment 
	Given click record action 
	When choose door details 
	When choose the action type 
	When enter payment details and click next 
	Then enter note and submit 
	
Scenario: Record visit action - Returned 

	Given Record returned action for visit action 
	When choose the door details 
	When choose the action type as returned 
	Then enter notes and submit it 
	
Scenario: Record visit action - Goods Removed 

	Given Record goods removed for visit action 
	When Choose door and house types 
	When choose action type as goods removed 
	Then submit the case and close it 
	
Scenario: Record visit action - Left letter 

	Given visit action left letter 
	When enter the details of house and left letter 
	Then close the case 

Scenario: Online search by postcode

	Given Go to online search
	When Enter the postcode value for search
	Then View the cases

Scenario: Online search by case search

	Given Go to online search for case no
	When Enter the postcode value for search for case no
	Then View the cases for case no search