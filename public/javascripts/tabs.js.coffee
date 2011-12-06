class window.Tabs
  constructor: (@options) ->
    @el = @options.el
    @content = @el.find('.content')

    @show(@options.default)
  show: (name) ->
    @content.find('li').hide()
    @content.find('.'+name).show()


