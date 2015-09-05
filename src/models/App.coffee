# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.

class window.App extends Backbone.Model
  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()

  findWinner: ->
    finalPlayerScore = @get('playerHand').scores()
    finalDealerScore = @get('dealerHand').scores()
    if finalPlayerScore[0]>21 
      alert 'dealer wins'
      #debugger
      return @initialize()
    if finalDealerScore[0]>21 
      alert 'player wins'
      #debugger
      return @initialize()
    if finalPlayerScore[0]>finalDealerScore[0] then alert 'player wins!' else alert 'dealer wins!'
    #debugger
    @initialize()



