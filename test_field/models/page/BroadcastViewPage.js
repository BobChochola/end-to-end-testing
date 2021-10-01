let Page = require('../../framework/models/Page.js')

class BroadcastViewPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="BroadcastsShowController"]'),
      'message title': this.by.css('[ng-if="broadcast.name"]'),
      //Conversion Funnel
      'conversion funnel table': this.by.css('.labels-container'),
      'row of table title': this.by.css('[ng-repeat="label in chartData.labels"]'),
      'row of table value': this.by.css('[ng-repeat="data in chartData.data[0] track by $index"]'),
      //Target Group
      'target group': this.by.css('[ng-if="state.showAdvancedFilter"]'),
      'target total users': this.by.css('.border-label .title'),
      // Message Content
      'message content': this.by.css('.message-content-text-wrapper'),
      'message sent time': this.by.css('.message-content-wrapper .date-label'),
   }
  }
  get samples() {

    return {
      'SMS title': 'test SMS message title',
      'SMS content': 'test SMS message content',
      'Email title': 'test EMAIL message title',
      'Email content': 'test EMAIL message content',
      'FB title': 'test FB message title',
      'FB content': 'test FB message content',
      'dateNow': this.props.sample.genDate(0,0,'-'),
      'hourNow': this.props.sample.genHour().toString().replace(/0*/,''),
      'timeNow': this.props.sample.genTwelveHourPeriod(0),
      'shop URL with utm': `${this.props.sample.genShopURL(this.props.account.handle)}?utm_source=google&utm_content=test`,
    }

  }

}

module.exports = BroadcastViewPage