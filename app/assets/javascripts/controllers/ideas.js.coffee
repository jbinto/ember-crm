App.IdeasController = Ember.ArrayController.extend
  # sortProperties: http://emberjs.com/api/classes/Ember.SortableMixin.html
  sortProperties: ['ideaShort']

  # `ideas` is the collection that will be displayed in the template
  ideas: ( ->
    # n.b. following construct is a CoffeeScript ternary operator; NOT a JS promise.
    # read:
    #  if there's a search term typed in,
    #   delegate to `searchedLeads`.
    #  else,
    #   delegate to `this`
    #   (e.g. controller, since iterating over controller == iterating over model)

    if @get('search') then @get('searchedLeads') else @
  ).property('search', 'searchedLeads')

  searchedLeads: ( ->
    search = @get('search').toLowerCase()

    # presumably, this.filter takes a lambda predicate; a la LINQ select, ruby filter, etc.
    # don't forget: CoffeeScript implicit return
    @filter (idea) => idea.get('ideaWithBenefits').toLowerCase().indexOf(search) != -1
  ).property('search', '@each.ideaWithBenefits')

  # n.b. @each is NOT actually coffeescript, gotcha!
  # http://emberjs.com/guides/object-model/computed-properties-and-aggregate-data/