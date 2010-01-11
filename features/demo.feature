Feature: Demo
  In order to demonstrate the awesome power of our testing stack
  As a builder of dynamic pages
  I want to play with javascript

  @ajax
  Scenario: Submit a form and get a response over ajax
    Given I am on the demo page
    When I press "Save changes"
    And I wait for the AJAX call to finish
    Then I should see "I'm dynamic!"

  @visibility
  Scenario: Toggle element visibility
    Given I am on the demo page
    Then I should see "Haha, I am the one true toggler!"
    And I should not see "Haha, I am an usurping toggler!"
    When I click "toggle"
    Then I should not see "Haha, I am the one true toggler!"
    And I should see "Haha, I am an usurping toggler!"
