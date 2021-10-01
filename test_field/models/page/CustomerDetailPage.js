let Page = require('../../framework/models/Page.js')

class CustomerDetailPage extends Page {

  get elements() {
    return {
      //General
      'id': this.by.css('div#user-credits-history'),
      'popover': this.by.css('.modal-dialog'),
      'popover confirm button': this.by.css('.modal-footer button.btn-primary'),
      //Customer Details
      'blacklist button': this.by.css('a[ng-click^="toggleUserBlock"]'),
      'email verify status': this.by.css('[label="Email"] span.label'),
      'mobile verify status': this.by.css('[label="Mobile Number"] span.label'),
      'customer name': this.by.css('[label="Name"] .field-group'),
      'customer email': this.by.css('[label="Email"] .field-group'),
      'customer mobile numbers': this.by.css('[label="Mobile Number"] .field-group'),
      'customer phone numbers': this.by.css('[label="Phone Number"] .field-group'),
      'customer delivery addresses': this.by.css('[label="Delivery Addresses"] .field-group'),
      'customer gender': this.by.css('[ng-show*="gender"]'),
      'customer birthday': this.by.css('span[ng-show*="birthday"]:not(.ng-hide)'),
      'customer last login': this.by.css('[label="Last Login"]'),
      //Orders Placed
      'row of order':this.by.css('tr[ng-repeat="order in orders"]'),
      'placed orders':this.by.css('div[ng-show="orders"]'),
      //Membership
      'membership tier settings label': this.by.css('[label="Membership Tier Settings"]'),
      'membership tier settings update button': this.by.css('[ng-click^="toggleTierDropdown"]'),
      'membership tier dropdown': this.by.css('[ng-model="membershipTierForm.tierId"]'),
      'membership tier dropdown option': this.by.css('[ng-model="membershipTierForm.tierId"] option'),
      'membership eligible to upgrade': this.by.css('[data-field-name^="Eligible"]'),
      'membership expiry date': this.by.css('[data-field-name="Membership Expiry Date"]'),
      'is a member': this.by.css('[label="Is a Member"] .field-group'),
      'member x icon': this.by.css('[label="Is a Member"] i.fa.fa-times.darkred'),
      'member v icon': this.by.css('[label="Is a Member"] i.fa.fa-check.green'),
      //Tags & Note 
      'tag edit button': this.by.css('.user-memo-tags-container [ng-click="edit()"]'),
      'tag save button': this.by.css('.user-memo-tags-container [ng-click="save()"]'),
      'add tag field': this.by.css('input[ng-model="newTag.text"]'),
      'tag summary': this.by.css('div[ng-hide="isEditable()"]'),
      'remove button': this.by.css('a[class="remove-button ng-binding ng-scope"]'),
      'apply tag label': this.by.css('span[ng-repeat="tag in user.tags"]'),
      //Store Credits
      'row of credit list': this.by.css('tr[ng-repeat="credit in user_credits"]'),
      'row of credit movement': this.by.css('[ng-repeat="credit in user_credits"] td[class="ng-binding"]:nth-child(3)'),
      'row of credit expiry date': this.by.css('[ng-repeat="credit in user_credits"] td:nth-child(4)  .ng-scope'),
      'row of credit balance': this.by.css('[ng-repeat="credit in user_credits"] td[class="ng-binding"]:nth-child(5)'),
      'validity period field': this.by.css('input[name="user_credits_period"]'),
      'view credit log button': this.by.css('a[href$="/user_credits/action_logs"]'),
      'credit balance amount': this.by.css('[label="Credit Balance"] .ng-binding.ng-scope'),
      'assign credits button': this.by.css('a[ng-click="addUserCredit()"]'),
      'amount of credit field': this.by.css('input[name="user_credits_value"]'),
      'reason field': this.by.css('textarea[name="user_credits_remarks"]'),
      'credit save button': this.by.css('[name="userCreditForm"] .btn-primary'),
      'never expires button': this.by.css('input[ng-model="user_credit.isEternal"]'),
      //Member Points
    }
  }

  get samples() {

    return {
      'dateNow': this.props.sample.genDate(),
      'dateTomorrow with hyphen': this.props.sample.genDate(1,0,'-'),
      'meridiemNow': this.props.sample.genTwelveHourPeriod(),
      'minus credit balance': `"-" ${this.getVariable('credit balance')}`,
      'minus point balance': `"-" ${this.getVariable('point balance')}`,
      'second minus credit balance': `"-" ${this.getVariable('second credit balance')}`,
      'six months expiry date': this.props.sample.genDate(0, 6),
    }
  }
}

module.exports = CustomerDetailPage
