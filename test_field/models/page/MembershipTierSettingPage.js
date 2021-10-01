let Page = require('../../framework/models/Page.js')

class MembershipTierSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[ng-controller="MembershipTiersController"] .membership-tiers-table'),
      'membership tier name field': this.by.css('input[name="tier_name_translations"]'),
      'add button': this.by.css('.btn-primary'),
      'row of membership list': this.by.css('.membership-tiers-table div[ng-repeat="tier in tiers"]'),
      'dropdown button': this.by.css('.membership-tiers-table button'),
      'dropdown option': this.by.css('.membership-tiers-table .dropdown-menu a'),
      'confirmation popup window': this.by.css('.modal-dialog'),
      'delete button': this.by.css('.modal-footer button.btn-danger[ng-click^="confirm"]'),
      'membership table': this.by.css('.membership-tiers-table'),
      'logs button': this.by.css('.btn-default'),
      'row of logs':this.by.css('li[ng-repeat="log in logs"]'),
      'submit button': this.by.css('form[name="tierForm"] button[type="submit"]'),
      'row of swap tier button':this.by.css('i[ng-click="swapTier(tier, tiers[$index+1])"]'),
      'row of swap up tier button':this.by.css('i[ng-click="swapTier(tier, tiers[$index-1])"]'),
      'membership upgrade condition option': this.by.css('.sb-dropdown .sb-item-handle'),
      'membership extension condition select button':this.by.css('selectbox[name="extend_rules_condition_interval_type"] a'),
      'membership extension total spend field':this.by.css('input[name="extend_rules_spending"]'),
      'specific period within field': this.by.css('input[ng-model="form.upgrade_rule.effect_interval.time_value"][disabled]'),
      'breadcrumb': this.by.css('.page-heading h1 > span:not(.ng-hide):nth-child(5)'),
      'popup': this.by.css('.modal-dialog'),
      'popup confirm button': this.by.css('[ng-click=\"confirm()\"]:not(.ng-hide)'),
      'member tier active button': this.by.css('[ng-click="openMembershipTiersModal()"]'),
      'active popup confirm button': this.by.css('[ng-click="gotoPage(\'select\')"]'),
      'exclude old order checkbox': this.by.css('[class="membership-tiers-modal-label"]:nth-child(1) [ng-model="state.includeConsumption"]'),
      'active popup next button': this.by.css('button[ng-click="gotoPage(\'confirm\')"]'),
    }

  }

  get samples() {

    return {
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/membership_tiers?locale=en`
  
  }

}

module.exports = MembershipTierSettingPage 
