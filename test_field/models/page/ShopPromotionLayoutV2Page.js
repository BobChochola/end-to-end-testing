let Page = require('../../framework/models/Page.js')

class ShopPromotionLayoutV2Page extends Page {

  get elements() {
    return {
      'id': this.by.css('[ng-controller="PromotionPageController"]'),
      'language dropdown': this.by.css('div.App-languageDropdown'),
      'language dropdown option': this.by.css('li[class="List-item sl-language-chooser-language"]'),
      'promotion name': this.by.css('.PromotionInfo'),
      'product filter':this.by.css('div[class*="ProductList-settings-filter"]'),
      'product filter options': this.by.css('div[class*="ProductList-settings-filter"] ul.ProductList-settings-list li'),
      'product of products list': this.by.css('product-item'),
      'add to cart button': this.by.css('.btn-add-to-promotion-cart'),
      'bundle cart header': this.by.css('div[class="cart-header-label"]'),
      'bundle cart content': this.by.css('.PromotionCart-content.os-host-scrollbar-vertical-hidden'),
      'bundle cart item': this.by.css('div[class*="PromotionCart-content"] div.cart-item-container'),
      'bundle cart bundle group tag': this.by.css('div[ng-repeat*="promotionCartItems"] div[ng-show*="bundle_group"]:not(.ng-hide)'),
      'bundle cart group a dot': this.by.css('div.cart-items span.bundle-group-red'),
      'bundle cart group b dot': this.by.css('div.cart-items span.bundle-group-green'),
      'group a product': this.by.css('div.product-item span[class*="bundle-group-red"]'),
      'group b product': this.by.css('div.product-item span[class*="bundle-group-green"]'),
      'products list': this.by.css('.ProductList-list'),

      //popup
      'popup': this.by.css('div[class="modal-content"]'),
      'popup increase button': this.by.css('div[class="product-variant-option"] button[ng-click="incQuantity()"]'),
      'popup add to cart button': this.by.css('button[ng-click*="addItemToCart"]'),
    }
  }

  get samples() {
    return {
      'promotion start time': `Promotion Coming Soon!Begins on `,
      'promotion end time': `Ends on `,

    }
  }

}

module.exports = ShopPromotionLayoutV2Page