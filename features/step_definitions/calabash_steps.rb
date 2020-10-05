require 'calabash-android/calabash_steps'
require 'rspec/expectations'


Given(/^I want to enter user name$/) do
  sleep(3)
    touch("Button id:'btnregister'")
    sleep(2)
  
    touch("android.widget.EditText id:'edit_officer_id'")
    sleep(2)
    query("android.widget.EditText id:'edit_officer_id'", setText:"33111")
   sleep(1) 
end

When(/^enter password$/) do
  sleep(1)
    touch("android.widget.EditText id:'edit_password'")
    sleep(2)
    query("android.widget.EditText id:'edit_password'", setText:"1111")
   sleep(1)
end

Then(/^I click register$/) do
  sleep(3)
  touch("Button id:'btnregister'")
      sleep(3)
  touch("android.widget.Button id:'btn_ok'")
    sleep(2)
  touch("android.widget.Button id:'btn_ok'")
      sleep(3)
end

Given(/^Enter officer id$/) do
  sleep(1)
   touch("android.widget.EditText id:'editid'")
   query("android.widget.EditText id:'editid'", setText:"33111")
   sleep(3) 
end

When(/^Enter Password$/) do
  sleep(1)
    touch("android.widget.EditText id:'editpwd'")
    query("android.widget.EditText id:'editpwd'", setText:"1111")
    sleep(3) 
end

Then(/^I click login button$/) do
  touch("Button id:'btnnext'")
   sleep(3)
 touch("android.widget.EditText id:'editvehiclenumer'")
   query("android.widget.EditText id:'editvehiclenumer'", setText:"ABC 214")
   sleep(3)
 touch("android.widget.EditText id:'editmileage'")
   query("android.widget.EditText id:'editmileage'", setText:"214")
   sleep(3)
   touch("Button id:'btnlogin'")
   sleep(60)
end

Given(/^click record an action$/) do
  sleep(1)
    touch("android.widget.EditText id:'editid'")
  sleep(3)
    touch("android.widget.EditText id:'editpwd'")
    query("android.widget.EditText id:'editpwd'", setText:"1111")
  sleep(2)
  touch("Button id:'btnnext'")
    sleep(3)
   touch("Button id:'btnlogin'")
    sleep(7)
  touch("android.widget.TextView id:'doors_count'")
    sleep(3)
  query("android.widget.EditText id:'edit_search'", setText:"962729")
    sleep(3)
  touch("android.widget.TextView id:'case_list_defaulter_name'")
    sleep(3)
  performAction("click_on_text", '9627295')
  sleep(3)
end

When(/^choose action type$/) do
  sleep(1)
  performAction("click_on_text", 'Record a non visit action')
    sleep(3)
  performAction("click_on_text", 'Yes')
     sleep(3)  
  performAction("click_on_text", 'Record an action')
    sleep(3)
  touch("android.widget.Spinner id:'id_spinner_action'")
   sleep(3)
    performAction("click_on_text", 'Take a payment')
   sleep(3)
  touch("android.widget.Button id:'btn_footer_next'")
   sleep(3)
end

When(/^enter the payment details and click next$/) do
  touch("android.widget.ImageView id:'paymentRefreshImageView'")
   sleep(3)
 touch("android.widget.CheckBox id:'casePaymentCheckBox'")
   sleep(3)
  touch("android.widget.EditText id:'cardAmountEditText'")
   query("android.widget.EditText id:'cardAmountEditText'", setText:"615.0")
   sleep(3)
 touch("android.widget.Button id:'btn_footer_next'")
  sleep(3)
end

Then(/^enter notes and submit$/) do
  touch("android.widget.EditText id:'log_note'")
   query("android.widget.EditText id:'log_note'", setText:"Test Take a Payment, Record non-visit action")
   sleep(2)
 touch("android.widget.Button id:'btn_submit'")
  sleep(3)
end

When(/^enter notes$/) do
  sleep(3)
  touch("android.widget.EditText id:'editid'")
    sleep(2)
    touch("android.widget.EditText id:'editpwd'")
    sleep(2)
    query("android.widget.EditText id:'editpwd'", setText:"1111")
  sleep(2)
  touch("Button id:'btnnext'")
    sleep(3)
   touch("Button id:'btnlogin'")
    sleep(7)
  touch("android.widget.TextView id:'doors_count'")
    sleep(3)
  query("android.widget.EditText id:'edit_search'", setText:"902494")
     sleep(3)
   touch("android.widget.TextView id:'case_list_defaulter_name'")
     sleep(3)
  performAction("click_on_text", '9024944')
      sleep(3)
  performAction("click_on_text", 'Record a non visit action')
    sleep(3)
  performAction("click_on_text", 'Yes')
     sleep(3)  
  performAction("click_on_text", 'Record a note')
    sleep(3)
  performAction("click_on_text", 'Next')
      sleep(3)  
