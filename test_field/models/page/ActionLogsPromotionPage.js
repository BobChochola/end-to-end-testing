let Page = require('../../framework/models/Page.js')

class ActionLogsPromotionPage extends Page {

  get elements() {

    return {
      'id': this.by.css('pre[style="word-wrap: break-word; white-space: pre-wrap;"]'),

    }

  }

  get url() {

    return `${this.props.apiURL}${this.props.account.handle}/action_logs?target_id=${this.getVariable('key')}&target_type=promotion`
  }
}

module.exports = ActionLogsPromotionPage