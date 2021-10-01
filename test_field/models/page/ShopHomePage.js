let Page = require('../../framework/models/Page.js')

class ShopHomePage extends Page {

  get elements() {

    return {
      'id': this.by.css('.home.index .cart-panel-button'),
      'shop logo': this.by.css('.navbar-header img'),
      'shop favicon': this.by.css('link[rel="shortcut icon"]'),
      'side menu': this.by.css('div[id="left-panel"]'),
      'sign up button': this.by.css('a[href="/users/sign_up"]'),
      'message button': this.by.css('a[ng-click="showMessageForm()"]'),
      'cart button': this.by.css('.cart-panel-button'),
      'message popup': this.by.css('div[ng-controller="MessageFormController"]'),
      'pop-up email field': this.by.css('input[name="sender_email"]'),
      'pop-up message field': this.by.css('textarea[name="message_text"]'),
      'pop-up send button': this.by.css('button[id="btn-form-submit-modal"]'),
      'pop-up send button with recaptcha': this.by.css('form[ng-submit="submitMessageForm()"] button.g-recaptcha'),
      'cart panel': this.by.css('[id="cart-panel"]'),
      'remove button': this.by.css('.cart-item .remove a'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
      'all language dropdown options': this.by.css('ul[class*="language"]'),
      'header search button': this.by.css('.menu-button.search-button'),
      'header bar search field': this.by.css('.search-button input[name="query"]'),
      'search products field': this.by.css('.side-panel-search input[name="searchQuery"]'),
      'recaptcha popover': this.by.css('iframe[title="recaptcha challenge"]'),

      'sign in button': this.by.css('a.menu-button[href="/users/sign_in"]'),
      'member center button': this.by.css('.member-myaccount-button'),

      'login button': this.by.css('a[class="menu-button signin-signup-button mobile-revamp-navigation"]'),

      'shop all button': this.by.css('.navbar-menu a[href*="products"]'),
      'navigation bar': this.by.css('div.navbar-menu.hidden-xs li a'),
      'alert': this.by.css('h4[class="ui-pnotify-title"]'),
      'checkout button': this.by.css('#btn-checkout'),
      //mobile
      'side menu button': this.by.css('a.left-panel-button.menu-button.visible-xs.visible-sm.ie-hack'),
      'side menu dropdown': this.by.css('#left-panel'),
      'side menu navigation button': this.by.css('#left-panel > div:nth-child(n) > ul > li:nth-child(n) > a[href]'),
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/?locale=en`

  }

  getImageSrcFromElement(elementId, idx = 0) {

    let element

    return this.findElement(elementId, idx)
      .then( (tmpElement) => {

        element = tmpElement

        return element.getTagName()

      })
      .then( (tag) => {

        if (tag == 'img') {

          return element.getAttribute('src')

        }

        if (tag == 'link') {

          return element.getAttribute('href')

        }

        return element.getAttribute('ng-style')
          .then( (imageSrc) => {

            let result = imageSrc.match(/\((https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9]\.[^\s]{2,})\)/g)

            let src = result[0]
            src = src.substr(1)
            src = src.substring(0, src.length - 1)

            return src

          })

      })

  }

  get samples() {

    return {
      'logo image': `${this.props.sample.sampleImagesPath()}/2.png`,
      'favicon image': `${this.props.sample.sampleImagesPath()}/1.png`,
      'new email': `${this.props.sample.genNewEmail()}`,
      'another new email': `${this.props.sample.genNewEmail()}`,
      'message content': `Woah new store! Congrats!`,
      'product name': 'for Checkout',
      'notification email': this.props.loginAccount.notificationEmail,
      'comparison email': 'usertest@gmail.com',
    }

  }

}

module.exports = ShopHomePage
