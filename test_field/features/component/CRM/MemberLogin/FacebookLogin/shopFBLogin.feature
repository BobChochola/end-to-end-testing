@PostTest @PreTest @MesQuickTest @BaseCase2 @Storefront @CRM @MemberLogin @FacebookLogin @shopFBLogin @fixture-shop @fixture-facebook
Feature: Login Feature
  As a vistor to Shopline website
  I want to use my Facebook to login in the shop login page

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

    # Given I am on Customer Settings Page
    # Then I should see fb app ID field
    # Then I mark the value of fb app ID field as variable fb ID

    Given I am on Facebook Page
    Then I wait for 5 seconds for uploading
    Then I should see email field
    Then I should see password field
    When I fill fb login email to email field
    And I input fb login password to password field
    And I check and click yes button
    Then I should see home button

    # Given I am on Facebook Developer Page
    # Then I should see app secret button
    # Then app secret button should contain "Show"
    # And I click on app secret button
    # Then app secret button should contain "Reset"
    # Then I click on app secret button
    # Then I should see popover
    # And I fill fb password to password field
    # And I click on submit button
    # Then I should see popover
    # Then popover should contain "Reset App Secret?"
    # Then I click on submit button included "Reset"
    # And I wait for 5 seconds for reset
    # Then I mark the value of secret field as variable secret code
    # Then I click on save changes button
    # Then secret field should contain "●●●●●●●●"

    # Given I am on Customer Settings Page
    # Then I should see fb app secret field
    # And I fill random code to fb app secret field
    # Then I scroll down to update button
    # And I click on update button
    # Then fb app secret field should contain random code


  @C3793
  Scenario: Authorize the Shopline website and login by my Facebook
    Given I am on Shop Login Page
    When I click on fb login button
    #下面這行是首次登入該店家的fb帳號才需要執行確認授權
    Then I check and click facebook login confirm button

    Then I should be redirected to Shop Home Page
    And I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then I should see facebook banner
    And ---ROLL BACK---
    When I click on logout button
    And I should not see member center button