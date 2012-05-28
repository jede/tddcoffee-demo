
  window.Tabs = (function() {

    function Tabs(options) {
      this.options = options;
      this.el = this.options.el;
      this.content = this.el.find('.content');
      this.content.find('li').hide();
      this.content.find('#' + this.options["default"]).show();
    }

    return Tabs;

  })();
