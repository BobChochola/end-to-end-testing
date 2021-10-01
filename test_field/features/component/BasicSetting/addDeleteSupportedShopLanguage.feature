@BaseCase @Admin @Storefront @BasicSetting @addDeleteSupportedShopLanguage @fixture-shop @fixture-lang-fr
Feature: Add and Delete Supported Shop Language
  As a merchant
  I want to Add and Delete Support Shop Language
  So that I can control language displaying on shop 

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1221 @EAT-1221-1 @EAT-1221-1-1
  Scenario: Add and Delete Supported Shop Language And I should Have At lease 2 languages
    Given I am on Basic Setting Page
    And I should see 2 selected language
    When I select shop supported language dropdown option included 'French' of shop supported language dropdown
    Then chosen language should contain 'French'
    When I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Home Page
    Then I select language dropdown option included 'Le français' of language dropdown
    Then navigation bar should contain 'Accueil'

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see hide specific language button
    When I click on hide specific language button
    Then I should see popover
    Then popover should contain 'French'

    Given I am on Basic Setting Page
    When I click on 2nd selected language delete button
    Then I should see popover
    And popover should contain 'On storefront, this language option will not be on the dropdown list of language selector'
    When I click on confirm delete button
    Then I should see 2 selected language
    When I click on 1st selected language delete button
    Then I should see lease two language error message
    Then lease two language error message should contain 'At lease 2 languages are required'
    When I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Shop Home Page
    Then I click on language dropdown
    Then all language dropdown options should not contain 'Le français'

    Given I am on Design Page
    When I click on advanced setting tab
    Then I should see hide specific language button
    When I click on hide specific language button
    Then I should see popover
    Then popover should not contain 'French'
    Then ---I NEED TO ROLLBACK Advanced Setting Page and Basic Setting Page language---

  @EAT-1221 @EAT-1221-1 @EAT-1221-1-2
  Scenario: Delete Shop Default Language And I Should see error popup
    Given I am on Basic Setting Page
    And I should see 2 selected language
    When I select shop supported language dropdown option included 'French' of shop supported language dropdown
    Then chosen language should contain 'French'
    When I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Basic Setting Page
    When I select shop custom language dropdown option included 'French' of language dropdown
    When I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Basic Setting Page
    When I click on 2nd selected language delete button
    Then I should see popover
    Then popover should contain 'Cannot delete default language French'
    When I click on confirm delete button
    Then I should see 3 selected language

    And ---ROLL BACK---
    When I select shop custom language dropdown option included 'English' of language dropdown
    When I click on basic info update button
    Then I should be redirected to Dashboard Page

    Given I am on Basic Setting Page
    Then language dropdown should contain 'English'
    Then 3rd selected language should contain 'French'
    When I click on 2nd selected language delete button
    Then I should see popover
    When I click on confirm delete button
    Then I should see 2 selected language
    When I click on basic info update button
    Then I should be redirected to Dashboard Page