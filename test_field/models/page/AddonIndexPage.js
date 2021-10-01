let Page = require('../../framework/models/Page.js')

class AddonIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="AddonProductsController"] [items="addonProducts"]'),
      'addon list': this.by.css('tbody[ng-model="addonProducts"]'),
      'row of addon list': this.by.css('tr[ng-repeat="addonProduct in addonProducts"]'),
      'row of addon photo list': this.by.css('td img'),
      'row of status list': this.by.css('td[class="bulk-edit-box-unit"] span:not(.ng-hide)[ng-show*="addonProduct.status"]'),
      'select checkbox of addon list': this.by.css('td[class="bulk-edit-checkbox-wrapper"] input[ng-change="syncBulkSelectedIds(addonProduct._id)"]'),
      'select all checkbox': this.by.css('input[ng-click="bulkSelectAll()"]'),
      'bulk actions dropdown': this.by.css('span[class="pull-right dropdown"] button.btn.btn-default'),
      'publish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=publish]'),
      'unpublish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=unpublish]'),
      'delete': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=delete]'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('div[class="dialogbox ng-scope"] button.btn-danger[ng-click="confirm()"]'),
      'edit button of addon list': this.by.css('tr[ng-repeat="addonProduct in addonProducts"] a[href$="edit"]'),
      'addon limitation toggle': this.by.css('div[ng-model="addonLimitEnabled"]'),
      'addon limitation toggle off': this.by.css('div[ng-model="addonLimitEnabled"][aria-checked="false"]'),
      'addon limitation toggle on': this.by.css('div[ng-model="addonLimitEnabled"][aria-checked="true"]'),
      'alert': this.by.css('.alert'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'log button': this.by.css('[href$="/history"]'),
      'quantity limitation content': this.by.css('div[ng-show*="featureService.hasAccessToSection"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'ZH': this.by.css('[ng-click="changeLanguage(\'zh-hant\')"]'),
      'loading icon': this.by.css('[ng-show="state.isBulkActionLoading == true"]:not(.ng-hide)'),
   }

  }

  get samples() {

    return {
      'date': `${this.props.sample.genDate()}`,
      'addon photo': `${this.props.sample.sampleImagesPath()}/1.png`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/addon_items?locale=en`

  }



}

module.exports = AddonIndexPage
