let Page = require('../../framework/models/Page.js')

class ShopHomeLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.home'),
      'language dropdown': this.by.css('[class*="language"] .dropdown-toggle'),
      'language dropdown option': this.by.css('li[class*="sl-language-chooser-language"]'),
      'shop all button': this.by.css('.NavigationBar-mainMenu a[href*="products"]'),
      'fb message pop': this.by.css('.fb_customer_chat_bubble_pop_in'),
      'facebook plugin': this.by.css('iframe[data-testid="bubble_iframe"]'),
      'facebook button': this.by.css('body[class*="plugin"] path'),
      'navigation bar': this.by.css('ul.NavigationBar-mainMenu li:not(.nav-color)'),
      'member center button': this.by.css('nav:not(.mod-mobile) a[href*="/users/"]:not(.a-dropdown__link):not([class*="submenu"])'),
      'close popup button': this.by.css('div[class="popup-box"] div[class="wrap--popup"] span'),
      'cart button': this.by.css('nav:not(.mod-mobile) .CartPanel-toggleButton.sl-cart-toggle'),
      'cart panel': this.by.css('div[id="cart-panel"]'),
      'remove button': this.by.css('div.col-xs-12.col-sm-1.text-center.item-action > a > i'),
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/?locale=en`
  }

  get samples() {

    return {
      'profile message page': `${this.props.sample.genShopURL(this.props.account.handle)}/messages?locale=en`,
      'profile order page': `${this.props.sample.genShopURL(this.props.account.handle)}/orders?locale=en`,
    }

  }

}

module.exports = ShopHomeLayoutVTwoPage