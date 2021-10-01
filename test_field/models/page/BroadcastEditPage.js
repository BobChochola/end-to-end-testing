let Page = require('../../framework/models/Page.js')

class BroadcastEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="BroadcastsFormController"]'),
      'tab': this.by.css('li[ng-repeat^="tab"]'),
      'title field': this.by.css('input[name="broadcast_title"]'),
      'content field': this.by.css('textarea[name="broadcast_body"]'),
      'html content field': this.by.css('.cke_editable'),
      'send immediately checkbox': this.by.css('.radio label [value="now"]'),
      'send button': this.by.css('button[type="submit"]'),
      'cancel button': this.by.css('a[class="btn btn-default ng-binding"]'),

      'preset time field': this.by.css('input[type="datetime"]'),
      'datetime picker button': this.by.css('span[ng-click="dateTimePickerDidClick($event)"]'),
      'datetime picker': this.by.css('ul[ng-change="dateSelection(date)"]'),
      'incrementHours hours button': this.by.css('a[ng-click="incrementHours()"]'),
      'datetime picker done button': this.by.css('button[ng-click="close()"]'),
      'today button': this.by.css("button[ng-click=\"select('today')\"]"),
      'now time button': this.by.css("button[ng-click=\"select('now')\"]"),

      'filter dropdown': this.by.css('.filter-label'),
      'filter type dropdown': this.by.css('[options="segmentTypeOptions"]'),
      'filter type dropdown option': this.by.css('[options="segmentTypeOptions"] a.sb-item-handle'),
      'value dropdown': this.by.css('[options="segmentOperatorOptions"]'),
      'value dropdown option': this.by.css('[options="segmentOperatorOptions"] a'),
      'add filter button': this.by.css('[ng-click="addFilter()"]'),
      'selected filter': this.by.css('.label-apply'),
      'filter result': this.by.css('h4'),

      'error message': this.by.css('.alert.alert-danger:not(.ng-hide)'),

      //template
      'text field': this.by.css('textarea[ng-model="template.payload.text"]'),
   }
  }

  get samples() {
    return {
      'Email titled': 'test EMAIL message title Modify',
      'Email contented': 'test EMAIL message content Modify',
      'FB titled': 'test FB message title Modify',
      'FB contented': 'test FB message content Modify',
      'SMS titled': 'test SMS message title Modify',
      'SMS contented': 'test SMS message content Modify',
      'LINE titled': 'test LINE@ message title Modify',
      'LINE contented': 'test LINE@ message content Modify',
      'preset edited time': `${this.props.sample.genDate()} ${this.props.sample.genHour(2)%12<10&this.props.sample.genHour(2)%12>0?'0':''}${this.props.sample.genHour(2)%12?this.props.sample.genHour(2)%12:12}:00`
    }
  }

}

module.exports = BroadcastEditPage
