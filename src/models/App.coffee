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
      dealerWin = true
      alert 'dealer wins'
    if finalDealerScore[0]>21 
      alert 'player wins'
      playerWin = true
    if finalPlayerScore[0]>finalDealerScore[0] then alert 'player win' else alert 'dealer win!' 
    `
    return setTimeOut(function(){return dealerWin ? alert("dealer wins!") : alert("player wins!"); }, 1000);
    `
    #setTimeOut(function() { this.initialize}, 2000)



