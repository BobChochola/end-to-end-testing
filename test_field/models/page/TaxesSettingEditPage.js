let Page = require('../../framework/models/Page.js')

class TaxesSettingEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('input[ng-model="taxData.name"]'),
      'update button': this.by.css('button[ng-click="updateCountryTax()"]'),

      'region edit popover': this.by.css('.dialogbox.tax-edit-modal'),
      'row of region checkbox': this.by.css('.dialogbox.tax-edit-modal td[class="region-item"]'),
      'ok button': this.by.css('button[ng-click="confirm()"]'),
      'alert': this.by.css('div[class*="alert"]'),

      //sale tax
      'auto tax rates toggle': this.by.css('toggle-button[model="taxData.isDefaultRates"] div[ng-click="toggle()"]'),
      'auto tax rates toggle on': this.by.css('toggle-button[model="taxData.isDefaultRates"] div[aria-checked="true"]'),
      'auto tax rates toggle off': this.by.css('toggle-button[model="taxData.isDefaultRates"] div[aria-checked="false"]'),
      'tax name field': this.by.css('input[ng-model="taxData.name"]'),
      'tax rate field': this.by.css('div[ng-if="!taxData.isDefaultRates"] input'),
      'tax rate': this.by.css('div[ng-if="taxData.isDefaultRates"]'),
      'add region rate button': this.by.css('button[ng-click="addTaxRegion(\'sales\')"]'),
      'region tax rate': this.by.css('div[ng-include*=sales_tax] tbody'),
      'row of region tax rate': this.by.css('tr[ng-repeat*="taxData.sales.taxes"]'),
      'row of state tax': this.by.css('tr[ng-repeat*="taxData.sales.taxes"] td.state'),
      'row of city tax': this.by.css('tr[ng-repeat*="taxData.sales.taxes"] td.city'),
      'region tax rate field': this.by.css('tr[ng-repeat*="taxData.sales.taxes"] input[ng-model="tax.rate"]'),
      'region tax rate remove button': this.by.css('tr[ng-repeat*="taxData.sales.taxes"] span.delete'),

      //freight tax
      'freight tax rate field': this.by.css('input[ng-model="taxData.delivery.generalTax"]'),
      'add region freight rate button': this.by.css('button[ng-click="addTaxRegion(\'delivery\')"]'),
      'freight region tax rate': this.by.css('div[ng-include*=delivery_tax] tbody'),
      'row of freight region tax rate': this.by.css('tr[ng-repeat*="taxData.delivery.taxes"]'),
      'region freight tax rate field': this.by.css('tr[ng-repeat*="taxData.delivery.taxes"] input[ng-model="tax.rate"]'),
      'region freight tax rate remove button': this.by.css('tr[ng-repeat*="taxData.delivery.taxes"] span.delete'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/tax_settings?locale=en`

  }

}

module.exports = TaxesSettingEditPage
