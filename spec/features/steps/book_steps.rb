step 'I go to the new book page' do
  visit '/books/new'
end

step "I submit valid book data" do
  browser { fill_in 'Title', :with => 'title' }
  browser { fill_in 'Author', :with => 'The Author' }
  browser { fill_in 'Publisher', :with => 'Me' }
  browser { fill_in 'Isbn', :with => '12432' }
  browser { fill_in 'Price', :with => 'a million' }
  browser { click_on 'Create Book' }
end

step "I should be on that new book's page" do
  page.should have_content 'Book was successfully created.'
  page.should have_content 'Author: The Author'
  sleep 2
end

step 'I submit invalid book data' do
  browser { fill_in 'Publisher', :with => 'Me' }
  browser { fill_in 'Isbn', :with => '12432' }
  browser { fill_in 'Price', :with => 'a million' }
  sleep 3
  browser { click_on 'Create Book' }
end

step 'I should see the appropriate validation messages' do
  page.should have_content ("Author can't be blank.")
  page.should have_content ("Title can't be blank.")
  sleep 2
end
