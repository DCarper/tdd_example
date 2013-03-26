Feature: Creating a book

	Scenario: Creating a book
		When I go to the new book page
		And I submit valid book data
		Then I should be on that new book's page

	Scenario: Failing to create a book
		When I go to the new book page
		And I submit invalid book data
		Then I should see the appropriate validation messages
