Feature: Login Website
  Scenario: Login to Redfin website

	  Given I have navigated to the Redfin Home page
      And On the Redfin Home page I click on Log in button
      And On the Sign In Pop up Window I click on the 'Continue with Email' button 
      And On the Sign In Pop up Window I enter "farshad.keshani@gmail.com" into the email text field
      And On the Sign In Pop up Window I enter "Fk4988894&" into the password text field
      And On the Sign In Pop up Window I click on the Sign In button 
      Then I Verify that i Signed in on the Redfin
