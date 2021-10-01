let Page = require('../../framework/models/Page.js')

class ShopWishlistPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.Wishlist'),
      'member center tab': this.by.css('.nav-tabs a'),
      'cart panel': this.by.css('#cart-panel'),
      'checkout button': this.by.css('#btn-checkout'),
      'row of product price': this.by.css('.Wishlist-price'),
      'row of product title': this.by.css('.Wishlist-productTitle'),
      'row of wishlist': this.by.css('.Wishlist-block-row'),
      'row of delete button': this.by.css('.Button-wishlistRemove'),
      'row of add to cart button': this.by.css('button[ng-click="addItemToCart(item, $index)"]'),
      'popup': this.by.css('.modal-dialog'),
      'confirm button': this.by.css('[ng-click="submitConfirm()"]'),
      'continue shopping button': this.by.css('.Wishlist-placeholder a'),
      'logout button': this.by.css('.member-center-logout'),
    }
  }

}

module.exports = ShopWishlistPage