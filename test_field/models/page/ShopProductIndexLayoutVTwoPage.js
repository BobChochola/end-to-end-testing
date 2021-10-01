let Page = require('../../framework/models/Page.js')

class ShopProductIndexLayoutVTwoPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[class="col-xs-12 ProductList-list"]'),
      // active menu
      'trial merchant message': this.by.css('div[class*="trial-banner"]'),
      'language dropdown': this.by.css('div[class*="App-languageDropdown"]'),
      'language dropdown option': this.by.css('li[class*="sl-language-chooser-language"]'),
      'currency dropdown': this.by.css('.App-currencyDropdown'),
      'currency': this.by.css('[class="List-item sl-currency-chooser-currency"]'),
      'search icon': this.by.css('li>div.NavigationBar-actionMenu-button>form'),
      'search field': this.by.css('input[maxlength="100"][placeholder="Search Products"]'),
      'input search field': this.by.css('input.shop-search-input.desktop-shop-search-input'),
      'login button': this.by.css('.NavigationBar.mod-desktop a[href*="/users/"]'),
      'member center button': this.by.css('a[class="NavigationBar-actionMenu-button"]'),
      // product list
      'product of products list': this.by.css('[class*="roduct-item"]'),
      'price of products list': this.by.css('.Label-price'),
      'regular price of products list': this.by.css('.Label-price.sl-price:not(.is-sale)'),
      'sale price of products list': this.by.css('.is-sale'),
      'row of categories': this.by.css('.ProductList-categoryMenu a'),
      'third layer categories': this.by.css('[style^="z-index: 10"]'),
      'breadcrumb': this.by.css('.ProductList-breadcrumb'),
      'collapse button of categories list': this.by.css('i[class="fa sl-dropdown-toggle pull-right collapsed"]'),
      'row of product list': this.by.css('[class="Product-item ng-isolate-scope"]'),
      'row of product name': this.by.css('[class="Label-title "]'),
      'product price': this.by.css('[class="Label-price sl-price is-sale tertiary-color-price "]'),

      'add to cart button': this.by.css('div.btn-add-to-cart'),

      'search icon': this.by.css('li>div.NavigationBar-actionMenu-button>form'),
      'search field': this.by.css('input[maxlength="100"][placeholder="Search Products"]'),
      'input search field': this.by.css('input.shop-search-input.desktop-shop-search-input'),
      'login button': this.by.css('.NavigationBar.mod-desktop a[href*="/users/"]'),
      'member center button': this.by.css('a[class="NavigationBar-actionMenu-button"]'),

      //instant add to cart popup
      'popover': this.by.css('div.modal-body'),
      'popover product info': this.by.css('.modal-dialog .quick-cart-body .product-info'),
      'popover quantity field': this.by.css('.modal-dialog input[ng-model="addItemQuantity"]'),
      'popover buy now button': this.by.css('.modal-dialog button.btn-buy-now'),
      'popover add to cart button': this.by.css('.modal-dialog #btn-add-to-cart'),

      //cart panel
      'cart panel': this.by.css('#cart-panel'),
      'cart panel item list': this.by.css('#cart-panel .cart-item'),
      'cart panel price list': this.by.css('#cart-panel .cart-item .price-details'),
      'cart panel image list': this.by.css('#cart-panel .cart-item .cart-item-image'),
      'checkout button': this.by.css('#cart-panel #btn-checkout'),

      //paypal frame and elements
      'popover paypal frame': this.by.css('paypal-fast-checkout-btn:not(.ng-hide) iframe'),
      'paypal checkout button': this.by.css('.paypal-button'),

      // Kingsman
      'kingsman search icon': this.by.css('svg[class="icons icon-magnifier"]'),
      'kingsman product of products list': this.by.css('.Product-item.ng-isolate-scope'),
      'kingsman regular price of products list': this.by.css('.Label-price.sl-price:not(.price-sale)'),
      'kingsman member center button': this.by.css('svg[class="icons icon-user"]'),
      // UltraChic
      'ultrachic search icon': this.by.css('form[class="Product-searchField-form sl-product-search ng-pristine ng-valid ng-isolate-scope"]'),
      'ultrachic regular price of products list': this.by.css('.Label-price.sl-price:not(.is-sale)'),
    }

  }

   get samples() {

     return {
       'product name': 'for Checkout',
       'forty zh': '一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十',
       'forty eng capital': 'Abcdefghijabcdefghijabcdefghijabcdefghij',
       'forty eng': 'abcdefghijabcdefghijabcdefghijabcdefghij',
       'Second Category page': `${this.props.sample.genShopURL(this.props.account.handle)}/categories/dirty-data-second-category?locale=en`
    }

  }

   get url() {

     return `${this.props.sample.genShopURL(this.props.account.handle)}/products?locale=en`
  }

}

module.exports = ShopProductIndexLayoutVTwoPage