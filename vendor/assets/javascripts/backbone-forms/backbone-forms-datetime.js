
;(function(Form) {
  $.datepicker.setDefaults({
    dateFormat: 'D M d',
  })
  Form.editors.DatePicker = Form.editors.Text.extend({
      initialize: function(options) {

        options = options || {};

        Form.editors.Text.prototype.initialize.call(this, options);

        //Cast to Date
        if (this.value && !_.isDate(this.value)) {
          this.value = new Date(this.value);
        }
      },

      render: function() {
          // Call the parent's render method
          Form.editors.Text.prototype.render.call(this);
          // Then make the editor's element a datepicker.
          this.$el.datepicker({
          });
          this.setValue(this.value);
          return this;
      },

      getValue: function() {
        output = this.$el.datepicker( "getDate");
        return output;
      },

      setValue: function(value) {
        if (value) {
          // this.$el.val(moment(value).format('YYYY-MM-DD'));
          this.$el.datepicker('setDate', value);
        }
      }
  });

  Form.editors.DateTimePicker = Form.editors.DatePicker.extend({
      render: function() {
          // Call the parent's render method
          Form.editors.Text.prototype.render.call(this);
          // Then make the editor's element a datepicker.
          this.$el.datetimepicker({
            controlType: 'select',
            timeFormat: 'h:mm TT',
            beforeShow: function() {
              setTimeout(function(){
                // $('.ui-datepicker button').addClass('btn');
                // $('.ui-datepicker select').addClass('form-control');
              }, 1)
            },
            onSelect: function() {
              setTimeout(function(){
                // $('.ui-datepicker button').addClass('btn');
                // $('.ui-datepicker select').addClass('form-control');
              }, 1)
            }
          });

          this.setValue(this.value);
          var self = this;
          _.defer(function(){
          });
          return this;
      },

      getValue: function() {
        output = this.$el.datetimepicker( "getDate");
        return output;
      },

      setValue: function(value) {
        if (value) {
          this.$el.datetimepicker('setDate', value);
        } 
      }
  });

})(Backbone.Form);