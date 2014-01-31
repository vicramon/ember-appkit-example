var Router = Ember.Router.extend({
  location: 'history'
});

Router.map(function() {
  this.resource('users');
});

export default Router;
