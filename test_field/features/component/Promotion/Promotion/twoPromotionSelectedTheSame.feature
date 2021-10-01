@BaseCase @Admin @Promotion @twoPromotionSelectedTheSame
@fixture-product
Feature: create two promotion selected the same product
  As a merchant
  When I selected products at diffence promotion produce error

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

  @EAT-634 @EAT-634-5
  Scenario: two Promotion, duplicated selected products
    Given I am on Promotion Create Page
    And I fill "(dirty data) 10% Selected Products" to name field
    And I click on selected products condition checkbox
    And I fill "10" to promotion value field
    And I fill "1" to promotion condition field
    And I fill "1st Product for Checkout" to search field
    And I click on search button
    Then 1st product of popover list should contain "1st Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should not see checkbox of product list
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill "1" to times of use field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) 10% Selected Products"
    Then target group should equal to "All Members"
    Then total usage limit should equal to "1 time(s)"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page

    Given I am on Promotion Create Page
    And I fill "(dirty data) 20% Selected Products" to name field
    And I click on selected products condition checkbox
    And I fill "20" to promotion value field
    And I fill "1" to promotion condition field
    And I fill "1st Product for Checkout" to search field
    And I click on search button
    Then 1st product of popover list should contain "1st Product for Checkout"
    And I should see checkbox of product list
    And I click on 1st checkbox of product list
    And I click on popup confirm button
    Then I should not see checkbox of product list
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill "1" to times of use field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) 20% Selected Products"
    Then target group should equal to "All Members"
    Then total usage limit should equal to "1 time(s)"
    And I click on confirm button
    Then I should see selected product error alert
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert