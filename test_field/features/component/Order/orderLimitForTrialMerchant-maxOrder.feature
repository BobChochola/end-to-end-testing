@BaseCase @Admin @Storefront @Order @orderLimitForTrialMerchant-maxOrder @fixture-shop @theme-ultra-chic @fixture-trial-merchant-max-order
Feature: order Limit For Trial Merchant - max order
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

  @EAT-1158 @EAT-1158-1
  Scenario: I can't create order(checkout order, manual order) over 10 times.
    Given I am on Orders Page
    And trial plan block should contain 'Shop banner and order limit will be removed and unlocked.'
    And header should contain 'Order Limitation reached'
    When I select language dropdown option included '繁' of language dropdown
    And trial plan block should contain '即可解除網店橫幅與 10 筆下單限制'
    And header should contain '已達試用上限'
    When I select export dropdown option included '新增訂單' of export dropdown
    Then I should see popup
    And popup should contain '訂單數量已達試用上限'
    And popup should contain '網店於試用期間已成立過十筆訂單，升級方案後即可開通訂單數量限制！'
    And check upgrade plan button should contain '查看商店升級方案'
    And close popup button should contain '我知道了'
    Then I click on close popup button
    When I click on 1st row of order checkbox
    Then I click on bulk actions dropdown
    Then I should not see Delete

    When I select language dropdown option included 'English' of language dropdown
    When I click on row of order checkbox
    When I click on bulk actions dropdown
    Then bulk actions dropdown all options should not contain 'Delete'
    When I select export dropdown option included 'Create Order' of export dropdown
    Then I should see popup
    Then popup should contain 'Free Trial Order Limitation reached'
    Then popup should contain 'Your shop has reached order limit of ten orders during trial period. You can upgrade your plan to remove the limit.'
    Then check upgrade plan button should contain 'Check Upgrade Plan'
    Then close popup button should contain 'I understand'
    When I click on check upgrade plan button
    Then I should be redirected to Plans Page

    Given I am on Orders Page
    When I open new tab and redirect to manual order page
    Then '401' should be part of current URL

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
    When I click on proceed to checkout button
    Then I should see popup
    And I should see order limit image
    And popup should contain 'Order limit has been reached for trial operation'
    And popup should contain 'You can continue shopping and checkout when the store is officially in operation!'
    And popup should contain 'If you have any questions about the operation of the store, please contact the store'
    And contact store button should contain 'Contact the store'
    And continue shopping button should contain 'Return to homepage'
    And I Refresh
    When I select language dropdown option included '繁' of language dropdown
    When I click on proceed to checkout button
    Then I should see popup
    And I should see order limit image
    And popup should contain '已達試營運下單限制'
    And popup should contain '待店家正式營運即可正式營運即可繼續購物與結帳！'
    And popup should contain '若對商店營運有任何疑問，歡迎聯絡店家。'
    And contact store button should contain '聯絡店家'
    And continue shopping button should contain '回首頁繼續逛逛'
    When I click on contact store button
    Then I should see message shop popover

    When I open new tab and redirect to shop checkout layout vtwo
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
    And popup should contain '已達試營運下單限制'
    And popup should contain '待店家正式營運即可正式營運即可繼續購物與結帳！'
    And popup should contain '若對商店營運有任何疑問，歡迎聯絡店家。'
    And contact store button should contain '聯絡店家'
    And continue shopping button should contain '回首頁繼續逛逛'
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
    And popup should contain 'Order limit has been reached for trial operation'
    And popup should contain 'You can continue shopping and checkout when the store is officially in operation!'
    And popup should contain 'If you have any questions about the operation of the store, please contact the store.'
    And contact store button should contain 'Contact the store'
    And continue shopping button should contain 'Return to homepage'
    And I click on contact store button
    Then I should see message shop popover