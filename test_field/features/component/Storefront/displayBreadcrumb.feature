@BaseCase @Storefront @Search @displayBreadcrumb @fixture-shop @fixture-product
Feature: Display Breadcrumb in Search Result
  As a guest
  I want to have the keyword that I input in search bar displaying in the breadcrumb
  So that it reminds me why the below products are displayed.

  @EAT-496
  Scenario: Display Breadcrumb in Search Result
    Given I am on Shop Product Index Page
    When I input 'test' to search field
    Then breadcrumb should contain 'test'