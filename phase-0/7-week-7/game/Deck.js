

this.Deck = function(){
	var freshDeck = ['Ah','Kh','Qh','Jh','10h','9h','8h','7h','6h','5h','4h','3h','2h',
						  'Ad','Kd','Qd','Jd','10d','9d','8d','7d','6d','5d','4d','3d','2d',
						  'Ac','Kc','Qc','Jc','10c','9c','8c','7c','6c','5c','4c','3c','2c',
						  'As','Ks','Qs','Js','10s','9s','8s','7s','6s','5s','4s','3s','2s'];
	var cards = shuffle(freshDeck);
	var handOneCards = [cards[0],cards[1]];
	var handTwoCards = [cards[2],cards[3]];
	var flopCards  = [cards[4],cards[5],cards[6]];
	var turnCard  = cards[7];
	var riverCard = cards[8];
	var board = [cards[4],cards[5],cards[6],cards[7],cards[8]];
	this.getShuffledDeck = function(){
		return cards;
	}
	this.handOne = function(){
		return handOneCards;
	}
	this.handTwo = function(){
		return handTwoCards;
	}
	this.flop = function(){
		return flopCards;
	}
	this.turn = function(){
		return turnCard;
	}
	this.river = function(){
		return riverCard;
	}
	this.board = function(){
		return board;
	}
	function shuffle(array){
		//    -- I stole this shuffle method from some stackoverflow answer  ---
		var currentIndex = array.length, temporaryValue, randomIndex ;

		// While there remain elements to shuffle...
		while (0 !== currentIndex) {

		// Pick a remaining element...
		randomIndex = Math.floor(Math.random() * currentIndex);
		currentIndex -= 1;

		// And swap it with the current element.
		temporaryValue = array[currentIndex];
		array[currentIndex] = array[randomIndex];
		array[randomIndex] = temporaryValue;
		}

		return array;
	}

}