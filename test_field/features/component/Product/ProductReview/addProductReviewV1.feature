@BaseCase @Admin @Storefront @Product @ProductReview @addProductReviewV1 @fixture-product @fixture-shop @fixture-payment
@fixture-delivery @EAT-1044
Feature: Add product review and see the review at Shop Product Detail Page and Admin Customer Reviews Page(V1)
  As a merchant
  I want customer leave product review
  So that merchant and customer can know how customer feels about the product.

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

    Given I am on Product Setting Page
    When I check and click product review toggle off
    And I click on update button
    Then I should see alert

    Given I am on Product Review Comment Page
    When I click on all checkbox
    When I check and click delete button
    And I check and click confirm delete checkbox
    And I check and click confirm delete button
    Then comments should contain 'No Review'

  @EAT-1044-1
  Scenario: Add product review in v1
    Given I am on Shop Product Index Page
    When I input "7th Product for Checkout" to search field
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And customer review area should contain 'No review for this product'
    And I click on increase button
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    Then I click on switch to signup tab button
    Then I should be redirected to Shop Sign Up Page
    When I fill new account email to email field
    And I fill new account password to password field
    And I fill '只會寫Product Review的陳小明' to name field
    And I click on agree terms checkbox
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill '只會寫Product Review的陳小明' to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Shop Product Index Page
    When I input "8th Product for Checkout" to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill '只會寫Product Review的陳小明' to name field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable second order info
    Given I am on Orders Page
    Then 1st row of order links should contain second order number
    Then 2nd row of order links should contain order number
    When I click on 1st row of order checkbox
    When I click on 2nd row of order checkbox
    Then I should see bulk actions dropdown
    And I select Update Status of bulk actions dropdown
    And I select status dropdown option included 'Order Status' of status type dropdown
    And I select status dropdown option included 'Completed' of status item dropdown
    Then I should see update button
    When I click on update button
    Then I should see confirm popover
    When I click on send notification checkbox
    And I click on OK button
    Then 1st row of order status should equal to "Completed"
    Then 2nd row of order status should equal to "Completed"
    And I mark the value of row of date as variable second order date
    And I mark the value of 2nd row of date as variable first order date

    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    Then product review area should contain 'We are waiting for your review!'
    Then product review area should contain 'Satisfy with your purchase? Tell us your thought!'
    When I click on write a review button
    Then I should be redirected to Shop Product View Comments Page
    And 1st list of order number should contain second order number
    And 2nd list of order number should contain order number
    And current order id should contain second order number
    And purchased date should contain sec order date
    And I should see row of product
    And 1st row of product name should contain '8th Product for Checkout'
    When I click on 1st row of one star
    Then I should see 1 clicked star
    Then I fill 'one star for test' to product review field
    Then I mark the sample comment time as variable first comment time
    When I click on send button
    Then I should see finished image
    Then finished review text should contain 'Thanks for your review!'
    When I click on rate other order button
    Then order list should not contain second order number
    And current order id should contain order number
    And purchased date should contain fir order date
    When I click on back to my account
    Then I should be redirected to Shop User Profile Page
    Then I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then 2nd row of order should contain order number
    When I click on 2nd row of order links
    Then I should be redirected to Shop Orders Show Page
    And product review area should contain 'We are waiting for your review!'
    And product review area should contain 'Satisfy with your purchase? Tell us your thought!'
    And I should see write a review button
    When I click on write a review button
    Then I should be redirected to Shop Product View Comments Page 
    And 1st list of order number should contain order number
    And current order id should contain order number
    And purchased date should contain fir order date
    And I should see 2 row of product
    And 1st row of product name should contain '7th Product for Checkout'
    When I click on 1st row of one star
    Then I should see 1 clicked star
    Then I fill 'one star for test' to product review field
    And 2nd row of product name should contain '8th Product for Checkout'
    When I click on 2nd row of five star
    Then I should see 6 clicked star
    Then I fill 'five star for test' to 2nd product review field
    Then I mark the sample comment time as variable second comment time
    When I click on send button
    Then I should see finished image
    Then finished review text should contain 'Thanks for your review!'
    When I click on rate other order button
    Then I should see finished image
    Then finished review text should contain 'Congratulations! You\'ve completed all reviews!'
    When I click on back to store button
    Then I should be redirected to Shop Home Page

    Given I am on Product Review Comment Page
    When I click on all checkbox
    And I click on publish button
    Then I should see row of hide button

    Given I am on Shop Product Index Page
    When I input '7th Product for Checkout' to search field
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And product info should contain '7th Product for Checkout'
    # 現在有cache要等30分鐘
    # And product info should contain '1.0 Stars | 1 Reviews'
    # And I should see 1 star in product info
    # And I should see customer review area
    # And review number should contain '1 Reviews'
    # And product stars should contain '1.0 out of 5 stars'
    # And one stars percentage should contain '100%'
    When I click on rating source dropdown
    Then I should see 1 rating source dropdown option
    And 1st rating source dropdown option should contain 'Rating Source: This Shop'
    And I should see 1 row of review
    And 1st row of author name should contain '只****明'
    And 1st row of left comment date should contain left comment date
    And I should see 1 star in first row
    And 1st row of comment should contain 'one star for test'

    Given I am on Shop Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And product info should contain '8th Product for Checkout'
    # 現在有cache要等30分鐘
    # And product info should contain '3.0 Stars | 2 Reviews'
    # And I should see 3 star in product info
    # And I should see customer review area
    # And review number should contain '2 Reviews'
    # And product stars should contain '3.0 out of 5 stars'
    # And one stars percentage should contain '50%'
    # And five stars percentage should contain '50%'
    And I should see 2 row of review
    And 1st row of author name should contain '只****明'
    And 1st row of left comment date should contain left comment date
    And I should see 5 star in first row
    And 1st row of comment should contain 'five star for test'
    And 2nd row of author name should contain '只****明'
    And 2nd row of left comment date should contain left comment date
    And I should see 1 star in second row
    And 2nd row of comment should contain 'one star for test'

    Given I am on Product Review Comment Page
    And I should see 3 row of hide button
    And sort dropdown should contain 'Latest'
    And I should see 5 star in first row
    And 1st row of comment should contain '8th Product for Checkout'
    And 1st row of product comment should contain 'five star for test'
    And 1st row of product comment time should contain second comment time with hyphen
    And 1st row of product order number should contain order number
    And I should see 1 star in second row
    And 2nd row of comment should contain '7th Product for Checkout'
    And 2nd row of product comment should contain 'one star for test'
    And 2nd row of product comment time should contain second comment time with hyphen
    And 2nd row of product order number should contain order number
    And I should see 1 star in third row
    And 3rd row of comment should contain '8th Product for Checkout'
    And 3rd row of product comment should contain 'one star for test'
    And 3rd row of product comment time should contain first comment time with hyphen
    And 3rd row of product order number should contain second order number
    When I select oldest option of sort dropdown
    And I should see 1 star in first row
    And 1st row of comment should contain '8th Product for Checkout'
    And 1st row of product comment should contain 'one star for test'
    And 1st row of product comment time should contain first comment time with hyphen
    And 1st row of product order number should contain second order number
    And I should see 1 star in second row
    And 2nd row of comment should contain '7th Product for Checkout'
    And 2nd row of product comment should contain 'one star for test'
    And 2nd row of product comment time should contain second comment time with hyphen
    And 2nd row of product order number should contain order number
    And I should see 5 star in third row
    And 3rd row of comment should contain '8th Product for Checkout'
    And 3rd row of product comment should contain 'five star for test'
    And 3rd row of product comment time should contain second comment time with hyphen
    And 3rd row of product order number should contain order number
    When I select high to low option of sort dropdown
    And I should see 5 star in first row
    And 1st row of comment should contain '8th Product for Checkout'
    And 1st row of product comment should contain 'five star for test'
    And 1st row of product comment time should contain second comment time with hyphen
    And 1st row of product order number should contain order number
    And I should see 1 star in second row
    And 2nd row of comment should contain '7th Product for Checkout'
    And 2nd row of product comment should contain 'one star for test'
    And 2nd row of product comment time should contain second comment time with hyphen
    And 2nd row of product order number should contain order number
    And I should see 1 star in third row
    And 3rd row of comment should contain '8th Product for Checkout'
    And 3rd row of product comment should contain 'one star for test'
    And 3rd row of product comment time should contain first comment time with hyphen
    And 3rd row of product order number should contain second order number
    When I select low to high option of sort dropdown
    And I should see 1 star in first row
    And 1st row of comment should contain '7th Product for Checkout'
    And 1st row of product comment should contain 'one star for test'
    And 1st row of product comment time should contain second comment time with hyphen
    And 1st row of product order number should contain order number
    And I should see 1 star in second row
    And 2nd row of comment should contain '8th Product for Checkout'
    And 2nd row of product comment should contain 'one star for test'
    And 2nd row of product comment time should contain first comment time with hyphen
    And 2nd row of product order number should contain second order number
    And I should see 5 star in third row
    And 3rd row of comment should contain '8th Product for Checkout'
    And 3rd row of product comment should contain 'five star for test'
    And 3rd row of product comment time should contain second comment time with hyphen
    And 3rd row of product order number should contain order number
    And I click on 3rd row of hide button
    And I click on 2nd row of hide button
    And I click on 1st row of hide button
    Then I should see 3 row of publish button

    Given I am on Shop Product Index Page
    When I input '7th Product for Checkout' to search field
    Then 1st product of products list should contain '7th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And product info should contain '7th Product for Checkout'
    # 現在有cache要等30分鐘
    # And customer review area should contain 'No review for this product'

    Given I am on Shop Product Index Page
    When I input '8th Product for Checkout' to search field
    Then 1st product of products list should contain '8th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And product info should contain '8th Product for Checkout'
    # 現在有cache要等30分鐘
    # And customer review area should contain 'No review for this product'

    And ---ROLL BACK---
    Given I am on Product Review Comment Page
    When I click on all checkbox
    When I click on delete button
    Then I should see confirm delete checkbox
    And I click on confirm delete checkbox
    And I click on confirm delete button
    Then comments should contain 'No Review'

    Given I am on Customer List Page
    When I click on 1st customer checkbox
    And I select delete selected of bulk action dropdown
    Then I should see popover
    When I click on ok button