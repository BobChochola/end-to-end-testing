@BaseCase @Admin @Storefront @Order @orderLimitForTrialMerchant @fixture-shop @theme-ultra-chic @fixture-trial-merchant-limit
Feature: order Limit For Trial Merchant - first order
  As a system
  I want to limit order for trial merchant

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  @EAT-1158 @EAT-1158-2
  Scenario: I should see start trial operation message in first checkout flow.
    Given I am on Orders Page
    And trial plan block should contain 'Shop banner and order limit will be removed and unlocked.'
    And header should not contain 'Order Limitation reached'
    When I select language dropdown option included '繁' of language dropdown
    And trial plan block should contain '即可解除網店橫幅與 10 筆下單限制'
    And header should not contain '訂單數量已達試用上限'
    When I select export dropdown option included '新增訂單' of export dropdown
    Then I should be redirected to Orders Create Page

    Given I am on Shop Product Index Layout V Two Page
    Then I should see trial merchant message
    Then trial merchant message should contain 'The store is on trial operation, stay tuned for more upcoming goods and store services!'
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    Then I should see trial merchant message
    Then trial merchant message should contain 'The store is on trial operation, stay tuned for more upcoming goods and store services!'
    When I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Layout V Two Page
    Then I should see trial merchant message
    Then trial merchant message should contain 'The store is on trial operation, stay tuned for more upcoming goods and store services!'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    When I select language dropdown option included '繁' of language dropdown
    And I click on proceed to checkout button
    Then I should see popup
    And I should see order limit image
    And popup should contain '歡迎體驗結帳流程，全店最多能成立 10 張測試訂單'
    And popup should contain '流程提供：加入會員、訂閱優惠通知、購物車加購品等強大功能。達訂單上限後，商家可以透過升級開通訂單限制。'
    And start checkout button should contain '開始結帳'
    And I Refresh
    When I select language dropdown option included 'English' of language dropdown
    And I click on proceed to checkout button
    Then I should see popup
    And I should see order limit image
    And popup should contain 'Welcome to checkout. The store is on free trial with up to creating 10 orders.'
    And popup should contain 'You may : become a member, subscribe newsletter, purchase add-on items and experience other powerful features. Order limitation will be removed once the shop get upgraded.'
    And start checkout button should contain 'Start Checkout'
    When I click on start checkout button

    Then I should be redirected to Shop Checkout Layout V Two Page
    Then I should see trial merchant message
    Then trial merchant message should contain 'The store is on trial operation, stay tuned for more upcoming goods and store services!'
    When I select language dropdown option included '繁' of language dropdown
    Then I should see trial merchant message
    Then trial merchant message should contain '商店試營運中，敬請期待更多商品上架和完整的商店服務！'
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    When I click on place order button
    Then I should see popup
    And I should see order limit image
    And popup should contain '歡迎體驗結帳流程，全店最多能成立 10 張測試訂單'
    And popup should contain '流程提供：加入會員、訂閱優惠通知、購物車加購品等強大功能。達訂單上限後，商家可以透過升級開通訂單限制。'
    And start checkout button should contain '開始結帳'
    And I Refresh
    When I select language dropdown option included 'English' of language dropdown
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    When I click on place order button
    Then I should see popup
    And I should see order limit image
    And popup should contain 'Welcome to checkout. The store is on free trial with up to creating 10 orders'
    And popup should contain 'You may : become a member, subscribe newsletter, purchase add-on items and experience other powerful features. Order limitation will be removed once the shop get upgraded.'
    And start checkout button should contain 'Start Checkout'