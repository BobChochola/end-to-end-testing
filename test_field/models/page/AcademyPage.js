let Page = require('../../framework/models/Page.js')

class AcademyPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[src*="https://blog.shopline.tw"]'),
    }

  }

  get isAngular() { return false }

  get url() {
  
    return `https://www.shopline.hk/blog/start-here?utm_medium=admin-panel&utm_campaign=push-blog&utm_source=shopline&utm_content=hk`
  
  }
}

module.exports = AcademyPage 
