@BaseCase @ImageService @Admin @Storefornt @Promotion @BundleGroup @setBundleGroupPricingSEO
@fixture-product @fixture-shop @fixture-promotion
Feature: Set Bundle Group Pricing SEO
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
    Then I should see checkbox of product list
    Then I click on 1st checkbox of product list
    Then I input '10th Product for Checkout' to search field
    Then 1st product list should contain '10th Product for Checkout'
    Then I should see checkbox of product list
    Then I click on 1st checkbox of product list
    Then I input '12th Product for Checkout' to search field
    Then 1st product list should contain '12th Product for Checkout'
    Then I should see checkbox of product list
    Then I click on 1st checkbox of product list
    Then I input '13th Product for Checkout' to search field
    Then 1st product list should contain '13th Product for Checkout'
    Then I should see checkbox of product list
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '6th Product for Checkout'
    Then selected products should contain '10th Product for Checkout'
    Then selected products should contain '12th Product for Checkout'
    Then selected products should contain '13th Product for Checkout'
    When I click on group b tab
    Then select product button should contain 'Select Products in Group B'
    When I click on select product button
    Then I should see select product popup
    When I input '17th Product for Checkout' to search field
    Then 1st product list should contain '17th Product for Checkout'
    Then I should see checkbox of product list
    Then I click on 1st checkbox of product list
    When I input '18th Product for Checkout' to search field
    Then 1st product list should contain '18th Product for Checkout'
    Then I should see checkbox of product list
    Then I click on 1st checkbox of product list
    When I click on popup confirm button
    Then selected products should contain '17th Product for Checkout'
    Then selected products should contain '18th Product for Checkout'
    When I click on 1st countinue to button
    When I click on 2nd countinue to button
    When I click on 3rd countinue to button
    Then I scroll down to preview button
    When I click on preview button
    Then target group should contain 'All Customers'
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    When I click on preview group a tab
    Then preview selected products should contain '6th Product for Checkout'
    Then preview selected products should contain '10th Product for Checkout'
    Then preview selected products should contain '12th Product for Checkout'
    Then preview selected products should contain '13th Product for Checkout'
    When I click on preview group b tab
    Then preview selected products should contain '17th Product for Checkout'
    Then preview selected products should contain '18th Product for Checkout'
    When I click on confirm button
    Then I should see alert
    Then I should be redirected to Bundle Pricing Index Page
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then 1st row of promotions should contain start date
    Then 1st row of promotions should contain 'Never expires'
    Then 1st row of promotions should contain 'All Customers'
    Then 1st row of promotions should contain 'Unlimited'

  @EAT-993
  Scenario: Check bundle group creat page ui and use bundle group promotion on storefront
    When I select bundle price edit dropdown option included 'Page & SEO' of bundle price edit dropdown
    Then I should be redirected to Bundle Pricing Seo Page
    Then promotion name should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then alert should contain 'Add title and description to see the search engine preview.'
    When I fill 'test title' to title field
    Then title remain char should contain '45'
    When I fill 'test description' to description field
    Then description remain char should contain '214'
    Then search engine optimization area should not contain 'Add title and description to see the search engine preview.'
    Then preview title should contain 'test title'
    Then preview description should contain 'test description'
    When I fill 'red, green' to keywords field
    Then keywords remain char should contain '150'
    And I fill 'BundleGroupFor49' to URL field
    Then preview url should contain promotion page
    Then promotion description field should contain '＊Promotion applied is subject to order summary shown in shopping cart'
    Then promotion description field should contain '＊Customer should checkout with valid payment & delivery method to enjoy promotion'
    Then promotion description field should contain '＊Customer should login to checkout for member-only promotion'
    And I fill 'I am term and condition' to promotion description field
    When I pick promotion photo to promotion photo selector
    Then I should see delete photo button
    Then I fill '' to URL field
    Then I get idcode from page url and mask as promotionId
    When I click on save button
    Then I should be redirected to Bundle Pricing Index Page
    Then I should see alert
    When I click on go to page button
    Then I switch to 2 of tabs
    Then I should be redirected to Shop Promotion Page
    Then promotionId should be part of current URL
    Then I should have image promotion photo for promotion image

    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    When I select bundle price edit dropdown option included 'Page & SEO' of bundle price edit dropdown
    Then I should be redirected to Bundle Pricing Seo Page
    And I fill random number to URL field
    And I mark the value of URL field as variable friendly URL
    When I click on save button
    Then I should be redirected to Bundle Pricing Index Page
    Then I should see alert
    When I click on go to page button
    Then I switch to 3 of tabs
    Then I should be redirected to Shop Promotion Page
    Then friendly URL should be part of current URL
    Then I should have image promotion photo for promotion image
    And promotion name should contain 'Buy 2 inGroup A& 1 inGroup Bfor NT$49'
    When I click on term and condition button
    Then I should see term and condition popover
    And term and condition popover should contain 'I am term and condition'
    And I click on confirm button
    And I should see 6 product of products list

    And ---ROLL BACK---
    Given I am on Bundle Pricing Index Page
    And I click on tab included 'Bundle Group Pricing'
    Then 1st row of promotions should contain 'Buy 2 in Group A & 1 in Group B for $49'
    Then I click on 1st row of select checkbox list
    When I select delete of bulk actions dropdown
    Then I should see confirmation popover
    And I click on delete checkbox
    When I click on confirm delete button
    Then promotions should contain 'No promotions yet'