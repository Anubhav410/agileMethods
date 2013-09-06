package  
{
	import adobe.utils.CustomActions;
	/**
	 * ...
	 * @author Anubhav
	 */
	public class TicTacGame 
	{
		public var player1:Player;
		public var player2:Player;
		public var board:TicTacBoard;

	 	public function TicTacGame()
			{
				trace("TicTacGame ctor");
				player1 = new Player(1);
				player2 = new Player(2);
				board = new TicTacBoard();
				board.createCells();
				startGame();	
 			}
			
			public function startGame():void
			{
				trace("starting the game");
				var turn:int = 0;
				var moveNum:int = 0
				while (moveNum <9 && !hasWon() && (!isDraw()||1))		//if we do a || then isDraw is never checked
				{
					if (turn == 0)	//player 1
					{
							player1.play();
							turn++;
					}
					else 			//player 2
					{
						turn--;
						player2.play();						
					
					}
					moveNum++;

				}
			}
			public function hasWon():Boolean
			{
				trace("checking if someone has won the match");
				return false;
			}
			public function isDraw():Boolean
			{
				trace("checking if there is a draw");
				
				return false;
			}
 	}

}