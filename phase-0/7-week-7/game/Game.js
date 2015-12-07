


this.Game = function(playerOne, playerTwo, dealer, deck){
	var states = ['flop','turn','river'];
	this.playerOnesCards = playerOne.holeCards = deck.handOne();
	this.playerTwosCards = playerTwo.holeCards = deck.handTwo();
//	  console.log(this.playerOnesCards);
//	  console.log(this.playerTwosCards);
	var board = deck.board();
	var gameOn = true;
	var handDepth = 0;
	this.handDepth = function(){
		if(arguments.length){
			handDepth = arguments[0];
		}
		return handDepth;
	}

	this.gameOn = function(){
		if(arguments.length){
			gameOn = arguments[0];
		}
		return gameOn;
	}

  this.deal = function(){
    var cards = deck.getShuffledDeck();
  }
	this.board = function(){
		currentBoard = [];
		var depth = (arguments.length)? arguments[0] : 0;
		for(var x = 0;x<3+depth;x++){
			currentBoard.push(board[x]);
		}
		return currentBoard;
	}

}