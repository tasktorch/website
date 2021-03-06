#--------------------------------------------------------------------------------
React                                  = require 'react'
dom                                    = require 'util/dom'
{a, div, footer, img, li, p, span, ul} = React.DOM
#--------------------------------------------------------------------------------
require './Footer.styl'
#--------------------------------------------------------------------------------

Footer = React.createClass {

  displayName: 'Footer'

  render: ->

    footer {},
      div {className: 'links'},
        a {className: 'left', href: '/'},
          img {className: 'logo', src: require('images/tasktorch-white.svg')}
          div {}, "TaskTorch"
        div {className: 'right'},
          ul {},
            li {},
              a {href: '/product'}, "Product Tour"
            li {},
              a {href: '/pricing'}, "Pricing"
          ul {},
            li {},
              a {href: '/team'}, "Team"
            li {},
              a {href: 'http://support.tasktorch.com/articles/terms.html'}, "Terms of Service"
          ul {},
            li {},
              a {href: 'http://support.tasktorch.com/articles/privacy.html'}, "Privacy"
            li {},
              a {href: 'http://support.tasktorch.com/articles/billing.html'}, "Billing"
          ul {},
            li {},
              a {href: 'http://blog.tasktorch.com'}, "Blog"
            li {},
              a {href: 'http://twitter.com/tasktorch'}, "@TaskTorch"
      div {className: 'bottom'},
        p {},
          "Made with "
          span {className: 'love'}, "\u2764"
          " and fueled by barbecue in Raleigh, North Carolina."
        p {},
          "This website is "
          a {href: 'https://github.com/tasktorch/website', target: '_blank'}, "open source"
          "."

}

module.exports = Footer
