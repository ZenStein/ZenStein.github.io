/***************
 *     NL Holdem Heads Up battle
 *
  Phase 1 Objective:  upon launch, you are shown 2 cards, you see see the flop, and are asked
  if you think you will win. Next you see the turn card, again you are asked, same with river, Then you see if you won.
  It will keep track of every time you were right and wrong.
 *
 *  Version 1:
        Steps:
 Establish who will have the dealer button on the first round,
 The dealer button then alternates back and forth till the match
 is over. Run a shuffle function on the newly created deck. Deal
 out two cards to each player. I will need:
 function matchInit will be a constructor that will hold and array of 52, representing
 the cards in a deck.function establishDealer will randomly select player one or two to be the dealer for the fist hand.

 *
 *
 *
 *
 *
 *
 *
 *
 *
 */
	 var      prompt = require('prompt');
	 var     deckObj = require('./Deck.js');
	 var   dealerObj = require('./Dealer.js');
	 var     gameObj = require('./Game.js');
	 var   playerObj = require('./Player.js');
	 var   deck = new deckObj.Deck();
	 var dealer = new dealerObj.Dealer('bill newBOb');
	 var playerOne = new playerObj.Player();
	 var playerTwo = new playerObj.Player();
	 var   game = new gameObj.Game(playerOne, playerTwo, dealer, deck);
	 prompt.start();
    var flop = {
      properties: {
	      flop:{
          description: game.board()+"\n Your Cards: " + game.playerOnesCards
	      }
      }
    };
    var turn = {
      properties: {
        turn: {
          description: game.board(1)+"\n "+ 'Your Cards:' + game.playerOnesCards
        }
      }
    };
    var river = {
      properties: {
        river: {
          description: game.board(2)+"\n "+ 'Your Cards:' + game.playerOnesCards
        }
      }
    };
    var getObj = {
      properties: {
          flop : flop,
	       turn : turn,
	      river : river
      }
    };
	prompt.message = 'Board';
	prompt.get(getObj,logIt);
	function logIt(err, result) {
	    console.log('Opponents Cards:      ' + game.playerTwosCards);
	    console.log('Board:                ' + game.board(2));
	    console.log('Your Cards:           ' + game.playerOnesCards);

    }

/**
 *
 *
 What was the most difficult part of this challenge?
	 Going back to javascript, after all this ruby, was a mind challenge. Also keeping a grip on everything
	 that is going on. Also, using lthe prompt module that i found on github was pretty frustrating. The prompt
	 didn't work the way I needed it to, I spent way to much time trying to get it to work.
 What did you learn about creating objects and functions that interact with one another?
	 I got a refreshment on how to do these things.
 Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	 I wrote my own game, and this is the bare nuts and bolts. There are too many things that need to be done still.
 How can you access and manipulate properties of objects?
	 I mainly used getter/setter functions in my constructors.
 *
 *
 *
 */






