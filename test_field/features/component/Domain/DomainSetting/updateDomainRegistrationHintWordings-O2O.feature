@BaseCase @Admin @Storefront @Domain @DomainSetting @updateDomainRegistrationHintWordings-O2O @fixture-o2o-plan
Feature: check different plan apply customer domain popup wording - O2O
  As a shopline
  I want to check apply customer domain popup wording every plan

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

  @EAT-1169 @EAT-1169-1 @EAT-1169-1-3
  Scenario: check different plan apply customer domain popup wording - O2O
    Given I am on Domain Settings Page
    Then I should see domain progress result
    Then domain progress result should contain "Your custom domain will activate within 2 days after you upgrade to specific paid plan. If you want more than 1 domain or change your domain, please contact us and handling fees will apply."
    And I select ZH of language dropdown
    Then domain progress result should contain "升級到指定計畫後，網址兩天內會啓用。如果你是想申請超過 1 個網址或更改網址，請聯絡我們 (需要支付手續費)。"