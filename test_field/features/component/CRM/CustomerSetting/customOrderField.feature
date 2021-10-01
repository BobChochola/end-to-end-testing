@BaseCase @ImageService @Admin @CRM @CustomerSetting @customOrderField
Feature: Add reminder to prevent merchants from changing order custom field name casually
  As a user of Shopline
  I want to edit  custom order field and custom field
  So that the field can be updated, then I will see the reminder
  If it is a new field is added, there is no reminder.

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

  @EAT-587 @EAT-587-1
  Scenario: check customer setting custom field reminder
    Given I am on Customer Settings Page
    When I click on add button
    And I scroll down to update button
    And I should see Field Name field
    And I fill name to Field Name field
    Then I should not see custom name error
    And I fill hint to Field Hint field
    And I click on update button
    And I scroll down to update button
    And I should see Field Name field
    And I fill 'test update' to Field Name field
    Then custom name error should contain Note 
    When I select language dropdown option included '繁' of language dropdown
    Then custom name error should contain Note ZH
    And I click on update button
    And I scroll down to update button
    Then Field Name field should contain 'test update'

    Given I am on Customer Settings Page
    When I click on 2nd custom order tab
    And I scroll down to update button
    And I should see Field Name field
    And I fill name to Field Name field
    And I fill hint to Field Hint field
    And I click on update button
    And I scroll down to update button
    And I should see Field Name field
    And I fill 'test update' to Field Name field
    Then custom name error should contain Note 
    When I select language dropdown option included '繁' of language dropdown
    Then custom name error should contain Note ZH
    And I click on update button
    And I scroll down to update button
    Then Field Name field should contain 'test update'
    And ---ROLL BACK---
    Given I am on Customer Settings Page
    Then I should see delete custom button
    When I click on delete custom button
    And I click on OK button
    And I should not see Field Name field
    And I click on update button
    And I should not see Field Name field

  @EAT-587 @EAT-587-2
  Scenario: check order setting custom field reminder
    Given I am on Order Setting Page
    When I click on add field button
    And I scroll down to update button
    And I should see custome name field
    And I fill name to custome name field
    And I fill hint to custome hint field
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    And I scroll down to update button
    And I should see custome name field
    And I fill 'test update' to custome name field
    Then custom name error should contain Note 
    When I select language dropdown option included '繁' of language dropdown
    Then custom name error should contain Note ZH
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Order Setting Page
    And I scroll down to update button
    Then custome name field should contain 'test update'
    When I click on 2nd custom order tab
    And I scroll down to update button
    And I should see custome name field
    And I fill name to custome name field
    And I fill hint to custome hint field
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    And I scroll down to update button
    And I should see custome name field
    And I fill 'test' to custome name field
    Then custom name error should contain Note
    When I select language dropdown option included '繁' of language dropdown
    Then custom name error should contain Note ZH
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    And I scroll down to update button
    Then custome name field should contain 'test'
    And ---ROLL BACK---
    Then I should see delete field button
    When I click on delete field button
    And I should not see custome name field
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    And I should not see custome name field

  @Storefront @EAT-926 @fixture-shop @fixture-product
  Scenario: check order setting custom note reminder
    Given I am on Order Setting Page
    When I click on add field button
    And I scroll down to update button
    And I select Note of Custom Field dropdown
    And I should see display note field
    When I fill custom note with css to display note field
    And I click on update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Product Index Page
    When I input "15th Product for Checkout" to search field
    Then 1st product of products list should contain "15th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I should see custom remark panel
    Then I should see custom remark wording
    Then custom remark wording should contain 'shoplineqe'
    And I scroll down to proceed to checkout button
    Then I should see custom remark image
    Then I should have image custom image for custom remark image

    And ---ROLL BACK---
    Given I am on Order Setting Page
    And I scroll down to update button
    Then I should see delete field button
    When I click on delete field button
    And I should not see display note field
    And I click on update button
    Then I should be redirected to Dashboard Page
    Given I am on Order Setting Page
    And I should not see display note field