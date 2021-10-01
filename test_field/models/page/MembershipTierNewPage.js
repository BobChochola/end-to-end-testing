let Page = require('../../framework/models/Page.js')

class MembershipTierNewPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="tierForm"]'),
      'membership tier name field': this.by.css('input[name="tier_name_translations"]'),
      'membership upgrade condition option': this.by.css('.sb-dropdown .sb-item-handle'),
      'membership upgrade condition select button': this.by.css('selectbox[options="membershipConditionTypes"] a'),
      'membership upgrade rules field': this.by.css('input[name="upgrade_rules_spending"]'),
      'membership extension condition select button':this.by.css('selectbox[name="extend_rules_condition_interval_type"] a'),
      'membership extension total spend field':this.by.css('input[name="extend_rules_spending"]'),
      'membership upgrade period field': this.by.css('input[name="upgrade_rules_period"]'),
      'membership valid period field': this.by.css('input[name*="rule_type_upgrade_rules_total_spending"]'),
      'set valid period radio checkbox': this.by.css('input[value="within_interval"][type=radio]'),
      'specific period within field': this.by.css('input[ng-model="form.upgrade_rule.effect_interval.time_value"][disabled]'),
      'breadcrumb': this.by.css('.page-heading h1 > span:not(.ng-hide):nth-child(5)'),
      'member offer field': this.by.css('input[name="discount_percentage"]'),
      'submit button': this.by.css('form[name="tierForm"] button[type="submit"]'),
      'h1': this.by.css('h1')
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/membership_tiers/new?locale=en`

  }

}

module.exports = MembershipTierNewPage
