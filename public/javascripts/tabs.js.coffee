class window.Tabs
  constructor: (@options) ->
    @el = @options.el
    @content = @el.find('.content')

    @content.find('li').hide()
    @content.find('.'+@options.default).show()

# show: (name) ->
#   @content.find('li').hide()
#   @content.find('.'+name).show()


