var Router = Ember.Router.extend({
  location: 'history'
});

Router.map(function() {
  this.resource('users', function() {
    this.route('new');
    this.route('show', {path: ':user_id'});
    this.route('edit', {path: ':user_id/edit'});
  });
  this.resource('users');
});

export default Router;
