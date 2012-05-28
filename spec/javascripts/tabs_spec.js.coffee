describe "tabs", ->
  beforeEach ->
    loadFixtures('tabs.html')

    @el = $('#tabs')
    @tabs = new Tabs(el: @el, default: 'tab-1')

    @tab1 = $(@el).find('.content #tab-1')
    @tab2 = $(@el).find('.content #tab-2')

  it "should only show the first tab", ->
    expect(@tab1).toBeVisible()
    expect(@tab2).not.toBeVisible()

  it "show the content for the correct tab", ->
    @tabs.show '#tab-2'
    expect(@tab1).not.toBeVisible()
    expect(@tab2).toBeVisible()

