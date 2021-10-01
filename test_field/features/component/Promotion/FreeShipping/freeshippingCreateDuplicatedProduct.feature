@BaseCase @Admin @Promotion @FreeShipping @freeshippingCreateDuplicatedProduct @fixture-product
Feature: Freeshipping selected product should not be duplicated
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

  Scenario: Check the error msg from creating duplicated freeshipping
    Given I am on Free Shipping Create Page
    And I fill "(dirty data) duplicatedFreeshipping" to name field
    And I click on selected products condition checkbox
    And I fill "20" to promotion condition field
    Then I scroll down to promotion condition field
    When I fill "2nd Product for Checkout" to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '2nd Product for Checkout'
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
    Then I should be redirected to Free Shipping Index Page

    Given I am on Free Shipping Create Page
    And I fill "(dirty data) duplicatedFreeshipping2" to name field
    And I click on selected products condition checkbox
    And I fill "20" to promotion condition field
    Then I scroll down to promotion condition field
    When I fill "2nd Product for Checkout" to search field
    And I click on search button
    Then I should see select product popup
    Then 1st list of popup product should contain '2nd Product for Checkout'
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
    Then I should be redirected to Free Shipping Index Page
    Then 1st row of promotion name should equal to '(dirty data) duplicatedFreeshipping2'
    Then 2nd row of promotion name should contain '(dirty data) duplicatedFreeshipping'

    And ---ROLL BACK---
    Given I am on Free Shipping Index Page
    When I click on 1st row of select checkbox list
    And I click on 2nd row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert