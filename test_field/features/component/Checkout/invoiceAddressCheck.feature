@BaseCase @Admin @Checkout @Storefront @Invoice @invoiceAddressCheck
@fixture-shop @fixture-product @fixture-delivery @fixture-payment @premiumFeature @EAT-500
Feature: Invoice address revamp in checkout page
  As a customer
  I can use invoice address when i checkout

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
    Given I am on Order Setting Page
    When I check and click invoice toggle off
    And I should see Nat No field
    And I fill Nat No to Nat No field
    And I select Donation Recipient of Donation Recipient dropdown
    And I fill 'SLINE02' to website code field
    And I fill '4DDC6C4EE' to api password field
    And I select tax type dropdown option included 'Taxable' of tax type dropdown
    Then I should see update button
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

  @EAT-500-1
  Scenario: Invoice address revamp in checkout page - Uniform invoice with Same as receiver address
    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I scroll down to einvoice dropdown
    Then I select einvoice dropdown option included 'Uniform invoice' of einvoice dropdown
    And I should see company invoice buyer name field
    And I fill 'Dog And Cat' to company invoice buyer name field
    And I fill '24973192' to company invoice tax id field
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then invoice type request should contain 'Uniform invoice'
    Then invoice company name should contain 'Dog And Cat'
    Then invoice tax id should contain '24973192'
    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-500-2
  Scenario: Invoice address revamp in checkout page - Uniform invoice with Saved delivery address
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on add new address button
    Then I should see recipient name field
    When I fill name to recipient name field
    And I fill phone to recipient phone number field
    And I select recipient address dropdown option included "Taiwan" of 1st recipient address dropdown
    And I select recipient address dropdown option included "Taipei" of 2nd recipient address dropdown
    And I select recipient address dropdown option included "100" of 3rd recipient address dropdown
    And I fill address to recipient address field
    And I click on save button
    Then I should see save successfully message
    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    When I click on 1st product of products list
    
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Local Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill phone to contact number field
    And I click on save number checkbox
    And I scroll down to einvoice dropdown
    Then I select einvoice dropdown option included 'Uniform invoice' of einvoice dropdown
    And I should see company invoice buyer name field
    And I fill 'Blue And Red' to company invoice buyer name field
    And I fill '24973192' to company invoice tax id field
    And I click on saved delivery address button
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then invoice type request should contain 'Uniform invoice'
    Then invoice company name should contain 'Blue And Red'
    Then invoice tax id should contain '24973192'
    Then invoice address should contain 'Taiwan'
    Then invoice address should contain 'Taipei'

    And ---ROLL BACK---
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    And I should see remove address button
    And I click on remove address button
    When I click on save button
    Then I should see save successfully message
    And I should not see remove address button
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-500-3
  Scenario: Invoice address revamp in checkout page - Uniform invoice with New Address
    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I scroll down to einvoice dropdown
    Then I select einvoice dropdown option included 'Uniform invoice' of einvoice dropdown
    And I should see company invoice buyer name field
    And I fill 'Shopname' to company invoice buyer name field
    And I fill '24973192' to company invoice tax id field
    When I click on invoice new address button
    Then I should see invoice country dropdown
    And I select invoice country dropdown option included 'Taiwan' of invoice country dropdown
    And I select invoice city dropdown option included 'New Taipei City' of invoice city dropdown
    Then I should not see company invoice address field
    When I select invoice district dropdown option included '208 Jinshan District' of invoice district dropdown
    Then I should see company invoice address field
    And I fill 'Jinshan District' to company invoice address field
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then invoice type request should contain 'Uniform invoice'
    Then invoice company name should contain 'Shopname'
    Then invoice tax id should contain '24973192'
    Then invoice address should contain 'Taiwan'
    Then invoice address should contain 'New Taipei City'
    Then invoice address should contain '208'
    Then invoice address should contain 'Jinshan District'
    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page

  @EAT-500-4
  Scenario: Invoice address revamp in checkout page - Duplicate Uniform Invoice with New Address
    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Custom' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I scroll down to einvoice dropdown
    Then I select einvoice dropdown option included 'Duplicate Uniform Invoice' of einvoice dropdown
    When I click on invoice new address button
    Then I should see invoice country dropdown
    And I select invoice country dropdown option included 'Taiwan' of invoice country dropdown
    And I select invoice city dropdown option included 'Keelung City' of invoice city dropdown
    Then I should not see company invoice address field
    When I select invoice district dropdown option included '202 Zhongzheng District' of invoice district dropdown
    Then I should see company invoice address field
    And I fill 'Zhongzheng Roads' to company invoice address field
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then invoice type request should contain 'Duplicate Uniform Invoice'
    Then invoice address should contain 'Taiwan'
    Then invoice address should contain 'Keelung City'
    Then invoice address should contain '202'
    Then invoice address should contain 'Zhongzheng Roads'
    And ---ROLL BACK---
    Given I am on Order Setting Page
    When I click on invoice toggle
    And I click on update button
    Then I should be redirected to Dashboard Page