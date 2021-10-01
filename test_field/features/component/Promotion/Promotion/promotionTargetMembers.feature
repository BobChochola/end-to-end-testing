@BaseCase @Admin @Storefront @Promotion @promotionTargetMembers
@fixture-payment @fixture-delivery @fixture-product @fixture-shop
Feature:Creare promotion select memebers group
  As a merchant
  ckeck promotion select memebers group
  can apply it
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

  @EAT-634 @EAT-634-4
  Scenario: Promotion target Members, one Promotion
    Given I am on Promotion Create Page
    And I fill "(dirty data) All Shop 10% off" to name field
    And I fill "10" to promotion value field
    And I click on countinue to button
    And I click on target group checkbox included 'memberOnly'
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill "1" to times of use field
    And I click on 3rd countinue to button
    And I click on preview button
    Then promotion name should equal to "(dirty data) All Shop 10% off"
    Then target group should equal to "All Members"
    Then discount summary should equal to "Get 10% off on Entire Order"
    Then total usage limit should equal to "1 time(s)"
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Promotion Index Page
    Given I am on Free Shipping Index Page
    When I click on add promotion button
    Then I should be redirected to Free Shipping Create Page
    When I fill "(dirty data)test free" to name field
    And I click on 1st countinue to button
    And I click on 2nd countinue to button
    And I click on 3rd countinue to button
    And I click on preview button
    And I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    Then I should see alert

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    Then applied promotion should contain "All Shop 10% off"
    Then applied promotion should contain "(dirty data)test free"
    Then total list should contain "NT$27"
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page

    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    Then applied promotion should not contain "All Shop 10% off"
    Then applied promotion should contain "test free"
    Then total list should contain "NT$30"
    And ---ROLL BACK---
    Then I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message
    Then empty message should contain "Your shopping cart is empty"
    Given I am on Promotion Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert
    Given I am on Free Shipping Index Page
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert