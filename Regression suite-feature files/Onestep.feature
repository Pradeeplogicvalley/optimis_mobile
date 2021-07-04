Feature: Onestep feature

Scenario: Record visit action - Take payment 
	Given click record action 
	When choose door details 
	When choose the action type 
	When enter payment details and click next 
	Then enter note and submit for payment

Scenario: Record non-visit action - Take a payment without KeyIVR 
	Given click record an action 
	When choose action type 
	When enter the payment details and click next 
	Then enter notes and submit
	
Scenario: Record visit action - Returned 

	Given Record returned action for visit action 
	When choose the door details 
	When choose the action type as returned in visit action
	Then enter notes and submit it 	

Scenario: Record Non visit action - Returned 

	Given Record returned action for non visit action 
	When choose the action type as returned in non visit action
	Then enter notes and submit it in non visit	

Scenario: Record visit action - Left letter 

	Given visit action left letter 
	When enter the details of house and left letter 
	Then close the case 


Scenario: Visit action - Recorded in error

Given Enter officer id for RIE
When Enter Password for RIE
And click login button for RIE
And I Click Skip button for RIE
And I want to click case holdings for RIE
And click the case for RIE
And click record visit action button for RIE
Then perform Recorded in Error action

Scenario: Non visit action - Unassign case 

Given Enter officer id3
When Enter Password3
And click login button3
And I Click Skip button3
And I want to click case holdings3
And click the case3
And click record non visit action button3
Then perform Unassign case action

Scenario: Non visit action - Find address location

Given Enter officer id4
When Enter Password4
And click login button4
And I Click Skip button4
And I want to click case holdings4
And click the case4
And click record non visit action button4
Then perform Find address location action

Scenario: Non visit action - Inbound calls action

Given Enter officer id5
When Enter Password5
And click login button5 
And I Click Skip button5
And I want to click case holdings5
And click the case5
And click record non visit action button5
Then perform Inbound Calls action

Scenario: Non visit action - Outbound calls action

Given Enter officer id6
When Enter Password6
And click login button6
And I Click Skip button6
And I want to click case holdings6
And click the case6
And click record non visit action button6
Then perform Outbound Calls action



Scenario: Record visit action -Revisit

    Given Enter officer id for revisit action
    When Enter Password for revisit action
    And click login button for revisit action 
    And I Click Skip button for revisit action
    And I want to click case holdings for revisit action
    And click the case for revisit action
    Then click record visit action button for revisit action
	
Scenario: Non visit action - Link case request

Given Enter officer id2
When Enter Password2
And click login button2
And I Click Skip button2
And I want to click case holdings2
And click the case2
And click record non visit action button2
Then perform Link case request action

Scenario: Online search by Arragments

	Given Go to online search for arrangments
	When click active arrangments filter
	Then View the cases for All arrangments search


Scenario: Online search by On Hold

	Given Go to online search for On Hold
	When click On Hold filter
	Then View the cases for On Hold search


Scenario: Online search by Unvisited

	Given Go to online search for Unvisited
	When click Unvisited filter
	Then View the cases for Unvisited search

Scenario: Online search by Visited

	Given Go to online search for Visited
	When click Visited filter
	Then View the cases for Visited search
	
Scenario: Online search by Case no

	Given Go to online search for Case no
	When click Case no filter
	Then View the cases for Case no search


Scenario: Online search by KPI

	Given Go to online search for KPI
	When click KPI filter
	Then View the result for KPI search
	
Scenario: Online search by Telephone number 

	Given Go to online search for Telephone number
	When click Telephone number filter
	Then View the result for Telephone number search