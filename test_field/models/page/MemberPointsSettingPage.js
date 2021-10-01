let Page = require('../../framework/models/Page.js')

class MemberPointsSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[data-field-name="Amount"]'),
      'member point toggle': this.by.css('[model*="member_point"] [ng-click="toggle()"]'),
      'member point toggle off': this.by.css('[model*="member_point"] [ng-click="toggle()"][aria-checked="false"]'),
      'popover': this.by.css('.modal-dialog'),
      'popover disable button': this.by.css('button[ng-click="confirm()"]'),
      'amount field': this.by.css('input[ng-model="rule.unit_price"]'),
      'point field': this.by.css('input[ng-model="rule.points_per_unit"]'),
      'month dropdown': this.by.css('select[ng-change="getDaysInMonth(pointsExpiryMonth)"]'),
      'month dropdown option': this.by.css('select[ng-change="getDaysInMonth(pointsExpiryMonth)"] option'),
      'date dropdown': this.by.css('select[ng-model="pointsExpiryDay"]'),
      'date dropdown option': this.by.css('select[ng-model="pointsExpiryDay"] option'),
      'point assign day field': this.by.css('input[ng-model="rule.pending_days"]'),
      'point rule field': this.by.css('textarea#exampleFormControlTextarea1'),
      'update button': this.by.css('[ng-click="submitForm()"]'),
      'error message': this.by.css('p[ng-bind-html="errorMessage"]:not(.ng-hide)'),
      'alert': this.by.css('[role="alert"]'),
      'word limit': this.by.css('.box-section .pull-right.help-block.ng-binding'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/member_point_rules?locale=en`
  
  }

}

module.exports = MemberPointsSettingPage
