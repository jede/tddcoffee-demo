class window.Tabs
  constructor: (@options) ->
    @el = @options.el
    @content = @el.find('.content')

    @content.find('li').hide()
    @content.find('.'+@options.default).show()

#   @tabs = @el.find('.tabs')
#   for tab in @tabs.children('li')
#     $(tab).click (e) =>
#       @show(e.target.className)

# show: (name) ->
#   @content.find('li').hide()
#   @content.find('.'+name).show()


