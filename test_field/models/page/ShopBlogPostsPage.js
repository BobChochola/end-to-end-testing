let Page = require('../../framework/models/Page.js')

class ShopBlogPostsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.blog-post'),
      'row of post title list': this.by.css('.blog-post h1 a'),
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/blog/posts/?locale=en`

  }

}

module.exports = ShopBlogPostsPage
