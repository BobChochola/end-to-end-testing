@BaseCase @Admin @Storefront @Promotion @AffiliateCampaign @affiliateCheckoutAndBeCountedWithoutPromotion
@fixture-shop @fixture-product @fixture-payment @fixture-delivery
Feature: Affiliate campaign checkout and be counted without promotion
  As a customer
  I can checkout successfully with affiliate campaign code

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-923 @EAT-924 @EAT-924-1
  Scenario: Checkout and be counted with affiliate campaign link
    Given I am on Affiliate Campaign Create Page
    When I fill '(dirty data) Affiliate campaign checkout without promotion' to name field
    And I click on countinue to button
    Then I should see condition field
    When I fill '90' to condition field
    And I click on fixed amount radio
    Then I should see fixed amount value field
    When I fill '10' to fixed amount value field
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    Then I should see affiliate code field
    When I fill 'shoplineqe' to affiliate code field
    Then affiliate link should contain 'shoplineqe'
    When I click on preview button
    Then I should see affiliate link field
    When I mark the value of affiliate link field as variable affiliate link
    And I click on publish button
    Then I should be redirected to Affiliate Campaign Index Page
    Then I should see alert
    Then I should see row of affiliate campaign
    Then row of affiliate campaign should contain 'Affiliate campaign checkout without promotion'

    When I open new tab and redirect to affiliate link
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    When I switch to 1 of tabs
    Then I should be redirected to Affiliate Campaign Index Page
    When I click on usage record button
    Then I should be redirected to Affiliate Usage Record Page
    Then row of order list should contain order number

    And ---ROLL BACK---
    Given I am on Affiliate Campaign Index Page
    When I click on row of affiliate campaign checkbox
    Then I should see bulk action dropdown
    When I select bulk action dropdown option included 'Delete' of bulk action dropdown
    Then I should see popover
    When I click on delete checkbox
    And I click on delete ok button
    Then I should not see popover
    Then affiliate campaign table should not contain 'Affiliate campaign checkout without promotion'

  @EAT-924 @EAT-924-2
  Scenario: Checkout when enter wrong affiliate code
    Given I am on Affiliate Campaign Create Page
    When I fill '(dirty data) Affiliate campaign checkout without promotion' to name field
    And I click on countinue to button
    Then I should see condition field
    When I fill '90' to condition field
    And I click on fixed amount radio
    Then I should see fixed amount value field
    When I fill '10' to fixed amount value field
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    Then I should see affiliate code field
    When I fill 'shoplineqe' to affiliate code field
    Then affiliate link should contain 'shoplineqe'
    When I click on preview button
    Then I should see affiliate link field
    And I click on publish button
    Then I should be redirected to Affiliate Campaign Index Page
    Then I should see alert
    Then I should see row of affiliate campaign
    Then row of affiliate campaign should contain 'Affiliate campaign checkout without promotion'

    When I open new tab and redirect to wrong affiliate campaign link
    When I switch to 2 of tabs
    Then I should be redirected to Shop Home Page
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "18th Product for Checkout" to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on become member checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    When I switch to 1 of tabs
    Then I should be redirected to Affiliate Campaign Index Page
    When I click on usage record button
    Then I should be redirected to Affiliate Usage Record Page
    Then I should not see row of order list

    And ---ROLL BACK---
    Given I am on Affiliate Campaign Index Page
    When I click on row of affiliate campaign checkbox
    Then I should see bulk action dropdown
    When I select bulk action dropdown option included 'Delete' of bulk action dropdown
    Then I should see popover
    When I click on delete checkbox
    And I click on delete ok button
    Then I should not see popover
    Then affiliate campaign table should not contain 'Affiliate campaign checkout without promotion'