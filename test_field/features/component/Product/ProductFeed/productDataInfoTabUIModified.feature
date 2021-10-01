@BaseCase @Admin @Product @ProductFeed @productDataInfoTabUIModified @fixture-product-info
Feature: Product data info tab UI modified
  As a user of Shopline
  I want to see FAQ link and words changing to product data info tab

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

  Scenario: Product with var
    Given I am on Product Create Page
    And I click on tab included "Quantity & Pricing"
    Then I should not see brand field
    Then I should not see mpn field
    Then I should not see barcode field
    And I click on tab included "Variations"
    And I click on variations toggle
    And I input "R" to add options field
    And I input "G" to add options field
    And I click on tab included "Product Feed Data"
    Then I should see faq button
    When I click on faq button
    And I switch to 2 of tabs
    Then I should be redirected to Faq Page
    And I switch to 1 of tabs
    Then I should be redirected to Product Create Page
    When I click on Language
    And I click on ZH
    Then Language should contain "中文(繁)"
    Then product identifier info should equal to "產品資訊"
    Then I wait for 3 seconds for loading
    Then product identifier title should contain "製造編號 (MPN)"
    Then product identifier title should contain "商品條碼編號 (Barcode)"