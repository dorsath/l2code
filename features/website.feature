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

	Scenario: Send contactform
		Given I am on the homepage
		And I follow "contact"
		When I fill in the following:
			| Name 		| Ronald Hecker			  |
			| Email 	| ronald@boshecker.nl |
			| Message	| How do i shot web		|
		And I press "send"
		Then I should see "Thank you. We will get back at you asap."
    And "info@l2code.nl" should receive 1 email
		When I open the email
		Then I should see "Contactform message from Ronald Hecker" in the email subject
		And I should see the email delivered from "ronald@boshecker.nl"
		And I should see "How do i shot web" in the email body

	Scenario: See technology
		Given I am on the homepage
		When I follow "technology"
		Then I should see "Technology"
