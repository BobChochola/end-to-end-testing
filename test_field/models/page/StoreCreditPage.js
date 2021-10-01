let Page = require('../../framework/models/Page.js')

class StoreCreditPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div.box-info.full.user-credit-rule-container'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('[aria-labelledby="menu-languages"] a'),

      'welcome credit toggle': this.by.css("toggle-credit[rule-key=\'welcome_credit\'] div[ng-click=\'toggle()\']"),
      'welcome credit toggle on': this.by.css('toggle-credit[rule-key=\'welcome_credit\'] div[aria-checked="true"]'),
      'welcome credit toggle off': this.by.css('toggle-credit[rule-key=\'welcome_credit\'] div[aria-checked="false"]'),
      'welcome credit amount field': this.by.css('input[name="welcome_credit_rule_value"]'),
      'welcome credit validity period field': this.by.css('[rule-key="welcome_credit"] input[ng-model="rule.credit_valid_period"]'),
      'welcome credit disabled validity period field': this.by.css('[rule-key="welcome_credit"] input[ng-model="rule.credit_valid_period"][disabled="disabled"]'),
      'welcome credit never expires checkbox': this.by.css('[rule-key="welcome_credit"] input[type="checkbox"]'),

      'birthday credit toggle': this.by.css('div[class*="user-credit-rule-container"] div.btn-group div.btn-sl-toggle'),
      'birthday setting button': this.by.css('a[href="users/settings"]'),
      'birthday credit amount field': this.by.css('input[name="birthday_credit_rule_value"]'),
      'birthday credit validity period field': this.by.css('[rule-key="birthday_credit"] input[ng-model="rule.credit_valid_period"]'),
      'birthday credit disabled validity period field': this.by.css('[rule-key="birthday_credit"] input[ng-model="rule.credit_valid_period"][disabled="disabled"]'),
      'birthday credit never expires checkbox': this.by.css('[rule-key="birthday_credit"] input[type="checkbox"]'),

      'apply credit condition dropdown': this.by.css('[options="applyThresholdConditionOptions"]'),
      'apply credit condition dropdown option': this.by.css('[options="applyThresholdConditionOptions"] a'),
      'total order amount field': this.by.css('[ng-model="rule.apply_threshold"]'),
      'credit amount rule dropdown': this.by.css('[options="conditionRuleOptions"]'),
      'credit amount rule dropdown option': this.by.css('[options="conditionRuleOptions"] a'),
      'credit amount field': this.by.css('[ng-model="rule.credit_value"]'),
      'disabled maximum amount field': this.by.css('[ng-if="rule.rule_type_condition === \'none\'"]'),

      'apply partial credits section': this.by.css('[apply-partial-credit]'),
      'apply partial credits toggle': this.by.css('[apply-partial-credit] .btn-sl-toggle'),
      'apply partial credits toggle on': this.by.css('[apply-partial-credit] .btn-sl-toggle[aria-checked="true"]'),

      'turn on toggle': this.by.css('div[aria-checked="true"]'),
      'update button': this.by.css('a[ng-click="submitForm()"]'),
      'alert': this.by.css('.alert'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/user_credit_rules?locale=en`
  }
}

module.exports = StoreCreditPage