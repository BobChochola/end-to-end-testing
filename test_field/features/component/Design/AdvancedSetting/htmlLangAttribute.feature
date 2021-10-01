@BaseCase @Admin @Storefront @Design @AdvancedSetting @htmlLangAttribute @fixture-layout-engine
Feature: HTML Lang Attribute
   Check layout engine(v1) & layout_v2 has html lang attribute

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

  Scenario: Layout engine(v1)
    Given I am on Code Editor Page
    And I click on menu item included "theme.liquid"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"
    And I click on menu item included "email.liquid"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "en"
    And I click on menu item included "404"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"
    And I click on menu item included "500"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"
    And I click on menu item included "closed"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"

  @fixture-layout-v2 @theme-kingsman
  Scenario: Layout engine(v2)
    Given I am on Code Editor Page
    And I click on menu item included "theme.liquid"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"
    And I click on menu item included "email.liquid"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "en"
    And I click on menu item included "404"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"
    And I click on menu item included "500"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"
    And I click on menu item included "closed"
    Then I should see save button
    Then attribute should contain "lang"
    Then string should contain "{{ shop.current_locale.code }}"