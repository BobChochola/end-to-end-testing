@BaseCase @Admin @Storefront @Setting @Product @Tax @checkProductCreateEditHaveTaxToggleAndTaxesSettingAllShopsNeedTaxToggle
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature: Check Product Create/Edit Page have-tax Toggle And Taxes Setting Page all-shops-need-tax Toggle
  As a merchant
  I can set tax rate to all products or part of products.

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

    Given I am on Taxes Setting Page
    When I click on add region button
    Then I should see tax area popover
    When I click on country item included 'Taiwan'
    When I click edit button for the same order of row of country list included 'Taiwan'
    Then I should be redirected to Taxes Setting Edit Page
    Then auto tax rates toggle should not be checked
    And I fill 'taiwan tax' to tax name field
    And I fill '10' to tax rate field
    Then I click on update button
    Then I should see alert
    Then I should be redirected to Taxes Setting Page
    Then country list should contain 'Taiwan'
    Then row of country list included 'Taiwan' and same order of row of sale tax should also contain '10%'
    Then row of country list included 'Taiwan' and same order of row of freight tax should also contain '-'

  @EAT-971 @EAT-971-1
  Scenario: All-shops-need-Tax toggle on and should not see have-tax toggle.(Check no, one, two layer)
    Given I am on Taxes Setting Page
    When I check and click all shop need tax toggle off
    Then I should see popover
    Then popover should contain 'Apply tax to all shop products'
    Then I click on confirm button
    Then all shop need tax toggle should be checked

    Given I am on Product Create Page
    And I click on quantity and pricing tab
    Then additional consumption tax label should contain 'Applied to All'

    Given I am on Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    Then additional consumption tax label should contain 'Applied to All'
    Given I am on Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st row of product list should contain '18th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    Then additional consumption tax label should contain 'Applied to All'
    Given I am on Product Index Page
    When I input '10th Product for Checkout' to search field
    Then 1st row of product list should contain '10th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    Then additional consumption tax label should contain 'Applied to All'

    Given I am on Shop Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$30'
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$100'
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$50'
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    Then I scroll down to tax fee
    Then tax fee should contain 'NT$18'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then I should see tax fee
    Then tax fee should contain 'NT$18'
    When I hover over tax fee icon
    Then tax fee popover should contain 'Taiwan'
    Then tax fee popover should contain 'tax 10%'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then I input order number to search field
    And I wait for 10 seconds for loading
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see tax fee
    Then tax fee should contain 'NT$18'
    And I click on product details edit button
    Then I should see product details edit reminder
    Then I click on reminder ok button
    And I should see add product button
    And I click on add product button
    Then I should see product of product list
    And I input "1st Product for Checkout" to search field
    Then I should see product of product list
    Then 1st product of product list should contain '1st Product for Checkout'
    And I click on 1st product of product list
    And I click on popup save button
    Then tax fee should contain 'NT$18'
    And I click on product details save button
    Then I should see confirm popover
    And I click on yes button
    Then tax fee should contain 'NT$18'

    And ---ROLL BACK---
    Given I am on Taxes Setting Page
    Then I check and click all shop need tax toggle on
    Then all shop need tax toggle should not be checked
    And I click remove button for the same order of row of country list included 'Taiwan'
    Then I should see popover
    Then I click on remove area checkbox
    Then I click on remove confirm button

  @EAT-971 @EAT-971-2
  Scenario: All-shops-need-Tax toggle off and should not see 'Applied to All' label.(Check no, one, two layer)
    Given I am on Taxes Setting Page
    Then I should see all shop need tax toggle off

    Given I am on Product Create Page
    And I click on quantity and pricing tab
    Then I should see additional consumption tax toggle off

    Given I am on Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    Then additional consumption tax area should not contain 'Applied to All'
    When I check and click additional consumption tax toggle off
    Then additional consumption tax area should not contain 'Applied to All'
    Then additional consumption tax toggle should be checked
    When I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st row of product list should contain '18th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    When I check and click additional consumption tax toggle off
    Then additional consumption tax area should not contain 'Applied to All'
    Then additional consumption tax toggle should be checked
    When I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page
    When I input '10th Product for Checkout' to search field
    Then 1st row of product list should contain '10th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    When I check and click additional consumption tax toggle off
    Then additional consumption tax area should not contain 'Applied to All'
    Then additional consumption tax toggle should be checked
    When I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page

    Given I am on Shop Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$30'
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$100'
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$50'
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '2nd Product for Checkout' to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$1'
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$50'
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input '9th Product for Checkout' to search field
    Then 1st product of products list should contain '9th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain 'NT$99'
    And I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    Then I scroll down to tax fee
    Then tax fee should contain 'NT$18'
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill new email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then I should see tax fee
    Then tax fee should contain 'NT$18'
    When I hover over tax fee icon
    Then tax fee popover should contain 'Taiwan'
    Then tax fee popover should contain 'tax 0% ~ 10%'
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then I input order number to search field
    And I wait for 5 seconds for loading
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see tax fee
    Then tax fee should contain 'NT$18'

    And ---ROLL BACK---
    Given I am on Taxes Setting Page
    Then I should see all shop need tax toggle off
    And I click remove button for the same order of row of country list included 'Taiwan'
    Then I should see popover
    Then I click on remove area checkbox
    Then I click on remove confirm button

    Given I am on Product Index Page
    When I input '1st Product for Checkout' to search field
    Then 1st row of product list should contain '1st Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    When I check and click additional consumption tax toggle on
    Then additional consumption tax toggle should not be checked
    When I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page
    When I input '18th Product for Checkout' to search field
    Then 1st row of product list should contain '18th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    When I check and click additional consumption tax toggle on
    Then additional consumption tax toggle should not be checked
    When I click on update button
    Then I should see alert
    Then I should be redirected to Product Index Page
    When I input '10th Product for Checkout' to search field
    Then 1st row of product list should contain '10th Product for Checkout'
    Then I click on 1st row of edit button
    Then I should be redirected to Product Edit Page
    When I click on quantity and pricing tab
    When I check and click additional consumption tax toggle on
    Then additional consumption tax toggle should not be checked
    When I click on update button
    Then I should see alert