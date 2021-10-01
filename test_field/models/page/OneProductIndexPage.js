let Page = require('../../framework/models/Page.js')

class OneProductIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[name="searchText"]'),
      'product name': this.by.css('td[data-e2e-id="product name"]'),
      'product list': this.by.css('tr[data-e2e-id="product list"]'),
      'variants quantity': this.by.css('td[data-e2e-id="variants quantity"]'),
      'stock quantity': this.by.css('td[data-e2e-id="stock quantity"]'),
      'pend to deliver quantity': this.by.css('td[data-e2e-id="pend to deliver quantity"]'),
      'available quantity': this.by.css('td[data-e2e-id="available quantity"]'),
      'manage button': this.by.css('td[data-e2e-id="manage button"] button'),
      'search field': this.by.css('input[data-e2e-id="search field"]'),
    }

  }

  get samples() {

    return {
      'checkout order quantity': parseInt((`${this.getVariable('origin quantity')}`.replace(/[^0-9]/g))-1).toString(),
      'vatiation checkout order quantity': parseInt((`${this.getVariable('variation origin quantity')}`.replace(/[^0-9]/g))-1).toString(),
      'all checkout count': parseInt((`${this.getVariable('all before checkout')}`.replace(/[^0-9]/g))-4).toString(),
      'first updated quantity': (parseInt(this.getVariable('first quantity'))+1).toString(),
      'forth updated quantity': (parseInt(this.getVariable('forth quantity'))-10).toString(),
      'all updated quantity': (parseInt(this.getVariable('all quantity'))-2).toString(),
    }

  }

  get url() {

    return `${this.props.oneURL}/admin/${this.props.account.handle}/products?locale=en`

  }

}

module.exports = OneProductIndexPage
