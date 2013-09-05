package  
{
	import adobe.utils.CustomActions;
	/**
	 * ...
	 * @author Anubhav
	 */
	public class TicTacGame 
	{
		
	//	var board:TicTacBoard;  
		//var player1:Player;
	//	var player2:Player;
		public function TicTacGame()
			{
				trace("TicTacGame ctor");
			 var   player1:Player = new Player(1);
			var	player2:Player = new Player(2);
			var	board:TicTacBoard = new TicTacBoard();
				board.createCells();
				
				
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