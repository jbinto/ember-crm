App.UserController = Ember.ObjectController.extend({

  someFunction: -> alert('hi')

  someProperty: ( ->
    if @get('model.firstName') is "Jesse"
      "Hey Jesse"
    else
      "Hey, you're not Jesse"
  ).property('model.firstName')  # computed property depends on model.firstName

  someObserver: ( ->
    alert "You changed your name, huh '#{@get('model.firstName')}'?"
  )

  actions:
    deleteUser: -> @get('model').destroyRecord()

    saveChanges: -> @get('model').save()

})