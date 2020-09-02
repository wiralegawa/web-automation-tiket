Feature: I want book train product

        Background: 
                Given I am on the home page
                Then I go to Login Page

        Scenario: Book domestic Flight product using Virtual Account with login email
                When I login with email "ujiperang@gmail.com" and password "Qwerty1234"
                Then I go to Train product landing page
                And I enter destination with "Gambir (GMR)"

                