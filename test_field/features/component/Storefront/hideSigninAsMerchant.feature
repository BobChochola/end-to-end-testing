@BaseCase @Storefront @hideSigninAsMerchant @fixture-shop
Feature: HideSign-in-as-merchantOnMemberSignInPageOnStorefront
  As a vistor to Shopline website
  I should not see "Sign in as merchant" on member sign in page
  as it's not a proper message for customers.

  @SL-3827
  Scenario: HideSign-in-as-merchant
    Given I am on Shop Login Page
    Then I should not see Sign-in-as-merchant links-container
