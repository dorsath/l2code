Feature: Show website pages
	In order to make l2code awesomeness known to people
	As l2code
	I want to see pages and its content

	Scenario: See homepage
		Given I am on the homepage
		Then I should see "L2code"

	Scenario: See about
		Given I am on the homepage
		When I follow "about"
		Then I should see "About"

	Scenario: See contact
		Given I am on the homepage
		When I follow "contact"
		Then I should see "Contact"

