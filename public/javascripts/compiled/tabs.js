
  window.Tabs = (function() {

    function Tabs(options) {
      var tab, _i, _len, _ref;
      var _this = this;
      this.options = options;
      this.el = this.options.el;
      this.content = this.el.find('.content');
      this.content.find('li').hide();
      this.content.find('#' + this.options["default"]).show();
      this.tabs = this.el.find('.tabs');
      _ref = this.tabs.find('li a');
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        tab = _ref[_i];
        $(tab).click(function(event) {
          event.preventDefault();
          return _this.show($(event.target).attr('href'));
        });
      }
    }

    Tabs.prototype.show = function(selector) {
      this.content.find('li').hide();
      return this.content.find(selector).show();
    };

    return Tabs;

  })();
