@BaseCase @Storefront @userAddressAssertion @fixture-shop
Feature: Check user profile address show error msg
  As a vistor to Shopline website
  I want to Login in the shop login page

  @userAddressAssertion-1
  Scenario: Check address input assertion
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on add new address button
    Then I should see recipient name field
    When I fill name to recipient name field
    And I fill phone to recipient phone number field
    And I select recipient address dropdown option included "Taiwan" of 1st recipient address dropdown
    And I wait for 5 seconds for loading
    And I click on save button
    Then I should see field error message
    Then 1st field error message should contain "City is required"
    Then 2nd field error message should contain "District is required"
    Then 3rd field error message should contain "Address is required"
    When I select recipient address dropdown option included "Taipei" of 2nd recipient address dropdown
    And I click on save button
    Then I should see field error message
    Then 1st field error message should contain ""
    Then 2nd field error message should contain "Address is required"
    Then I select recipient address dropdown option included '100 Zhongzheng District' of 3rd recipient address dropdown
    And I click on save button
    Then I should see field error message
    Then 1st field error message should contain "Address is required"

  @userAddressAssertion-2
  Scenario: user profile address add successfully
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on add new address button
    Then I should see recipient name field
    When I fill name to recipient name field
    And I fill phone to recipient phone number field
    And I select recipient address dropdown option included "Taiwan" of 1st recipient address dropdown
    When I select recipient address dropdown option included "Taipei" of 2nd recipient address dropdown
    When I select recipient address dropdown option included "100 Zhongzheng District" of 3rd recipient address dropdown
    And I fill address to recipient address field
    And I click on save button
    Then I should see save successfully message
    And ---ROLL BACK---
    When I click on remove address button
    And I click on save button
    Then I should see save successfully message