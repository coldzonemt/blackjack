class window.CardView extends Backbone.View
  className: 'card'

  template: _.template '<span><%= rankName %> of <%= suitName %></span>'

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    #debugger;
    @$el.addClass 'covered-card' unless @model.get 'revealed'
    @$el.children().addClass 'visibility covered' unless @model.get 'revealed'


