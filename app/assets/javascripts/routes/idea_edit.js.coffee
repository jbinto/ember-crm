App.IdeaEditRoute = Ember.Route.extend
  # Recall, these are Route Hooks
  #   http://emberjs.com/api/classes/Ember.Route.html#method_activate
  #   http://emberjs.com/api/classes/Ember.Route.html#method_deactivate
  activate:   -> @controllerFor('idea').set 'isEditing', true
  deactivate: -> @controllerFor('idea').set 'isEditing', false