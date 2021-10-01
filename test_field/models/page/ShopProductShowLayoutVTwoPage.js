let Page = require('../../framework/models/Page.js')

class ShopProductShowLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[class="container ProductDetail-container ng-scope"]'),
      // active menu
      'trial merchant message': this.by.css('div[class*="trial-banner"]'),
      'language dropdown': this.by.css('div[class*="App-languageDropdown"]'),
      'language dropdown option': this.by.css('li[class*="sl-language-chooser-language"]'),
      'login button': this.by.css('ul.NavigationBar-actionMenu.pull-right>li:nth-child(4)'),
      'cart button': this.by.css('nav:not(.mod-mobile) .CartPanel-toggleButton.sl-cart-toggle'),
      'member center button': this.by.css('.NavigationBar.mod-desktop a[href*="/users/"]'),
      // product detail
      'add to cart button': this.by.css('[ng-click="addItemToCart()"]'),
      'sticky add to cart button': this.by.css('.js-sticky-cart-button-container .js-btn-cart-fixed'),
      'buy together button': this.by.css('#btn-addon-checkout'),
      'buy now button': this.by.css('button.btn-buy-now:not(.ng-hide)'),
      'sticky buy now button': this.by.css('.js-sticky-cart-button-container .btn-buy-now'),
      'message button': this.by.css('.wrap-message-btn'),
      'notify when in stock button': this.by.css('div[id="back-in-stock-content"]'),
      'addon checkbox': this.by.css('input[type="checkbox"]'),
      'addon item': this.by.css('div#addon-item'),
      'product info': this.by.css('div:not(.ng-hide) > div > .ProductDetail-product-info'),
      'regular price': this.by.css('div.price-regular:not(.price-sale)'),
      'regular price strikethrough': this.by.css('div[class="global-primary dark-primary price-regular price js-price price-crossed"]'),
      'sale price': this.by.css('.price-sale:not(.member-price-tip-content)'),
      'member price': this.by.css('div[class="member-price-tip"]'),

      'message list': this.by.css('div[class="messagetobuy dark-secondary"]'),
      'variation selector': this.by.css('.selectpicker'),
      'variation option': this.by.css('.selectpicker option'),
      'add to wishlist button off': this.by.css('sl-wishlist-button[class="btn-add-wishlist ng-isolate-scope"]:not(.is-active)'),
      'add to wishlist button on': this.by.css('sl-wishlist-button[class="btn-add-wishlist ng-isolate-scope is-active"]'),
      'alert': this.by.css('.ui-pnotify'),
      'sold out': this.by.css('div[class="out-of-stock txt-sold-out"]'),
      'addon name': this.by.css('[class="title global-primary dark-primary"]'),

      'product list': this.by.css('h1.Product-title'),
      'notify tooltip button': this.by.css('back-in-stock-button > div > div > a'),
      'product quantity field': this.by.css('[class*="variation"]:not(.ng-hide) input[ng-model*="addItemQuantity"]'),
      'increase button': this.by.css('button[ng-click="incQuantity()"]'),
      'star in product info': this.by.css('div[class*="ProductDetail-product-info"] .box-default span[class="fa fa-star"]'),

      // cart panel
      'cart panel': this.by.css('div[id="cart-panel"]'),
      'cart panel item list': this.by.css('#cart-panel .cart-item'),
      'cart panel price list': this.by.css('#cart-panel .cart-item .price-details'),
      'cart panel image list': this.by.css('#cart-panel .cart-item .cart-item-image'),
      'close cart panel area': this.by.css('.Modal-mask.cart-mask'),
      'checkout button': this.by.css('#cart-panel button[id="btn-checkout"]'),

      //paypal frame and elements
      'product detail paypal frame': this.by.css('.product-detail-actions paypal-fast-checkout-btn:not(.ng-hide) iframe'),
      'cart panel paypal frame': this.by.css('#cart-panel paypal-fast-checkout-btn:not(.ng-hide) iframe'),
      'sticky paypal frame': this.by.css('.js-sticky-cart-button-container paypal-fast-checkout-btn:not(.ng-hide) iframe'),
      'paypal checkout button': this.by.css('.paypal-button'),

      //customer review
      'customer review area': this.by.css('div.product-reviews-container'),
      'rating source dropdown': this.by.css('select[ng-model="ratingSource"]'),
      'rating source dropdown option': this.by.css('select[ng-model="ratingSource"] option'),
      'review number': this.by.css('div.review-summary-info-title'),
      'product stars': this.by.css('div.review-summary-info-desc'),
      'five stars percentage': this.by.css('div.review-summary-bars div[ng-repeat*="index"]:nth-child(1)'),
      'three stars percentage': this.by.css('div.review-summary-bars div[ng-repeat*="index"]:nth-child(3)'),
      'one stars percentage': this.by.css('div.review-summary-bars div[ng-repeat*="index"]:nth-child(5)'),
      'row of review': this.by.css('div[ng-repeat*="productReviewComment"]'),
      'row of author name': this.by.css('[class*="review-comment-author-info-name"]'),
      'row of left comment date': this.by.css('div[class*="review-comment-author-info-date"]'),
      'row of comment': this.by.css('[class*="review-comment-message-content"]'),
      'solid star': this.by.css('.review-comment-message-stars span[class="fa fa-star"]'),
      'hollow star': this.by.css('.review-comment-message-stars span[class="fa fa-star-o"]'),
      'star in first row': this.by.css('div[ng-repeat*="productReviewComment"]:nth-child(1) span[class="fa fa-star"]'), 
      'star in second row': this.by.css('div[ng-repeat*="productReviewComment"]:nth-child(2) span[class="fa fa-star"]'),

      // Kingsman
      'kingsman member center button': this.by.css('svg[class="icons icon-user"]'),
      'kingsman addon checkbox': this.by.css('.addon-promotion-item label'),
      'kingsman list of cart product': this.by.css('[class="cart-item"]'),
      'kingsman list of cart addon': this.by.css('[class="addon-cart-item cart-item ng-scope"]'),
      // UltraChic
      'ultrachic member center button': this.by.css('svg.icons.icon-person'),
      'ultrachic checkout button': this.by.css('div[id="cart-panel"] div[class="cart-chkt-btn-cont"]:nth-child(3) [id="btn-checkout"]'),
      // king
      'king checkout button': this.by.css('div[id="cart-panel"] div[class="cart-chkt-btn-cont"]:nth-child(3) [id="btn-checkout"]'),
    }
  }

  get samples() {

    return {
      'message lists': 'Please message the shop owner for order details.',
      'greenvines product index page': `https://www.greenvines.com.tw/products?locale=en`,
      'allyoung product index page': `https://www.allyoung.com.tw/products?locale=en`,
      'robinmaybag product index page': `https://www.robinmaybag.com/products?locale=en`,
      'lesenphants product index page': `https://www.lesenphants.com.tw/products?locale=en`,
      'theodorawatches product index page': `https://www.theodorawatches.com/products?locale=en`,
      'rococofashion product index page': `https://www.rococofashion.com/products?locale=en`,
      'left comment date': `${this.props.sample.genEnglishMonth()} ${this.props.sample.genOnlyDate()}, ${this.props.sample.genYear()}`,
    }

  }
}

module.exports = ShopProductShowLayoutVTwoPage