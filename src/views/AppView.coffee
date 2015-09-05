class window.AppView extends Backbone.View
  template: _.template '
    <button class="hit-button">Hit</button> <button class="stand-button">Stand</button>
    <div class="player-hand-container"></div>
    <div class="dealer-hand-container"></div>
  '

  events:
    'click .hit-button': -> @model.get('playerHand').hit()
    'click .stand-button': -> 
      @model.get('playerHand').stand() #halt the play of the player
      @model.get('dealerHand').dealerPlay() #just need to get rid of covered card
      finalPlayerScore = @model.get('playerHand').scores()
      finalDealerScore = @model.get('dealerHand').scores()
      if finalPlayerScore[0]>finalDealerScore[0] then alert 'player wins!' else alert 'dealer wins!'

  initialize: ->
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template()
    @$('.player-hand-container').html new HandView(collection: @model.get 'playerHand').el
    @$('.dealer-hand-container').html new HandView(collection: @model.get 'dealerHand').el


