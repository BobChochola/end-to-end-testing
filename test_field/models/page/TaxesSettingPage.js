let Page = require('../../framework/models/Page.js')

class TaxesSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="TaxSettingsController"] tr.tax-table'),
      'alert': this.by.css('div[class*="alert"]'),
      'all shop need tax toggle': this.by.css('toggle-button[ng-click="clickTaxableToggle()"] div[ng-click="toggle()"]'),
      'all shop need tax toggle on': this.by.css('toggle-button[ng-click="clickTaxableToggle()"] div[aria-checked="true"]'),
      'all shop need tax toggle off': this.by.css('toggle-button[ng-click="clickTaxableToggle()"] div[aria-checked="false"]'),
      'add region button': this.by.css('button[ng-click="addTaxCountry()"]'),
      'tax area popover': this.by.css('div.dialogbox.add-tax-country'),
      'close tax area popover button': this.by.css('div.dialogbox span.close-modal'),
      'country item': this.by.css('div[class="country-item ng-scope"]'),
      'country list': this.by.css('table.table tbody'),
      'row of country list': this.by.css('tr[ng-repeat*=taxList]'),
      'row of sale tax': this.by.css('tr[ng-repeat*=taxList] td.basic'),
      'row of freight tax': this.by.css('tr[ng-repeat*=taxList] td.delivery'),
      'edit button': this.by.css('tr[ng-repeat*=taxList] a'),
      'remove button': this.by.css('tr[ng-repeat*=taxList] button'),
      'popover': this.by.css('.modal-dialog'),
      'confirm button': this.by.css('button[ng-click="confirm()"]'),
      'remove area checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'remove confirm button': this.by.css('div[class="clear"] button:not(.ng-hide)[ng-click="confirm()"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/tax_settings?locale=en`

  }

}

module.exports = TaxesSettingPage