end

Then(/^submit record notes$/) do
  sleep(3)
  query("android.widget.EditText id:'record_note_note'", setText:"Test record notes, Record non-visit action")
    sleep(3)
   touch("Button id:'record_note_note'")
     sleep(3)
end

Given(/^click record action$/) do
  sleep(1)
    touch("android.widget.EditText id:'editid'")
  sleep(3)
    touch("android.widget.EditText id:'editpwd'")
  sleep(2)
    query("android.widget.EditText id:'editpwd'", setText:"1111")
  sleep(2)
  touch("Button id:'btnnext'")
    sleep(3)
   touch("Button id:'btnlogin'")
    sleep(7)
  touch("android.widget.TextView id:'doors_count'")
    sleep(3)
  query("android.widget.EditText id:'edit_search'", setText:"953890")
  sleep(3)
   touch("android.widget.TextView id:'case_list_defaulter_name'")
     sleep(3)
  performAction("click_on_text", '9538904')
  sleep(3)
  performAction("click_on_text", 'Record a visit action')
    sleep(3)
  performAction("click_on_text", 'Yes')
     sleep(5)  
   touch("android.widget.Button id:'btn_yes'")
  sleep(3)
  touch("android.widget.Button id:'btn_yes'")
     sleep(3)  
  performAction("click_on_text", 'Record an action')
    sleep(3)
end

When(/^choose door details$/) do
  sleep(2)
 touch("android.widget.Spinner id:'id_door_color'")
  sleep(3)
  performAction("click_on_text", 'Blue')
  sleep(3)
  touch("android.widget.Spinner id:'id_house_type'")
  sleep(3)
  performAction("click_on_text", 'Bungalow')
  sleep(3)
  touch("android.widget.Button id:'btn_footer_next'")
  sleep(3)
 touch("android.widget.Spinner id:'id_contact_person'")
  sleep(3)
  performAction("click_on_text", 'Defendant')
  sleep(3)
  touch("android.widget.Button id:'btn_footer_next'")
  sleep(3)
end

When(/^choose the action type$/) do
  sleep(3)
  touch("android.widget.Spinner id:'id_spinner_action'")
   sleep(3)
   performAction("click_on_text", 'Take a payment')
   sleep(3)
   touch("android.widget.Button id:'btn_footer_next'")
   sleep(3)
end

When(/^enter payment details and click next$/) do
  sleep(2)
 touch("android.widget.ImageView id:'paymentRefreshImageView'")
   sleep(6)
 
 touch("android.widget.CheckBox id:'casePaymentCheckBox'")
   sleep(3) 
 touch("android.widget.EditText id:'receiptNumberEditText'")
  sleep(2)
   query("android.widget.EditText id:'receiptNumberEditText'", setText:"214")
   sleep(3)
 touch("android.widget.EditText id:'cashAmountEditText'")
  sleep(2)
   query("android.widget.EditText id:'cashAmountEditText'", setText:"2.00")
   sleep(3)
 touch("android.widget.EditText id:'caseCashAmountEditText'")
  sleep(2)
   query("android.widget.EditText id:'caseCashAmountEditText'", setText:"2.00")
   sleep(3)
 touch("android.widget.Button id:'btn_footer_next'")
  sleep(3)
     query("android.widget.EditText id:'log_note'", setText:"Test take a payment")
     sleep(3)
  touch("android.widget.Button id:'btn_submit'")
    sleep(3)
   touch("android.widget.Button id:'btn_ok'")
  sleep(3)
   touch("android.widget.TextView id:'action_quickview'")
     sleep(3)
    performAction("click_on_text", 'Conclude visit')
    sleep(3)
   touch("android.widget.Button id:'btn_ok'")
     sleep(3)
end

Then(/^enter note and submit$/) do
  
  sleep(3) 
end

Given(/^Record returned action for visit action$/) do
  sleep(1)
    touch("android.widget.EditText id:'editid'")
  sleep(2)
    touch("android.widget.EditText id:'editpwd'")
  sleep(2)
    query("android.widget.EditText id:'editpwd'", setText:"1111")
  sleep(2)
  touch("Button id:'btnnext'")
    sleep(3)
   touch("Button id:'btnlogin'")
    sleep(7)
  touch("android.widget.TextView id:'doors_count'")
    sleep(3)
  query("android.widget.EditText id:'edit_search'", setText:"966266")
      sleep(3)
  sleep(3)
   touch("android.widget.TextView id:'case_list_defaulter_name'")
     sleep(3)
  performAction("click_on_text", '9662668')
  sleep(3)
  performAction("click_on_text", 'Record a visit action')
  sleep(3)
    performAction("click_on_text", 'Yes')
       sleep(5)  
     touch("android.widget.Button id:'btn_yes'")
    sleep(3)
    touch("android.widget.Button id:'btn_yes'")
       sleep(3)  
   performAction("click_on_text", 'Record an action')
     sleep(3)
