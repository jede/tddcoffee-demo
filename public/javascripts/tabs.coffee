class window.Tabs
  constructor: (@options) ->
    @el = @options.el
    @content = @el.find('.content')

    @content.find('li').hide()
    @content.find('#'+@options.default).show()

#   @tabs = @el.find('.tabs')
#   for tab in @tabs.find('li a')
#     $(tab).click (event) =>
#       event.preventDefault();
#       @show($(event.target).attr('href'))

# show: (name) ->
#   @content.find('li').hide()
#   @content.find(name).show()
