#--------------------------------------------------------------------------------
_                    = require 'lodash'
React                = require 'react/addons'
classSet             = require 'util/classSet'
dom                  = require 'util/dom'
{a, div, h2, img, p} = React.DOM
#--------------------------------------------------------------------------------
require './AboutUs.styl'
#--------------------------------------------------------------------------------

AboutUs = React.createClass {

  displayName: 'AboutUs'

  getInitialState: ->
    {visible: false}

  componentDidMount: ->
    window.addEventListener('scroll', @handleScroll)

  componentWillUnmount: ->
    window.removeEventListener('scroll', @handleScroll)

  render: ->

    classes = classSet [
      'about-us'
      'visible' if @state.visible
    ]

    div {className: classes},
      div {className: 'top'},
        h2 {}, "We're on a mission to help teams become more productive."
      div {className: 'bottom'},
        div {className: 'profile niki'},
          img {src: require('images/niki.jpg')}
          div {className: 'caption'},
            div {className: 'name'}, "Niki Kohari"
            div {className: 'title'}, "CEO and Ray of Sunshine"
            div {className: 'contact'},
              a {href: "mailto:niki@tasktorch.com"}, "niki@tasktorch.com"
              a {href: "https://twitter.com/nikibeth", target: "_blank"}, "@nikibeth"
        div {className: 'center'},
          p {},
            "We're driven by the belief that great things can happen when people with different backgrounds "
            "work together towards a common goal."
          p {},
            "After years of being frustrated with project management systems that weren't built to help "
            "individuals get things done, we built TaskTorch to help keep everyone focused and less "
            "stressed."
        div {className: 'profile nate'},
          img {src: require('images/nate.jpg')}
          div {className: 'caption'},
            div {className: 'name'}, "Nate Kohari"
            div {className: 'title'}, "CTO and Professional Bitshifter"
            div {className: 'contact'},
              a {href: "mailto:nate@tasktorch.com"}, "nate@tasktorch.com"
              a {href: "https://twitter.com/nkohari", target: "_blank"}, "@nkohari"

  handleScroll: ->
    visible = dom.isVisible(@getDOMNode(), 300)
    @setState {visible}

}

module.exports = AboutUs
