Feature: Camberley

Scenario: Other positive action
    Given click record actions 
	When choose action type 
	Then enter notes & submit
	
 Scenario: Returned action -7
    Given click record action for return code 7 
	When choose action type & return code 7 
	Then enter for the notes return code 7 and submit

Scenario: Returned action -102
    Given click record an action button for return code 102
	When choose action type & return code 102
	Then enter notes return code 102 and submit	
	
Scenario: Returned action -103
    Given click record action button for return code 103
	When choose action type & return code 103
	Then enter the notes for return code 103	
	
Scenario: Returned action -104
    Given click record an action for return code 104
	When choose action type & return code 104
	Then submit the action

Scenario: Revisit action
    Given click record actionn for revisit action
	When choose revisit action
	Then enter the notes and submitt

	
Scenario: Record note action
    Given click record a note button 
	Then submit the notes by clicking record note button

Scenario: Third party delivery action
    Given click seized vehicles in right side panel 
	Then click third party delivery option	

 Scenario: VSF & VCR form submission
    Given perform seized action
	Then submit the VSF & VCR forms