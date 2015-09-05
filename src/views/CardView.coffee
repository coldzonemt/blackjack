class window.CardView extends Backbone.View
  className: 'card'

  template: _.template '<span><%= rankName %> of <%= suitName %></span>'

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    if !@model.get 'revealed' then @$el.attr "style","background-image:url(./img/card-back.png)" 
    else @$el.attr "style","background-image:url(./img/cards/"+@model.attributes.rankName+'-'+@model.attributes.suitName.toLowerCase()+".png)"
    
    
    
    