end

When(/^choose the door details$/) do
  sleep(2)
touch("android.widget.Spinner id:'id_door_color'")
 sleep(3)
 performAction("click_on_text", 'Blue')
 sleep(3)
 touch("android.widget.Spinner id:'id_house_type'")
 sleep(3)
 performAction("click_on_text", 'Bungalow')
 sleep(3)
 touch("android.widget.Button id:'btn_footer_next'")
 sleep(3)
touch("android.widget.Spinner id:'id_contact_person'")
 sleep(3)
 performAction("click_on_text", 'Defendant')
 sleep(3)
 touch("android.widget.Button id:'btn_footer_next'")
 sleep(3)
end

When(/^choose the action type as returned$/) do
  sleep(3)
  touch("android.widget.Spinner id:'id_spinner_action'")
   sleep(3)
   performAction("click_on_text", 'Returned')
   sleep(3)
   performAction("click_on_text", 'Please select')
  sleep(2)
   performAction("click_on_text", '3 - EA - CALLED - GANT')
  sleep(3)
   touch("android.widget.Button id:'btn_footer_next'")
   sleep(3)
   performAction("click_on_text", 'Please select ID shown')
  sleep(3)
   performAction("click_on_text", 'Driving License')
  sleep(3)
   touch("android.widget.Button id:'btn_footer_next'")
  sleep(3)
 query("android.widget.EditText id:'log_note'", setText:"Test returned")
  sleep(3)
   touch("android.widget.Button id:'btn_submit'")
     sleep(3)
    touch("android.widget.Button id:'btn_ok'")
   sleep(3)
end

Then(/^enter notes and submit it$/) do
sleep(3)
touch("android.widget.TextView id:'action_quickview'")
 sleep(3)
performAction("click_on_text", 'Conclude visit')
sleep(3)
touch("android.widget.Button id:'btn_ok'")
 sleep(30)
end

Given(/^Record goods removed for visit action$/) do
  sleep(1)
    touch("android.widget.EditText id:'editid'")
  sleep(3)
    touch("android.widget.EditText id:'editpwd'")
  sleep(2)
    query("android.widget.EditText id:'editpwd'", setText:"1111")
  sleep(2)
  touch("Button id:'btnnext'")
    sleep(3)
   touch("Button id:'btnlogin'")
    sleep(7)
  touch("android.widget.TextView id:'doors_count'")
    sleep(3)
  query("android.widget.EditText id:'edit_search'", setText:"967883")
  sleep(3)
   touch("android.widget.TextView id:'case_list_defaulter_name'")
     sleep(3)
  performAction("click_on_text", '9678835')
    sleep(3)
    performAction("click_on_text", 'Record a visit action')
  sleep(3)
    performAction("click_on_text", 'Yes')
       sleep(5)  
     touch("android.widget.Button id:'btn_yes'")
    sleep(3)
    touch("android.widget.Button id:'btn_yes'")
       sleep(3)    
     performAction("click_on_text", 'Record an action')
       sleep(3)
end

When(/^Choose door and house types$/) do
  sleep(2)
 touch("android.widget.Spinner id:'id_door_color'")
  sleep(3)
  performAction("click_on_text", 'Blue')
  sleep(3)
  touch("android.widget.Spinner id:'id_house_type'")
  sleep(3)
  performAction("click_on_text", 'Bungalow')
  sleep(3)
  touch("android.widget.Button id:'btn_footer_next'")
  sleep(3)
 touch("android.widget.Spinner id:'id_contact_person'")
  sleep(3)
  performAction("click_on_text", 'Defendant')
  sleep(3)
  touch("android.widget.Button id:'btn_footer_next'")
  sleep(3)
end

When(/^choose action type as goods removed$/) do
  sleep(3)
  touch("android.widget.Spinner id:'id_spinner_action'")
   sleep(3)
   performAction("click_on_text", 'Goods removed')
  sleep(3)
  touch("android.widget.Button id:'btn_footer_next'")
     sleep(3)
     query("android.widget.EditText id:'log_note'", setText:"Test Goods removed")
  sleep(3)
   touch("android.widget.Button id:'btn_submit'")
     sleep(3)
    touch("android.widget.Button id:'btn_ok'")
   sleep(3)
end

Then(/^submit the case and close it$/) do
  sleep(3)
 touch("android.widget.TextView id:'action_quickview'")
   sleep(3)
  performAction("click_on_text", 'Conclude visit')
 sleep(3)
 touch("android.widget.Button id:'btn_ok'")
   sleep(30)
end

