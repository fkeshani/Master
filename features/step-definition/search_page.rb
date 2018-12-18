require 'pry'


Given(/^I have navigated to the Redfine Home page$/) do
    visit 'https://www.redfin.com/'
  end
  
  And(/^On the Search Box I enter "([^"]*)" into the search text field$/) do |text|
    fill_in 'City, Address, School, Agent, ZIP', with: 'Anaheim'    
  end
  
  And(/^On the Redfin Home page I click the Anaheim link pop up from Search box$/) do
    find(:xpath, "//a[@href='/city/517/CA/Anaheim']").click    
  end
  
  And(/^On the Search page I click the More Filter$/) do
    find('span', text: 'More Filters').click   
  end
  
  And(/^On the More Filter i click on Property Type House button$/) do
    find_button('House').click    
  end
  
  And(/^On the More Filter i check mark on Status as Open House with checked this weekends radio button$/) do
    page.find(:xpath,"//*[text()='Open Houses']").click
  end

  Given(/^On the More Filter i change Sold slide toggle to ON and Last 3 motnths selected default$/) do
    page.find(:xpath,"//*[text()='Sold']").click
  end

  And(/^On the More Filter i click on Apply Filters button$/) do
    find_button('Apply Filters').click 
  end
  
  Then(/^On the Search page I Verified filter summery$/) do
    expect(page).to have_content('House, open house this weekend, for sale, mls fsbo, construction, fsbo, sold 3mo')    
  end
  
