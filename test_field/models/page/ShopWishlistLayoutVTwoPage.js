let Page = require('../../framework/models/Page.js')

class ShopWishlistLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.Wishlist'),
      'member center tab': this.by.css('div.Tab-label'),
      'logout button': this.by.css('a[href="/signout"]'),
      'cart panel': this.by.css('#cart-panel'),
      'checkout button': this.by.css('#btn-checkout'),
      'row of product price': this.by.css('.Wishlist-price'),
      'row of product title': this.by.css('.Wishlist-productTitle'),
      'row of wishlist': this.by.css('.Wishlist-block-row'),
      'row of delete button': this.by.css('.Button-wishlistRemove'),
      'row of add to cart button': this.by.css('button[ng-click="addItemToCart(item, $index)"]'),
      'popup': this.by.css('div[class="modal-confirm ng-scope"]'),
      'confirm button': this.by.css('button[class="btn-confirm ng-binding"]'),
      'continue shopping button': this.by.css('div.row.Wishlist-placeholder.ng-scope > a'),
      'variation option': this.by.css('p[ng-repeat="variation in item.product.field_titles"]'),
      'row of buy now button': this.by.css('.btn-buy-now:not(.ng-hide)'),
    }
  }

}
module.exports = ShopWishlistLayoutVTwoPage