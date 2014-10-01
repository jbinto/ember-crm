App.IdeaController = Ember.ObjectController.extend

  # The 'click' event from the template will look inside actions for
  # a handler.
  actions:
    saveChanges: -> @get('model').save() if @get('model.isDirty')

  showUnsavedMessage: ( ->
    @get('isDirty') && !@get('isSaving')
  ).property('isDirty', 'isSaving')

  # This property is set/unset in the IdeaEditRoute.
  #
  # This statement is not actually necessary, merely a signal to the dev that a property is expected here.
  #
  # (n.b. A bit strange seeing a route reach into a foreign
  # controller and tinker with it's state, but that's Ember I guess.)
  isEditing: false