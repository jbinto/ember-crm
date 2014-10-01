App.IdeasNewController = Ember.Controller.extend
  actions:
    createIdea: ->
      fields = @get('fields')
      if App.Idea.valid(fields)
        idea = @store.createRecord 'idea', fields
        idea.save().then =>
          @transitionToRoute 'idea', idea
      else
        @set 'showError', true

    cancel: ->
      @transitionToRoute 'ideas'