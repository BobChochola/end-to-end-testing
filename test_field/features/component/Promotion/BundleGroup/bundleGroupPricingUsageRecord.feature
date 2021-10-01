@BaseCase @Admin @Promotion @BundleGroup @Storefront @bundleGroupPricingUsageRecord @EAT-996
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-promotion @fixture-freegift
Feature: Checkout bundle group pricing usage record with all tier promotion
  As a merchant
  When I want to create bundle group promotion for my customer

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

    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

    Given I am on Bundle Pricing Index Page
    Then 1st tab should contain 'Bundle Pricing'
    Then 2nd tab should contain 'Bundle Group Pricing'
    When I select add promotion dropdown option included 'Bundle Group' of add promotion dropdown
    Then I should be redirected to Bundle Group Create Page
    And I fill '(dirty data) Buy 2 in Group A & 1 in Group B for $49' to name field
    When I fill '2' to group a field
    When I fill '1' to group b field
    When I fill '49' to price field
    Then discount summary should contain 'Purchase 2 items of Selected Products in Group A and 1 items of Selected Products in Group B for NT$49'
    And I should see group a tab
    Then select product button should contain 'Select Products in Group A'
    When I click on select product button
    Then I should see select product popup
    Then I input '6th Product for Checkout' to search field
    Then 1st product list should contain '6th Product for Checkout'
    Then I click on 1st checkbox of product list
    Then I input '10th Product for Checkout' to search field
    Then 1st product list should contain '10th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I input '18th Product for Checkout' to search field
    Then 1st product list should contain '18th Product for Checkout'
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '17th Product for Checkout'
    Then selected products should contain '18th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then stackable pricing should contain 'On'
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'

    Given I am on Bundle Pricing Create Page
    And I fill '(dirty data) Buy 2 for $40 Buy 3 for $55' to name field
    And I fill '2' to promotion value field
    And I fill '40' to discounted price field
    And I click on add benefits
    And I fill '3' to 2nd promotion value field
    And I fill '55' to 2nd discounted price field
    And I fill '12th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '12th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    And I fill '13th Product for Checkout' to search field
    And I click on search product button
    Then I should see select product popup
    Then 1st product of popover list should contain '13th Product for Checkout'
    And I click on 1st checkbox of product list
    When I click on popup confirm button
    Then I should see row of selected product
    Then 1st row of selected product should contain '12th Product for Checkout'
    Then 2nd row of selected product should contain '13th Product for Checkout'
    And I click on countinue to button
    When I click on 2nd countinue to button
    And I click on 3rd countinue to button
    When I click on preview button
    Then discount summary should contain 'Purchase 2 items of Selected Products for NT$40'
    Then discount summary should contain 'Purchase 3 items of Selected Products for NT$55'
    And I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 for $40 Buy 3 for $55'

    Given I am on Cart Add On Items Index Page
    When I click on add cart addon button
    Then I should be redirected to Cart Add On Items Create Page
    And I click on invalid date field
    Then I should see calendar table
    When I click on 3rd available date button
    And I click on done button
    And I fill "(dirty data) Add-on Item" to english name field
    When I click on select add on items button
    Then I should see search add on items field
    And I input "3rd Addon for Checkout" to search add on items field
    When I click on search button
    Then add on items name should contain "3rd Addon for Checkout"
    And I click on 1st add on items checkbox
    When I click on add on items save button
    Then I should see add on items price field
    And I fill '10' to add on items price field
    And I click on unlimited checkbox
    When I click on save button
    Then I should be redirected to Cart Add On Items Index Page
    Then I should see alert
    Then 1st row of cart addon list should contain "Add-on Item"
    Then 1st row of cart addon list should contain date

    Given I am on Promotion Index Page
    When I input "6th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '6th Promotion'
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    When I input "12th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '12th Promotion'
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert
    When I input "16th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '16th Free Gift Promotion'
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input "6th Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain '6th Free Shipping'
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @EAT-996 @EAT-996-1
  Scenario: checkout with all kind of promotion and check on Bundle Pricing History Page
    Given I am on Shop Product Index Page
    Then I input '2nd Product for Checkout' to search field
    Then 1st product of products list should contain '2nd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '3rd Product for Checkout' to search field
    Then 1st product of products list should contain '3rd Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '7th Product for Checkout' to search field
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '6th Product for Checkout' to search field
    Then 1st product of products list should contain '6th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '10th Product for Checkout' to search field
    Then 1st product of products list should contain '10th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page

    Then I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain '17th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '18th Product for Checkout' to search field
    Then 1st product of products list should contain '18th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '12th Product for Checkout' to search field
    Then 1st product of products list should contain '12th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    Then I click on add to cart button
    Then I should see cart panel

    Given I am on Shop Product Index Page
    Then I input '13th Product for Checkout' to search field
    Then 1st product of products list should contain '13th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    And I click on increase button
    And I click on increase button
    Then I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    Then I click on cart addon items button
    And I wait for 3 seconds for loading
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    Then I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then 1st row of product items should contain '2nd Product for Checkout'
    Then 1st row of product items should contain '6th Promotion'
    Then 1st row of product unit price should contain 'NT$1'
    Then 1st row of product quantity should equal to '1'
    Then 1st row of product items should contain 'NT$1'
    Then 2nd row of product items should contain '3rd Product for Checkout'
    Then 2nd row of product items should contain '6th Promotion'
    Then 2nd row of product unit price should contain 'NT$10'
    Then 2nd row of product quantity should equal to '1'
    Then 2nd row of product items should contain 'NT$10'
    Then 3rd row of product items should contain '7th Product for Checkout'
    Then 3rd row of product items should contain '6th Promotion'
    Then 3rd row of product unit price should contain 'NT$49'
    Then 3rd row of product quantity should equal to '2'
    Then 3rd row of product items should contain 'NT$98'
    Then 4th row of product items should contain '6th Product for Checkout'
    Then 4th row of product items should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 4th row of product unit price should contain 'NT$59'
    Then 4th row of product quantity should equal to '1'
    Then 4th row of product items should contain 'NT$59'
    Then 5th row of product items should contain '10th Product for Checkout'
    Then 5th row of product items should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 5th row of product unit price should contain 'NT$50'
    Then 5th row of product quantity should equal to '1'
    Then 5th row of product items should contain 'NT$50'
    Then 6th row of product items should contain '17th Product for Checkout'
    Then 6th row of product items should not contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 6th row of product unit price should contain 'NT$10'
    Then 6th row of product quantity should equal to '1'
    Then 6th row of product items should contain 'NT$10'
    Then 7th row of product items should contain '18th Product for Checkout'
    Then 7th row of product items should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 7th row of product unit price should contain 'NT$100'
    Then 7th row of product quantity should equal to '1'
    Then 7th row of product items should contain 'NT$100'
    Then 8th row of product items should contain '12th Product for Checkout'
    Then 8th row of product items should not contain 'Buy 2 for $40 Buy 3 for $55'
    Then 8th row of product unit price should contain 'NT$10'
    Then 8th row of product quantity should equal to '1'
    Then 8th row of product items should contain 'NT$10'
    Then 9th row of product items should contain '13th Product for Checkout'
    Then 9th row of product items should contain 'Buy 2 for $40 Buy 3 for $55'
    Then 9th row of product unit price should contain 'NT$35'
    Then 9th row of product quantity should equal to '1'
    Then 9th row of product items should contain 'NT$35'
    Then 10th row of product items should contain '3rd Addon for Checkout'
    Then 10th row of product unit price should contain 'NT$10'
    Then 10th row of product quantity should equal to '1'
    Then 10th row of product items should contain 'NT$10'
    Then 11th row of product items should contain '13th Product for Checkout'
    Then 11th row of product items should contain 'Buy 2 for $40 Buy 3 for $55'
    Then 11th row of product unit price should contain 'NT$35'
    Then 11th row of product quantity should equal to '3'
    Then 11th row of product items should contain 'NT$105'
    Then 12th row of product items should contain '12th Product for Checkout'
    Then 12th row of product items should contain 'Buy 2 for $40 Buy 3 for $55'
    Then 12th row of product unit price should contain 'NT$10'
    Then 12th row of product quantity should equal to '1'
    Then 12th row of product items should contain 'NT$10'
    Then 13th row of product items should contain '1st Created Free Gift'
    Then 13th row of product items should contain '16th Free Gift Promotion'
    Then 13th row of product unit price should contain 'NT$0'
    Then 13th row of product quantity should equal to '1'
    Then 13th row of product items should contain 'NT$0'
    Then discount applied should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then discount applied should contain '-NT$160'
    Then discount applied should contain 'Buy 2 for $40 Buy 3 for $55 - Selected Products: Buy 2 items for NT$40'
    Then discount applied should contain '-NT$5'
    Then discount applied should contain 'Buy 2 for $40 Buy 3 for $55 - Selected Products: Buy 3 items for NT$55'
    Then discount applied should contain '-NT$50'
    Then discount applied should contain '6th Promotion - Selected Products: Get NT$70 off over 4 items'
    Then discount applied should contain '-NT$70'
    Then discount applied should contain '16th Free Gift Promotion - Selected Products: Get 1 Free Gift(s) (1st Created Free Gift) over 3 items'
    Then discount applied should contain '-'
    Then discount applied should contain '12th Promotion'
    Then discount applied should contain '-NT$41'
    Then discount applied should contain '6th Free Shipping'
    Then discount applied should contain '-'
    Then item subtotal should contain 'NT$498'
    Then item discount applied should contain '-NT$326'
    Then delivery fee should contain 'NT$0'
    Then total should contain 'NT$172'
    Then I mark the value of order confirm info as variable order info

    Given I am on Bundle Pricing Index Page
    When I click on tab included 'Bundle Group Pricing'
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then I click on 1st bundle price usage record
    Then I should be redirected to Bundle Pricing History Page
    Then bundle prmotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of bundle promotion should contain order number
    Then bundle promotion total should contain 'NT$172'
    Then bundle promotion discounted amount should contain 'NT$160'
    When I click on export promotions button
    Then I should see confirm button
    When I click on confirm button
    Then I wait for 60 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included 'Download Promotion Report'
    Then I should see mail detail
    Then I should see download button

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'
    And I click on tab included 'Bundle Group Pricing'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'

    Given I am on Cart Add On Items Index Page
    Then I click on 1st select checkbox of cart addon list
    Then I select delete of bulk actions dropdown
    Then I should see confirmation popover
    Then I click on delete checkbox
    When I click on confirm delete button
    Then cart add on items list should contain 'No promotions yet'

    Given I am on Promotion Index Page
    When I input "6th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '6th Promotion'
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert
    When I input "12th Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '12th Promotion'
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert
    When I input "16th Free Gift Promotion" to search field
    Then I should see apply filter label
    Then 1st row of promotion list should contain '16th Free Gift Promotion'
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I input "6th Free Shipping" to search field
    Then I should see apply filter label
    Then 1st row of free shipping list should contain '6th Free Shipping'
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see alert