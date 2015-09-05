class window.CardView extends Backbone.View
  className: 'card'

  template: _.template '<span><%= rankName %> of <%= suitName %></span>'

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    #debugger;
    @$el.addClass 'covered-card' unless @model.get 'revealed'
    #@$el.attr "id",@model.attributes.rankName+'-'+@model.attributes.suitName.toLowerCase() #set id to image file name
    @$el.attr "style","background-image:url(./img/cards/"+@model.attributes.rankName+'-'+@model.attributes.suitName.toLowerCase()+".png)"
    @$el.children().addClass 'visibility covered' unless @model.get 'revealed'


