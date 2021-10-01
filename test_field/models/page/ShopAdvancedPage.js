let Page = require('../../framework/models/Page.js')

class ShopAdvancedPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.custom-page'),
      'product': this.by.css('.quick-cart-item'),
      'product image': this.by.css('product-item .boxify-image'),
      'category product': this.by.css('div:not(.page-single-product) > product-item .quick-cart-item'),
      'category product image': this.by.css('div:not(.page-single-product) > product-item .boxify-image'),
      'regular price of product list': this.by.css('.global-primary.price'),
      'sale price of product list': this.by.css('.price-sale.price'),
      'add to cart button': this.by.css('div.btn-add-to-cart.js-btn-quick-cart-add-to-cart.hidden-xs'),
      'popover': this.by.css('.modal-dialog'),
      'popover product info': this.by.css('.modal-dialog .quick-cart-body .product-info'),
      'popover sale price': this.by.css('.modal-dialog .quick-cart-body div:not(.ng-hide)>div.price-sale:not(.ng-hide)'),
      'popover regular price': this.by.css('.modal-dialog .quick-cart-price'),
      'popover add to cart button': this.by.css('.modal-dialog .btn-quick-cart-add-to-cart'),
      'popover variation dropdown': this.by.css('.selectpicker'),
      'popover variation dropdown option': this.by.css('.selectpicker option'),
      'popover variation quantity field': this.by.css('[ng-model="addItemQuantity"]'),
      'popover message button': this.by.css('.modal-dialog [ng-click="showMessageForm()"]'),
      'popover notify stock button': this.by.css('button[ng-click="toggleBackInStock()"]'),
      'popover close button': this.by.css('.modal-dialog [ng-click="cancel()"]'),
      'popover variation label': this.by.css('.modal-dialog .variation-label'),
      'popover product image': this.by.css('img[id="sl-product-image"].inline-block'),
      'popover product small image': this.by.css('[ng-style="getThumbnailStyle(media)"]'),
      'preorder button': this.by.css('.modal-dialog .btn-color-primary'),
      'cart panel': this.by.css('#cart-panel'),
      'checkout button': this.by.css('#btn-checkout'),
      'close cart panel area': this.by.css('.modal-backdrop'),
      'facebook content': this.by.css('div[data-href="https://www.facebook.com/ShopLineApp"]'),
      'video with auto playing': this.by.css('[src*="autoplay=1"]'),
      'video with auto playing and looping': this.by.css('[src*="autoplay=1&loop=1"]'),
      'video with looping': this.by.css('[src*="autoplay=0&loop=1"]'),
      'category title': this.by.css('p.global-primary.dark-primary.section-title'),
      'grid h1 tag': this.by.css('.grid-h1_tag-item h1'),
      'product info': this.by.css('.os-padding .product-info'),
      'text title': this.by.css('.title p'),
      'text description': this.by.css('.description p'),
      'close cart panel area': this.by.css('.modal-backdrop'),
      'member price flag': this.by.css('.member-price-tag-content'),
      'sign up button': this.by.css('a[href="/users/sign_up"]'),
      'sign in button': this.by.css('a.menu-button[href="/users/sign_in"]'),
      'full width image': this.by.css('.box-info-width-full .boxify-image-wrapper img'),
      'origin size image': this.by.css('.box-info:not(.box-info-width-full) .boxify-image-wrapper img'),

      //mobile
      'mobile add to cart button': this.by.css('span.btn-add-to-cart.js-btn-quick-cart-add-to-cart.mobile-cart'),
      'mobile popover regular price of product list': this.by.css('div.global-primary.dark-primary.price-regular.price.ng-binding'),
      'mobile popover sale price of product list': this.by.css('.row.visible-xs.quick-cart-mobile-header .col-xs-5.product-title.product-info > div > div.same-price > div.price-sale'),
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/pages/${this.pageTitle}/?locale=en`
  }

}

module.exports = ShopAdvancedPage