let Page = require('../../framework/models/Page.js')

class ShopBlogPostsShowPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.blog-post'),
      'blog post': this.by.css('.blog-post .post-content'),
      'blog post img': this.by.css('.blog-post .post-content img'),
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/blog/posts/${this.pageTitle}?locale=en`

  }

}

module.exports = ShopBlogPostsShowPage
