let Page = require('../../framework/models/Page.js')

class ShopProductIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.product-list-container'),
      'product of products list': this.by.css('li.boxify-item.product-item'),
      'row of product image': this.by.css('.boxify-image'),
      'regular price of products list': this.by.css('.dark-primary.price'),
      'sale price of products list': this.by.css('.price-sale'),
      'row of categories': this.by.css('div[class="catmenu"] li.text-secondary-color a'),
      'category banners': this.by.css('.page-bar img'),
      'collapse button of categories list': this.by.css('ul[id="sidebar"] button[class="btn btn-clear btn-category-collapse pull-right"]'),
      'search field': this.by.css('input.desktop-shop-search-input'),
      'menu button': this.by.css('#fixed-menu-container .menu-button'),
      'header search button': this.by.css('.search-button'),
      'header bar search field': this.by.css('.search-button input[name="query"]'),
      'product strikethrough regular price': this.by.css('.global-primary.dark-primary.price.price-crossed'),
      'product sale price': this.by.css('.price-sale.price'),
      'search products field': this.by.css('.side-panel-search input[name="searchQuery"]'),
      'header search button': this.by.css('.search-button'),
      'cart panel button': this.by.css('.cart-panel-button'),
      'cart panel': this.by.css('[id="cart-panel"]'),
      'currency dropdown': this.by.css('#fixed-menu-container .dropdown:nth-last-of-type(2)'),
      'currency': this.by.css('ul.dropdown-menu.menu-button li'),
      'cart button': this.by.css('.cart-panel-button'),
      'remove button': this.by.css('.cart-item .remove a'),
      'cart panel': this.by.css('[id="cart-panel"]'),
      'cart item list': this.by.css('[class="cart-item"]'),
      'breadcrumb': this.by.css('.breadcrumb'),
      'category banner': this.by.css('.page-bar img'),
      'title': this.by.css('ol.breadcrumb li.active'),
      'bundle item': this.by.css('div[class="label promotion-label label-default ng-binding"]'),
      'cart popover': this.by.css('div[class="modal-body ng-scope"]'),
      'product info': this.by.css('div.hidden-xs > div.title.global-primary.dark-primary.ng-binding'),

      'strikethrough regular price': this.by.css('div.quick-cart-price > div:nth-child(1) > div.global-primary.dark-primary.price-regular.price.ng-binding.price-crossed'),
      'sale price': this.by.css('div.hidden-xs > div.quick-cart-price > div:nth-child(1) > div.price-sale.price.ng-binding'),
      'member price': this.by.css('div.hidden-xs > div.quick-cart-price > div:nth-child(1) > div.member-price-tip > a'),
      'popover strikethrough regular price': this.by.css('div.quick-cart-price > div:nth-child(1) > div.global-primary.dark-primary.price-regular.price.ng-binding.price-crossed'),
      'popover sale price': this.by.css('div.hidden-xs > div.quick-cart-price > div:nth-child(1) > div.price-sale'),
      'popover member price': this.by.css('div.hidden-xs > div.quick-cart-price > div:nth-child(1) > div.member-price-tip > a'),

      'member price flag': this.by.css('.member-price-tag-content'),
      'product detail': this.by.css('div[class="col-sm-6 col-xs-12 product-info"]'),
      'add to cart button': this.by.css('button[id="btn-add-to-cart"]'),
      'close cart panel area': this.by.css('.modal-backdrop'),
      'close button': this.by.css('button[class="btn quick-cart-cancel js-quick-cart-cancel"]'),
      'add to cart': this.by.css('div[class="btn-add-to-cart js-btn-quick-cart-add-to-cart hidden-xs"]'),
      'popover quantity field': this.by.css('input[ng-model="addItemQuantity"]'),
      'popover increase button': this.by.css('button[ng-click="incQuantity()"]'),
      'popover decrease button': this.by.css('button[ng-click="decQuantity()"]'),
      'sort dropdown': this.by.css('select[ng-model="sortQuery"]'),
      'sort dropdown option': this.by.css('select[ng-model="sortQuery"] option'),
      'language dropdown': this.by.css('.menu-button.dropdown-toggle'),
      'language dropdown option': this.by.css('.menu-button li[ng-click*="changeLanguage"]'),
      'product price': this.by.css('.price-sale'),
      'variation dropdown': this.by.css('[ng-model*="variationName"]'),
      'dropdown option': this.by.css('[ng-model*="variationName"] option'),
      //mobile
      'mobile product of products list': this.by.css('li.boxify-item.product-item'),
      'mobile search button': this.by.css('a.visible-xs.m-search-button.menu-button.ie-hack'),
      'mobile search field': this.by.css('input[name="searchQuery"]'),
      'quick cart popover product image': this.by.css('img[id="sl-product-image"].inline-block'),
      'quick cart popover product small image': this.by.css('[ng-style="getThumbnailStyle(media)"]'),
    }

  }

  get samples() {

    return {
      'product name': 'for Checkout',
      'quantity sold url': `${this.props.sample.genShopURL(this.props.account.handle)}/products?sort_by=quantity_sold&order_by=desc`
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/products/?locale=en`

  }

}

module.exports = ShopProductIndexPage