Given(/^visit action left letter$/) do
  sleep(1)
   touch("android.widget.EditText id:'editid'")
 sleep(3)
   touch("android.widget.EditText id:'editpwd'")
  sleep(2)
   query("android.widget.EditText id:'editpwd'", setText:"1111")
 sleep(2)
 touch("Button id:'btnnext'")
   sleep(3)
  touch("Button id:'btnlogin'")
   sleep(7)
 touch("android.widget.TextView id:'doors_count'")
   sleep(3)
  query("android.widget.EditText id:'edit_search'", setText:"969678")
   sleep(3)
   touch("android.widget.TextView id:'case_list_defaulter_name'")
     sleep(3)
  performAction("click_on_text", '9696788')
  sleep(3)
    performAction("click_on_text", 'Record a visit action')
  sleep(3)
    performAction("click_on_text", 'Yes')
       sleep(5)  
     touch("android.widget.Button id:'btn_yes'")
    sleep(3)
    touch("android.widget.Button id:'btn_yes'")
       sleep(3)  
     performAction("click_on_text", 'Record an action')
       sleep(3)
end

When(/^enter the details of house and left letter$/) do
  sleep(2)
  touch("android.widget.Spinner id:'id_door_color'")
   sleep(3)
   performAction("click_on_text", 'Blue')
   sleep(3)
   touch("android.widget.Spinner id:'id_house_type'")
   sleep(3)
   performAction("click_on_text", 'Bungalow')
   sleep(3)
   touch("android.widget.Button id:'btn_footer_next'")
   sleep(3)
  touch("android.widget.Spinner id:'id_contact_person'")
   sleep(3)
   performAction("click_on_text", 'Defendant')
   sleep(3)
   touch("android.widget.Button id:'btn_footer_next'")
   sleep(3)
  sleep(3)
  touch("android.widget.Spinner id:'id_spinner_action'")
   sleep(3)
   performAction("click_on_text", 'Left Letter')
   sleep(3)
  touch("android.widget.Button id:'btn_footer_next'")
     sleep(3)
  query("android.widget.EditText id:'log_note'", setText:"Test Left letter")
  sleep(3)
   touch("android.widget.Button id:'btn_submit'")
     sleep(3)
    touch("android.widget.Button id:'btn_ok'")
   sleep(3)
end

Then(/^close the case$/) do
  sleep(3)
   
  touch("android.widget.TextView id:'action_quickview'")
    sleep(3)
   performAction("click_on_text", 'Conclude visit')
  sleep(3)
  touch("android.widget.Button id:'btn_ok'")
    sleep(30)
end

Given(/^Go to online search$/) do
  sleep(3)
  sleep(1)
     touch("android.widget.EditText id:'editid'")
   sleep(3)
     touch("android.widget.EditText id:'editpwd'")
    sleep(2)
     query("android.widget.EditText id:'editpwd'", setText:"1111")
   sleep(2)
   touch("Button id:'btnnext'")
     sleep(3)
    touch("Button id:'btnlogin'")
     sleep(7)
  touch("android.widget.EditText id:'edit_search'")
  sleep(2)
     query("android.widget.EditText id:'edit_search'", setText:"ip9")
 sleep(3) 
end 
When(/^Enter the postcode value for search$/) do 
  sleep(3)
  touch("android.widget.Button id:'btn_go'")
  sleep(3)
end
Then(/^View the cases$/) do 
  sleep(30)
  performAction("click_on_text", 'Assigned To')  
  sleep(3)
  touch("android.widget.Button id:'btn_assign_case'")
  sleep(3)
  touch("android.widget.Button id:'btn_ok'")
end

Given(/^Go to online search for case no$/) do 
  sleep(3)
       touch("android.widget.EditText id:'editid'")
     sleep(3)
       touch("android.widget.EditText id:'editpwd'")
      sleep(2)
       query("android.widget.EditText id:'editpwd'", setText:"1111")
     sleep(2)
     touch("Button id:'btnnext'")
       sleep(3)
      touch("Button id:'btnlogin'")
       sleep(7)
  performAction("click_on_text", 'Postcode') 
  sleep(3)
  performAction("click_on_text", 'CaseNo') 
    sleep(3)
    touch("android.widget.EditText id:'edit_search'")
    sleep(2)
       query("android.widget.EditText id:'edit_search'", setText:"A587747")
   sleep(3) 
end

  When(/^Enter the postcode value for search for case no$/) do
    sleep(3)
      touch("android.widget.Button id:'btn_go'")
      sleep(3)  
  end
  
  Then(/^View the cases for case no search$/) do
    sleep(30)
      performAction("click_on_text", 'Assigned To')  
      sleep(3)
      touch("android.widget.Button id:'btn_assign_case'")
      sleep(3)
      touch("android.widget.Button id:'btn_ok'")
  end


