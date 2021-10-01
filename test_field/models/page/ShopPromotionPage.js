let Page = require('../../framework/models/Page.js')

class ShopPromotionPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[ng-controller="PromotionPageController"]'),
      'cart panel button': this. by.css('a[class*="cart-panel-button"]'),
      'cart panel': this.by.css('div[id="cart-panel"]'),
      'promotion banner': this.by.css('div[class="PromotionPage-banner"]'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
      'promotion name': this.by.css('.PromotionInfo'),
      'promotion valid description': this.by.css('.PromotionPage-icon-container'),
      'product filter':this.by.css('select[class*="sl-products-filter"]'),
      'product filter options': this.by.css('select[class*="sl-products-filter"] option'),
      'products list': this.by.css('.ProductList-list'),
      'product of products list': this.by.css('product-item'),
      'add to cart button': this.by.css('.btn-add-to-promotion-cart'),
      'bundle cart header': this.by.css('div[class="cart-header-label"]'),
      'bundle cart content': this.by.css('.PromotionCart-content.os-host-scrollbar-vertical-hidden'),
      'bundle cart item': this.by.css('.cart-item-container'),
      'bundle cart item image': this.by.css('.cart-item-container .product-link'),
      'bundle cart bundle group tag': this.by.css('div[ng-repeat*="promotionCartItems"] div[ng-show*="bundle_group"]:not(.ng-hide)'),
      'bundle cart item delete button': this.by.css('.product-link .remove-button'),
      'bundle cart item quantity field': this.by.css('[ng-model="item.quantity"]'),
      'cart item decrease button': this.by.css('div[ng-click="updateQuantity(item, item.quantity - 1)"]'),
      'cart item increase button': this.by.css('div[ng-click="updateQuantity(item, item.quantity + 1)"]'),
      'bundle cart item count': this.by.css('.cart-header-label span'),
      'bundle cart collapse button': this.by.css('.PromotionCart-header'),
      'bundle cart checkout button': this.by.css('[promotion-cart] .cart-chkt-btn'),
      'quick cart product info': this.by.css('div.product-info div.hidden-xs'),
      'quick cart increase button': this.by.css('button[ng-click="incQuantity()"]'),
      'quick cart decrease button': this.by.css('button[ng-click="decQuantity()"]'),
      'quick cart quantity field': this.by.css('input[ng-model="addItemQuantity"]'),
      'quick cart add to cart button': this.by.css('button[class*="js-btn-promotion-cart-add-to-cart"]'),
      'promotion cart panel': this.by.css('div[class*="PromotionCart-panel"]'),
      'promotion cart image': this.by.css('img[class="sl-lazy-image"]'),
      'promotion cart remove button': this.by.css('div[class*="cart-item-container"] div[class="remove-button"]'),
      'promotion image': this.by.css('.PromotionPage-banner img'),
      'term and condition button': this.by.css('.show-term-button'),
      'term and condition popover': this.by.css('.promotion-term-dialog'),
      'confirm button': this.by.css('button[ng-click="confirm()"]'),
      'group a product': this.by.css('div[class*="ProductList-list"] span[class*="bundle-group-red"]'),
      'group b product': this.by.css('div[class*="ProductList-list"] span[class*="bundle-group-green"]'),
      'bundle cart group a dot': this.by.css('div.cart-items span.bundle-group-red'),
      'bundle cart group b dot': this.by.css('div.cart-items span.bundle-group-green'),

      //popup
      'popup': this.by.css('div[class="modal-content"]'),
      'popup increase button': this.by.css('div[class="product-variant-option"] button[ng-click="incQuantity()"]'),
      'popup add to cart button': this.by.css('#btn-add-to-cart'),
    }
  }

  get samples() {
    return {
      'promotion start time': `Promotion Coming Soon!Begins on `,
      'promotion end time': `Ends on `,
      'promotion photo': `${this.props.sample.sampleImagesPath()}/4.jpg`,

    }
  }

}

module.exports = ShopPromotionPage