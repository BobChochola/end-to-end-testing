@BaseCase @Admin @Storefront @ExpressCheckoutPage @expressCheckoutPagesUnpublish
@fixture-payment @fixture-delivery @fixture-product @fixture-promotion @fixture-shop
Feature: Express Checkout Page
  As a shopper
  I want to be able to navigate to checkout from an express chckout page

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

  @C3855
  Scenario: Express checkout index page button operation
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    When I should see user guide pop up
    And I click on skip the guide button
    When I Refresh
    Then I should be redirected to Express Checkout Builder Page
    Then I should see product picker
    When I input "2nd Product for Checkout" to search field
    Then I should see product of product list
    Then 1st product of product list should contain '2nd Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    And I click on save page button
    And I should see return to admin panel page
    And I click on return to admin panel page
    Then I should be redirected to Express Checkout Pages Page
    When I click on edit button
    Then I should be redirected to Express Checkout Builder Page
    When I click on menu button
    And I click on page title
    Then I should see page title field
    When I fill "(dirty data)New Page A" to page title field
    And I click on menu button
    And I click on save page button
    And I click on return to admin panel page
    Then I should be redirected to Express Checkout Pages Page
    Then I should see 1 delete button
    Then 1st page title should contain "New Page A"
    Given I am on Express Checkout Pages Page
    When I click on unpublish button
    Then I should see publish button
    And I click on view page button
    When I switch to 2 of tabs
    Then I should be redirected to Shop Not Found Page
    Given I am on Express Checkout Pages Page
    When I click on publish button
    Then I should see unpublish button
    And I click on view page button
    When I switch to 3 of tabs
    Then I should be redirected to Shop Express Checkout Page
    When I switch to 1 of tabs
    Given I am on Express Checkout Pages Page
    When I click on delete button
    Then I should see delete confirmation popup
    And I click on reconfirm checkbox
    Then I click on popup ok button
    Then I should not see delete confirmation popup
    And I should not see delete button
    When I switch to 3 of tabs
    Then I should be redirected to Shop Express Checkout Page
    When I Refresh
    Then I should be redirected to Shop Not Found Page
    Then ---I NEED TO ROLLBACK Express Checkout Pages Page---