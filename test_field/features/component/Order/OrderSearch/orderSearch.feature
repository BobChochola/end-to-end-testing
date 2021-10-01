@BaseCase @Admin @Storefront @Order @Search @orderSearch
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Can search orders by input different string in order search bar
  As a merchant
  I want to input different string in order search bar
  So that I can see the order I wanted

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

    Given I am on Customer Settings Page
    Then I should see checkout include
    And I click on 1st checkout include
    And I click on 2nd checkout include
    And I click on update button
    Then I should be redirected to Customer Settings Page
    Then I scroll down to add button
    And I click on add button
    And I fill name to 1st Field Name field
    And I fill hint to 1st Field Hint field
    And I click on add button
    And I fill name to 2nd Field Name field
    And I fill hint to 2nd Field Hint field
    And I click on update button
    Then I should be redirected to Customer Settings Page
    Then Field Name field should contain name
    Then Field Hint field should contain hint
    Then limit counter should contain "2 / 5"

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I scroll down to country list dropdown
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    Then I scroll down to gender dropdown
    When I select gender dropdown option included "Male" of gender dropdown
    And I fill birthday to birthday field
    And I fill '深藍色' to 1st custom customer field
    And I fill '酒紅色' to 2nd custom customer field
    And I click on same as checkbox
    And I fill address to delivery address field
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Shop Product Index Page
    When I input "5th Product for Checkout" to search field
    Then 1st product of products list should contain '5th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I scroll down to country list dropdown
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    Then I scroll down to gender dropdown
    When I select gender dropdown option included "Male" of gender dropdown
    And I fill birthday to birthday field
    And I fill '藍色' to 1st custom customer field
    And I fill '紅色' to 2nd custom customer field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info 2

  @C3766 @EAT-1371
  Scenario: I can input different string in order search bar to search the order
    Given I am on Orders Page
    And I input "1999/04/01" to search field
    Then I should see no matched result

    Given I am on Orders Page
    And I input "Male" to search field
    Then I should see no matched result

    Given I am on Orders Page
    And I input order number to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number

    And I input name to search field
    Then I should see row of order links 
    Then 1st row of order links should contain order number 2
    Then 2nd row of order links should contain order number

    And I input phone to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number 2
    Then 2nd row of order links should contain order number

    And I input email to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number 2
    Then 2nd row of order links should contain order number

    And I select search dropdown option included "Custom Fields Search" of search dropdown
    And I input '紅' to search field
    Then I should see row of order links 
    Then 1st row of order links should contain order number 2
    Then 2nd row of order links should contain order number

    And I input '色' to search field
    Then I should see row of order links 
    Then 1st row of order links should contain order number 2
    Then 2nd row of order links should contain order number

    And I input '深' to search field
    Then I should see row of order links 
    Then 1st row of order links should contain order number
    Then row of order links should not contain order number 2

    Given I am on Orders Page
    And I input "1st Product for Checkout" to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order no should equal to order number
    And I click on customer form edit button
    And I fill "testQE456" to 1st customer custom field
    And I fill "red" to 2nd customer custom field
    And I click on customer save button
    Then I should see alert
    Then 1st customer custom field should contain "testQE456"
    Then 2nd customer custom field should contain "red"

    Given I am on Orders Page
    And I input "5th Product for Checkout" to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number 2
    And I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order no should equal to order number 2
    And customer name should contain name
    And customer phone should contain phone
    And customer email should contain email
    And I click on customer form edit button
    And I fill "John" to name field
    And I fill "testuser+1234567890@shoplineapp.com" to email field
    And I fill "0987666666" to phone field
    And I fill "testQE123" to 1st customer custom field
    And I fill "dark red" to 2nd customer custom field
    And I click on customer save button
    Then I should see alert
    Then name field should contain "John"
    Then email field should contain "testuser+1234567890@shoplineapp.com"
    Then phone field should contain "0987666666"
    Then 1st customer custom field should contain "testQE123"
    Then 2nd customer custom field should contain "dark red"

    Given I am on Orders Page
    And I select search dropdown option included "Custom Fields Search" of search dropdown
    And I input "testQE" to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number 2
    Then 2nd row of order links should contain order number
    And I input "testQE123" to search field
    Then I should see row of order links
    Then row of order links should contain order number 2

    And I input "red" to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number 2
    Then 2nd row of order links should contain order number

    And I input "dark red" to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number 2

    And I input "dark testQE123" to search field
    Then I should see row of order links
    Then 1st row of order links should contain order number 2

    Given I am on Orders Page
    And I input "est" to search field
    Then I should see no matched result

    And ---ROLL BACK---
    Given I am on Customer Settings Page
    Then I should see checkout include
    And I click on 1st checkout include
    And I click on 2nd checkout include
    And I click on update button
    Then I should be redirected to Customer Settings Page
    And I scroll down to add button
    And I click on delete custom button
    And I click on OK button
    And I click on delete custom button
    And I click on OK button
    And I click on update button
    Then I should be redirected to Customer Settings Page
    Then limit counter should contain "0 / 5"