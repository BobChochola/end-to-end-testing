@BaseCase @Admin @Order @ManualOrder @orderAddmanualPermission
@fixture-delivery @fixture-payment @fixture-shop @EAT-442
Feature: check manual order permission in staff setting
  As a merchant
  I want to add manual order permission in staff setting

  Scenario: Check Order list more action by staff
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

    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name
    Given I am on Staff Setting Page
    Then I should see add button
    And I click on add button
    Then I should be redirected to Staff Setting Add Page
    And I fill new email to email field
    And I click on add button
    Then I should be redirected to Edit Staff Permissions Page
    Given I am on Staff Setting Page
    And I wait for 5 seconds for loading
    Then 1st staff of row should contain new email
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    And I should see search field
    When I input shop name to search field
    Then I should see search mail list
    Then row of mail list should contain "You've been added as an administrator of"
    When I click on row of mail list included "You've been added as an administrator of"
    Then I should see mail detail
    When I click on set my password button
    Then I switch to 2 of tabs
    Then I should be redirected to Admin Login Page
    And I fill correct account password to password field
    And I fill correct account password to confirmation password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button    
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Dashboard Page
    When I click on side menu items included 'Order Management'
    And I click on side submenu items included 'Orders'
    Then I should be redirected to Unauthorized Page
    Then unauthorized text should contain unauthorized access text
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button    
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Staff Setting Page
    And I wait for 5 seconds for loading
    Then 1st staff of row should contain new email
    When I click on 1st edit button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    When I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And I fill new email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button    
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Orders Page
    Then I should see export dropdown
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then I should see order status dropdown
    And I click on User Menu
    And I click on Logout
    Then I should be redirected to Admin Login Page
    And ---ROLL BACK---
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button    
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    Given I am on Staff Setting Page
    Then 1st staff of row should contain new email
    When I click on 1st edit button
    Then I should be redirected to Edit Staff Permissions Page
    And I click on order permission checkbox
    When I click on update button
    Then I should be redirected to Staff Setting Page
    And I click on delete button
    Then I should see alert
    And I click on alert checkbox
    And I click on ok button
    Then staff should not contain new email