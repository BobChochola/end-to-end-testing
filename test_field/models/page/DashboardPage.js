let Page = require('../../framework/models/Page.js')

class DashboardPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="Dashboard"]'),
      'email field': this.by.css('input[name="email"]'),
      'password field': this.by.css('input[name="password"]'),
      'login button': this.by.css('button[ng-click="formSubmit()"]'),
      //headerBar
      'Language': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'English': this.by.xpath('/html/body/div[3]/navigation-bar/div/div[1]/div/div/div/ul[1]/li[1]/ul/li[1]'),
      'ZH': this.by.xpath('/html/body/div[3]/navigation-bar/div/div[1]/div/div/div/ul[1]/li[1]/ul/li[2]'),
      'Help': this.by.css('[id="navbar-help"]'),
      'Academy': this.by.xpath('/html/body/div[3]/navigation-bar/div/div[1]/div/div[1]/div/ul[1]/li[2]/ul/li[1]'),
      'FAQ': this.by.css('[id="faq_button"]'),
      'View my shop button': this.by.css('a[ng-show*="mainConfig.merchantData.shop_status"]:not(.ng-hide)'),
      //user menu
      'User Menu': this.by.css('[id="menu-user"]'),
      'My Profile': this.by.css('ul.dropdown-menu a[href$="users/profile"]'),
      'Change Password': this.by.css('ul.dropdown-menu a[href$="users/edit"]'),
      'My Plan And Billing': this.by.css('ul.dropdown-menu a.plan'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      //dsahbroad
      'product pageviews': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/div/react-app/div[1]/div[2]/div[6]/div/div/div/div[1]/table/thead/tr/th[5]/div'),
      'todays orders': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/div/react-app/div[1]/div[2]/div[4]/div[2]/div'),
      'shops page views': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/div/react-app/div[1]/div[2]/div[5]/div[1]'),
      //side menu
      'sidebar shop name': this.by.css('[data-e2e-id="sidebar_merchant_menu"] [color="SNOW_100"]'),
      'shop logo': this.by.css('.shop-menu-profile'),
      'side menu': this.by.css('.side-menu'),
      'side menu items': this.by.css('[data-e2e-id*="sidebar"]:not([data-e2e-id*="submenu"])'),
      'side submenu items': this.by.css('a[data-e2e-id*="submenu"]'),
      'member center side menu': this.by.css('[data-e2e-id="sidebar_message_center_menu"] div'),
    }

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

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/?locale=en`

  }

  get samples() {

    return {
      'logo image': `${this.props.sample.sampleImagesPath()}/2.png`,
      'favicon image': `${this.props.sample.sampleImagesPath()}/1.png`,
      'admin staff setting add page': `${this.props.baseURL}/admin/${this.props.account.handle}/staff/new/?locale=en`,
    }

  }


}

module.exports = DashboardPage