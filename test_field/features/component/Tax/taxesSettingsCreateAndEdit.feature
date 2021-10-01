@BaseCase @Admin @Storefront @Tax @taxesSettingsCreateAndEdit @fixture-product @fixture-shop
Feature: Taxes Settings Page can create/edit region tax rates
  As a merchant
  I want to create region tax rate
  So that I can have different tax rate for my shoppers

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

  @EAT-970 @EAT-972
  Scenario: Create and setting Taiwan, United States tax rate on Taxes Setting Page. So that, I can check the right tax fee on Shop Cart Page.
    Given I am on Taxes Setting Page
    Then I should see all shop need tax toggle
    Then all shop need tax toggle should not be checked
    When I click on add region button
    Then I should see tax area popover
    When I click on country item included 'Taiwan'
    When I click on add region button
    Then I should see tax area popover
    Then country item should not contain 'Taiwan'
    When I click on close tax area popover button
    Then I should see 1 row of country list
    Then 1st row of country list should contain 'Taiwan'
    Then I should see 1 edit button
    Then I should see 1 remove button
    Then I should see 1 row of country list
    When I click edit button for the same order of row of country list included 'Taiwan'
    Then I should be redirected to Taxes Setting Edit Page
    Then auto tax rates toggle should not be checked
    And I fill 'taiwan tax' to tax name field
    And I fill '1' to tax rate field
    When I click on auto tax rates toggle off
    Then auto tax rates toggle should be checked
    Then tax name field should contain 'taiwan tax'
    Then tax rate should contain '5%'
    And I fill '2' to freight tax rate field
    Then I click on update button
    Then I should see alert
    Then I should be redirected to Taxes Setting Page
    Then I should see 1 row of country list
    Then country list should contain 'Taiwan'
    Then row of country list included 'Taiwan' and same order of row of sale tax should also contain '5%'
    Then row of country list included 'Taiwan' and same order of row of freight tax should also contain '2%'
    When I click edit button for the same order of row of country list included 'Taiwan'
    Then I should be redirected to Taxes Setting Edit Page
    Then I should not see tax rate field
    Then I click on auto tax rates toggle on
    Then auto tax rates toggle should not be checked
    Then I fill '10' to tax rate field
    Then I fill "" to freight tax rate field
    Then I click on update button
    Then I should see alert
    Then I should be redirected to Taxes Setting Page
    Then I should see 1 row of country list
    Then country list should contain 'Taiwan'
    Then row of country list included 'Taiwan' and same order of row of sale tax should also contain '10%'
    Then row of country list included 'Taiwan' and same order of row of freight tax should also contain '-'

    When I click on add region button
    Then I should see tax area popover
    When I click on country item included 'United States'
    Then I should see 2 row of country list
    When I click on add region button
    Then I should see tax area popover
    Then country item should not contain 'Taiwan'
    Then country item should not contain 'United States'
    When I click on close tax area popover button
    Then country list should contain 'United States'
    Then I should see 2 edit button
    Then I should see 2 remove button
    Then I should see 2 row of country list
    When I click edit button for the same order of row of country list included 'United States'
    Then I should be redirected to Taxes Setting Edit Page
    And I fill 'United States tax' to tax name field
    When I click on auto tax rates toggle off
    Then auto tax rates toggle should be checked
    Then tax name field should contain 'United States tax'
    Then tax rate should contain '7.36%'
    Then I click on add region rate button
    Then I should see region edit popover
    And I click on row of region checkbox included 'Alaska'
    And I click on row of region checkbox included 'Alabama'
    Then I click on ok button
    Then I should see 2 row of region tax rate
    Then I should see 2 region tax rate remove button
    Then 1st row of region tax rate should contain 'Alaska'
    Then 1st row of state tax should equal to '0%'
    Then 1st row of city tax should equal to '0% to 7.85%'
    Then 2nd row of region tax rate should contain 'Alabama'
    Then 2nd row of state tax should equal to '4%'
    Then 2nd row of city tax should equal to '4% to 11%'
    And I fill '2' to freight tax rate field
    When I click on add region freight rate button
    Then I should see region edit popover
    And I click on row of region checkbox included 'Alaska'
    And I click on row of region checkbox included 'Alabama'
    When I click on ok button
    Then I fill '0.5' to 1st region freight tax rate field
    Then I fill '0' to 2nd region freight tax rate field
    When I click on update button
    Then I should see alert
    Then I should be redirected to Taxes Setting Page
    Then I should see 2 row of country list
    Then country list should contain 'United States'
    Then row of country list included 'United States' and same order of row of sale tax should also contain '0% ~ 11%'
    Then row of country list included 'United States' and same order of row of freight tax should also contain '0.5% ~ 2%'
    When I click edit button for the same order of row of country list included 'United State'
    Then I should be redirected to Taxes Setting Edit Page
    Then I should not see tax rate field
    Then I click on auto tax rates toggle on
    Then auto tax rates toggle should not be checked
    Then I should see tax rate field
    And I fill '20' to tax rate field
    And I fill '1' to 1st region tax rate field
    And I fill '2' to 2nd region tax rate field
    And I fill "" to freight tax rate field
    When I click region freight tax rate remove button for the same order of row of freight region tax rate included 'Alaska'
    When I click region freight tax rate remove button for the same order of row of freight region tax rate included 'Alabama'
    Then I click on update button
    Then I should see alert
    Then I should be redirected to Taxes Setting Page
    Then I should see 2 row of country list
    Then country list should contain 'United States'
    Then row of country list included 'United States' and same order of row of sale tax should also contain '1% ~ 20%'
    Then row of country list included 'United States' and same order of row of freight tax should also contain '-'
    When I click on all shop need tax toggle off
    Then I should see popover
    Then popover should contain 'Apply tax to all shop products'
    Then I click on confirm button
    Then all shop need tax toggle should be checked

    Given I am on Shop Product Index Page
    Then I input '18th Product for Checkout' to search field
    Then I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    Then product info should contain '18th Product for Checkout'
    Then I click on add to cart button
    Then I should see cart panel
    Then I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    Then tax fee should contain 'NT$10'
    When I hover over tax fee icon
    Then I should see tax fee popover
    Then tax fee popover should contain 'Taiwan'
    Then tax fee popover should contain '10%'

    And ---ROLL BACK---
    Given I am on Taxes Setting Page
    When I click on all shop need tax toggle on
    Then I should see all shop need tax toggle off
    And I click remove button for the same order of row of country list included 'Taiwan'
    Then I should see popover
    Then I click on remove area checkbox
    Then I click on remove confirm button
    And I click remove button for the same order of row of country list included 'United States'
    Then I should see popover
    Then I click on remove area checkbox
    Then I click on remove confirm button