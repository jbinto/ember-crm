App.IdeasNewController = Ember.Controller.extend
  actions:
    createIdea: ->
      # Ref: http://emberjs.com/api/data/classes/DS.Store.html
      idea = @store.createRecord 'idea', @get('fields')
      idea.save().then =>
        @transitionToRoute 'idea', idea

    cancel: ->
      @transitionToRoute 'ideas'