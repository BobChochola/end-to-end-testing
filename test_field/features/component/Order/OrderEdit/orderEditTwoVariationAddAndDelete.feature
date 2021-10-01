@BaseCase @Admin @Storefront @Order @OrderEdit @orderEditTwoVariationAddAndDelete @fixture-shop @fixture-delivery @fixture-payment @EAT-726
Feature: Edit order after changing product variation
  As a merchant
  I want to edit order after changing the product variation from two to none
  So that I can edit the oder successfully

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

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    Then I scroll down to id
    And I click on info tab
    And I fill '(dirty data) Product with two variation' to english name field
    Then I scroll down to add button
    And I click on quantity and pricing tab
    And I fill '10' to regular price field
    And I click on unlimited quantity checkbox
    And I click on variations tab
    And I click on variations toggle
    And I input 'R' to add options field
    When I click on add variation button
    Then I should see 2 add options field
    And I input 'G' to 2nd add options field
    Then I should see 2 remove row of variation tags
    Then I scroll down to add button
    And I click on add button
    Then I should see alert
    Then I should be redirected to Product Edit Page
    Given I am on Product Index Page
    Then 1st row of product list should contain 'Product with two variation'

    Given I am on Shop Product Index Page
    When I input 'Product with two variation' to search field
    Then 1st product of products list should contain 'Product with two variation'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I should see product quantity field
    When I fill "2" to product quantity field
    And I select variation option included 'R' of variation selector
    And I select variation option included 'G' of variation selector
    And I wait for 3 seconds for loading
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
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
    When I input 'Product with two variation' to search field
    Then 1st row of product name should contain 'Product with two variation'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on variations tab
    And I click on variations toggle
    Then I should see popover
    When I click on ok button
    Then variations toggle should not be checked
    And I scroll down to add button
    And I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page

  @EAT-726-3 @EAT-726-3-1
  Scenario: Order edit with adding new product and delete the original product
    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input 'Product with two variation' to search field
    Then 1st product of product list should contain 'Product with two variation'
    And I click on 1st product of product list
    And I click on popup save button
    Then I should not see color dropdown
    Then outstanding amount should equal to "NT$10"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$70"
    And alert should contain 'Product Details Updated Successfully'
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    Then I should see 3 product quantity field
    When I click on delete product button
    And I should see delete product ok button
    And I click on delete product ok button
    Then I should see 2 product quantity field
    When I click on 2nd delete product button
    And I should see delete product ok button
    And I click on 2nd delete product ok button
    Then I should see 1 product quantity field
    Then order refund should equal to 'NT$30'
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain 'NT$40'
    And I should see alert
    And alert should contain 'Product Details Updated Successfully'
    And ---ROLL BACK---
    Given I am on Product Index Page
    When I select product operations dropdown option included 'Delete' of product operations dropdown
    Then I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then 1st row of product list should not contain 'Product with two variation'