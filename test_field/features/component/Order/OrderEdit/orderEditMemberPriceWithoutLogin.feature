@BaseCase @Admin @Storefront @Order @OrderEdit @orderEditMemberPriceWithoutLogin @fixture-shop @fixture-payment @fixture-delivery
Feature:member price show when owner type is user
  As a merchant
  I want to published menber price to order edit

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
    And I click on info tab
    Then I should see english name field
    And I fill "(dirty data) 1st Member Product" to english name field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I click on variations same price checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    And I fill "50" to 1st row of variation price field
    And I fill "10" to 1st row of variation member price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    And I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    Then I should see english name field
    And I fill "(dirty data) 2nd Member Product" to english name field
    And I click on quantity and pricing tab
    And I fill "50" to regular price field
    And I fill "10" to member price field
    And I click on variations tab
    And I click on variations toggle
    When I input "R" to add options field
    And I click on variations same price checkbox
    Then I should see row of variation price field
    Then I should see row of variation member price field
    When I click on variations same price checkbox
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    And I should see alert
    Then I should be redirected to Product Edit Page

    Given I am on Product Create Page
    When I pick product photo to product photo selector
    Then I should see delete photo button
    And I click on info tab
    Then I should see english name field
    And I fill "(dirty data) 3rd Member Product" to english name field
    And I click on quantity and pricing tab
    And I fill "50" to regular price field
    And I fill "10" to member price field
    And I click on unlimited quantity checkbox
    And I scroll down to id
    And I click on add button
    And I should see alert
    Then I should be redirected to Product Edit Page

  @EAT-609 @EAT-609-1
  Scenario:unlogin checkbox on order edit
    Given I am on Shop Product Index Page
    When I input "1st Member Product" to search field
    Then 1st product of products list should contain '1st Member Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "1st Member Product"
    Then product info should contain "NT$50"
    Then product info should not contain "NT$10"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$50"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
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
    When I click on summary collapse
    Then row of product unit price should contain "NT$50"
    Given I am on Orders Page
    When I click on row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Member Product" to search field
    Then 1st product of product list should contain '1st Member Product'
    And I click on 1st product of product list
    And I click on popup save button
    And I select color dropdown option included "R" of color dropdown
    Then outstanding amount should equal to "NT$50"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$110"

    Given I am on Shop Product Index Page
    When I input "2nd Member Product" to search field
    Then 1st product of products list should contain '2nd Member Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "2nd Member Product"
    Then product info should contain "NT$50"
    Then product info should not contain "NT$10"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$50"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
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
    When I click on summary collapse
    Then row of product unit price should contain "NT$50"
    Given I am on Orders Page
    When I click on row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "2nd Member Product" to search field
    Then 1st product of product list should contain '2nd Member Product'
    And I click on 1st product of product list
    And I click on popup save button
    And I select color dropdown option included "R" of color dropdown
    Then outstanding amount should equal to "NT$50"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$110"

    Given I am on Shop Product Index Page
    When I input "3rd Member Product" to search field
    Then 1st product of products list should contain '3rd Member Product'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain "3rd Member Product"
    Then product info should contain "NT$50"
    Then product info should not contain "NT$10"
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then row of unit price should contain "NT$50"
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
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
    When I click on summary collapse
    Then row of product unit price should contain "NT$50"
    Given I am on Orders Page
    When I click on row of order links
    Then I should be redirected to Orders Show Page
    When I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "3rd Member Product" to search field
    Then 1st product of product list should contain '3rd Member Product'
    And I click on 1st product of product list
    And I click on popup save button
    Then outstanding amount should equal to "NT$50"
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    And total should contain "NT$110"
    And ---ROLL BACK---
    Given I am on Product Index Page
    Then I click on 1st row of product checkbox
    Then I click on 2nd row of product checkbox
    Then I click on 3rd row of product checkbox
    When I select delete selected of bulk actions dropdown
    And I should see delete confirmation popover
    And I click on delete checkbox
    And I click on confirm bulk button