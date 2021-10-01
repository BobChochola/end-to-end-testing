@BaseCase @Admin @Order @OrderEdit @orderEditProductAdd
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @C4886 @EAT-726
Feature: Can add other product in order details
  As a merchant
  I want to add other product in order show page
  So that I can add new item in the order

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

    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "CustomDelivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank" of payment method dropdown
    And I wait for 3 seconds for loading
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
    Then I mark the value of order confirm info as variable order info

    Given I am on Product Index Page
    When I input '4th Product for Checkout' to search field
    Then 1st row of product list should contain '4th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    And I click on variations toggle
    Then I should see add options field
    And I input 'G' to add options field
    Then I should see remove row of variation tags
    Then I scroll down to add button
    And I click on update button
    Then I should be redirected to Product Index Page
    Then I should see alert

  @EAT-726-2 @EAT-726-2-1
  Scenario:  I can add / delete product in order details
    Given I am on Orders Page
    And I input order number to search field
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    When I click on add product button
    Then I should see product of product list
    When I input "1st Product for Checkout" to search field
    Then I should see product of product list
    Then 1st product of product list should contain '1st Product for Checkout'
    When I click on 1st product of product list
    And I click on popup save button
    And I fill "3" to 2nd product quantity field
    Then I should see 2 product quantity reminder
    When I click on add product button
    Then I should see product of product list
    When I input "17th Product for Checkout" to search field
    Then I should see product of product list
    Then 1st product of product list should contain '17th Product for Checkout'
    When I click on 1st product of product list
    And I click on popup save button
    Then I click on color dropdown option included 'Blue'
    Then I should see 3 product quantity field
    When I fill "3" to 3rd product quantity field
    Then I should see 3 product quantity reminder

    When I click on add product button
    Then I should see product of product list
    When I input '4th Product for Checkout' to search field
    Then I should see product of product list
    Then 1st product of product list should contain '4th Product for Checkout'
    When I click on 1st product of product list
    And I click on popup save button
    Then I click on 2nd color dropdown option included 'G'
    Then I should see 4 product quantity field
    When I fill "3" to 4th product quantity field
    Then I should see 4 product quantity reminder

    Then outstanding amount should equal to "NT$150"
    When I click on product details save button
    Then I should see confirm popover
    When I click on yes button
    Then total should contain "NT$190"

    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    Then I should see 4 product quantity field
    When I click on delete product button
    And I should see delete product ok button
    And I click on delete product ok button
    When I click on 3rd delete product button
    And I should see delete product ok button
    And I click on 3rd delete product ok button
    Then I should see 2 product quantity field
    Then order refund should equal to 'NT$40'
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain 'NT$150'
    And I should see alert
    And alert should contain 'Product Details Updated Successfully'

    And ---ROLL BACK---
    Given I am on Product Index Page
    When I input '4th Product for Checkout' to search field
    Then 1st row of product list should contain '4th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    When I click on variations toggle
    Then I should see popover
    When I click on ok button
    Then variations toggle should not be checked
    When I click on update button
    Then I should be redirected to Product Index Page
    Then I should see alert