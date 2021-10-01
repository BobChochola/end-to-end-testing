@BaseCase @Admin @Promotion @promotionCreateDuplicatedProduct @fixture-product @fixture-promotion 
Feature: Promotion selected product should not be duplicated
  As a merchant
  I want to create promotions
  And I can't create promotion with the same selected

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  Scenario: Check the error msg from creating duplicated promotion
    Given I am on Promotion Create Page
    And I fill "duplicatedPromotion" to name field
    And I click on selected products condition checkbox
    And I fill "10" to promotion value field
    And I fill "20" to promotion condition field
    And I fill "2nd Product for Checkout" to search field
    And I click on search button
    Then I should see select product popup
    Then 1st product of popover list should contain '2nd Product for Checkout'
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should see countinue to button
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    Then I should see promotion name
    And I click on confirm button
    Then I should see alert
    Then I scroll down to promotion value field
    Then selected product error alert should contain "Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue."