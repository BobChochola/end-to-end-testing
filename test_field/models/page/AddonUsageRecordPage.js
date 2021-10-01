let Page = require('../../framework/models/Page.js')

class AddonUsageRecordPage  extends Page {  
  get elements() {

    return {
      'id': this.by.css('[ng-controller="AddonProductsHistoryController"]'),
      'log button': this.by.css('[href$="/history"]'),
      'view order button':this.by.css('div[class="pull-right"]>a[class="btn btn-default ng-binding"]'),
      'order links':this.by.css('tr[class="ng-scope"]>td>[href*="/orders"]'),


    }
  
  }

}

module.exports = AddonUsageRecordPage
