require 'pry'

Given(/^I have navigated to the Redfin Home page$/) do
    visit 'https://www.redfin.com/'
  end
  
  Given(/^On the Redfin Home page I click on Log in button$/) do
    find_button('Log In').click    
  end

  And(/^On the Sign In Pop up Window I click on the 'Continue with Email' button$/) do
    find_button('Continue with Email').click
  end

  And(/^On the Sign In Pop up Window I enter "([^"]*)" into the email text field$/) do |text|
    fill_in 'Email', with: 'Farshad.keshani@gmail.com'
  end
  
  And(/^On the Sign In Pop up Window I enter "([^"]*)" into the password text field$/) do |text|
    fill_in 'Password', with: 'Fk4988894'
  end
  
  And(/^On the Sign In Pop up Window I click on the Sign In button$/) do
    find_button('Sign In').click
  end

  Then(/^I Verify that i Signed in on the Redfin$/) do
    page.has_content?('Log In')
    
  end
  
