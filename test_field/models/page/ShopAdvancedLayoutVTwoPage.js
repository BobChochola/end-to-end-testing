let Page = require('../../framework/models/Page.js')

class ShopAdvancedLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.CustomPage'),
      'product': this.by.css('.product-item'),
      'regular price of product list': this.by.css('.product-item .price:not(.price-sale)'),
      'sale price of product list': this.by.css('.product-item .price-sale'),
      'add to cart button': this.by.css('div.btn-add-to-cart'),
      'popover': this.by.css('.modal-dialog'),
      'popover product info': this.by.css('.modal-dialog .quick-cart-body .product-info'),
      'popover sale price': this.by.css('.modal-dialog .quick-cart-body div:not(.ng-hide)>div.price-sale:not(.ng-hide)'),
      'popover regular price': this.by.css('.modal-dialog .quick-cart-body .product-info'),
      'popover add to cart button': this.by.css('.modal-dialog .btn-quick-cart-add-to-cart'),
      'popover variation dropdown': this.by.css('.selectpicker'),
      'popover variation dropdown option': this.by.css('.selectpicker option'),
      'popover variation quantity field': this.by.css('[ng-model="addItemQuantity"]'),
      'popover message button': this.by.css('.modal-dialog [ng-click="showMessageForm()"]'),
      'popover close button': this.by.css('.modal-dialog [ng-click="cancel()"]'),
      'preorder button': this.by.css('.modal-dialog .btn-color-primary'),
      'cart panel': this.by.css('#cart-panel'),
      'close cart panel area': this.by.css('[id="Content"]'),
      'checkout button': this.by.css('#btn-checkout'),
      'member price flag': this.by.css('.member-price-tag-content'),
    }
  }

}

module.exports = ShopAdvancedLayoutVTwoPage