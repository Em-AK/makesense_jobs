(function() {
  $(function() {
    var batch_actions_selector;
    $(document).on('focus', '.datepicker:not(.hasDatepicker)', function() {
      var defaults, options;
      defaults = {
        dateFormat: 'yy-mm-dd'
      };
      options = $(this).data('datepicker-options');
      return $(this).datepicker($.extend(defaults, options));
    });
    $('.clear_filters_btn').click(function() {
      return window.location.search = '';
    });
    $('.dropdown_button').popover();
    $('.filter_form').submit(function() {
      return $(this).find(':input').filter(function() {
        return this.value === '';
      }).prop('disabled', true);
    });
    $('.filter_form_field.select_and_search select').change(function() {
      return $(this).siblings('input').prop({
        name: "q[" + this.value + "]"
      });
    });
    if ((batch_actions_selector = $('.table_tools .batch_actions_selector')).length) {
      return batch_actions_selector.next().css({
        width: "calc(100% - 10px - " + (batch_actions_selector.outerWidth()) + "px)",
        float: 'right'
      });
    }
  });

}).call(this);
