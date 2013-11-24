package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	public class Player 
	{
		public var marker:Array;
		public var board:Board;
		public var alternate:int;
		
		public function Player() 
		{
				board = null;
				marker = ["X","O"];
				alternate = 0;
		}
		
		public function makeMove(x:int,y:int):Boolean
		{
			var res:Boolean = true;
   			if(board != null)
 			{
				var offset:int = x * 3 + y ;	
				board.cells[offset].mark(marker[alternate]);
				if (board.won() == true)
				{
					trace("Player : " + alternate+1 + " won the game");
			//		this.stop();
					res = false;

				}
				
				if (board.draw() == true)
				{
					trace("The match is a draw");
				//	this.stop();
				}
				
				alternate = (alternate == 0?1:0);
				trace("alt : " + alternate);
			}		
			else
			{
				res =  false;
			}
			return res;
  		}
  		
		public function undo():void
		{
			
		}
  		public function start():Boolean
 		{
			//initialize a board with all cells empty
			var ret:Boolean = true;
			if(board == null)
			{
				trace("Game Started");
				board = new Board();
				ret = true;
			}
			else 
			{
				// a game is already running
				trace("Game already running");
				ret =  false;
			}
			
			return ret;
		}
		
		public function restart():Boolean 
		{
				board.makeAllCellsZero();
				return true;
		}
		
		public function stop():Boolean
		{
			if (board ==  null)
			{
				trace("Nothing to end");
				return false;
			}
			else (board != null)
			{
  				trace("Ending game.");
				board.kill();	//the kill function should deallocate the cells and finalize the board and exit
			}
			board = null;
			return true;
		}
  
}
}