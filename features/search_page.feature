Feature: Search Property
  Scenario: Search City With Adding Filter

	  Given I have navigated to the Redfin Home page
      And On the Search Box I enter "Anaheim" into the search text field
      And On the Redfin Home page I click the Anaheim link pop up from Search box
      And On the Search page I click the More Filter
      And On the More Filter i click on Property Type House button with checked this weekends radio button
      And On the More Filter i check mark on Status as Open House
      And On the More Filter i change Sold Radio Button to ON with Last 3 motnths
      And On the More Filter i click on Apply Filters button
      Then On the Search page I Verified filter summery
