let Page = require('../../framework/models/Page.js')

class ReportPdfPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[type="application/pdf"]'),
      'order invoice': this.by.css('[src$="invoice.pdf"]'),
      'return order invoice': this.by.css('[src$="invoice.pdf"]'),
      'packing slip':this.by.css('[src$="slip.pdf"]'),
      'stock picking list': this.by.css('[src*="Stock"]'),
      'mail packing slip':this.by.css('[src*="Packing"]'),
      'shipping label': this.by.css('[src*="labels.pdf"]'),
    }
  }

  get samples() {
    return {
    'full choose date': `${this.props.sample.genYear()}-${this.props.sample.genMonth()}-${this.getVariable('choose date')}`,
    }
  }

  get url() { return; }

  get isAngular() { return false }
}

module.exports = ReportPdfPage

