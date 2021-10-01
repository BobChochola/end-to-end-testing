let Page = require('../../framework/models/Page.js')

class CustomNotificationPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="CustomNotificationSectionList"]'),
      'tab': this.by.css('div>div:nth-child(2)>div>div>div>div:nth-child(1):not(#sidebar-menu)>div>div'),
      'order notification button': this.by.css('a[href="custom_notification/edit/ORDER_DELIVERY_STATUS_UPDATE"]'),
      'password reset notification button': this.by.css('a[href="custom_notification/edit/USER_FORGET_PASSWORD"]'),
      'sign up notification button': this.by.css('a[href="custom_notification/edit/USER_REGISTER"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/custom_notification?locale=en`

  }

}

module.exports = CustomNotificationPage
