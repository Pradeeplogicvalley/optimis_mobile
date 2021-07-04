require 'calabash-android/calabash_steps'
#require 'spreadsheet'
#require 'csv'
#Register officer with password

Given(/^I want to enter (\d+) for camberley$/) do |username|

# @data = table.hashes
  # value = data[0]
  sleep(3)
      touch("Button id:'btnregister'")
      sleep(2)
      touch("android.widget.EditText id:'edit_officer_id'")
      sleep(2)
      query("android.widget.EditText id:'edit_officer_id'", setText:"#{username}")
     sleep(1)
 # sheet1= book.create_worksheet
 # sheet1.row(0).push 'username'
 # book.write 'Write.xlsx'
  sleep(3)
  
end

When(/^enter (\d+) for camberley$/) do |password|
 sleep(1)
      touch("android.widget.EditText id:'edit_password'")
      sleep(2)
      query("android.widget.EditText id:'edit_password'", setText:"#{password}")
     sleep(1)
     hide_soft_keyboard()
     sleep(1)
 # sheet1= book.create_worksheet
  # sheet1.row(0).push 'password'
 # book.write 'Write.xlsx'
  
   sleep(3)
 
end

Then(/^I click register for camberley$/) do
 
 sleep(3)
     touch("Button id:'btnregister'")
         sleep(6)
     touch("android.widget.Button id:'btn_ok'")
       sleep(6)
      
  value1="User successfully registered"
  puts("Expected: User successfully registered")
  value=query("android.widget.TextView id:'textview_status'", :text)
  puts("Actual:")
  puts(value)
  sleep(2)
p=assert_text(value1, should_equal = true)
 sleep(2)
   puts(p)
   sleep(2)
     touch("android.widget.Button id:'btn_ok'")
         sleep(6)
 
end
