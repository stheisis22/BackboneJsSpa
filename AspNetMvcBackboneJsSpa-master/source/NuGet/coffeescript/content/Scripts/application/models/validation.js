(function() {
  var App, Models, emailRegex, exports;

  exports = this;

  App = exports.Application || (exports.Application = {});

  Models = App.Models || (App.Models = {});

  emailRegex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

  Models.Validation = {
    addError: function(errors, attribute, message) {
      return (errors[attribute] || (errors[attribute] = [])).push(message);
    },
    isValidEmailFormat: function(value) {
      return value && emailRegex.test(value);
    },
    isValidPasswordLength: function(value) {
      return value && value.length >= 6 && value.length <= 64;
    }
  };

}).call(this);
