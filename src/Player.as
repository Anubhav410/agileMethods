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
		
		public function makeMove(x:int,y:int):void
		{
			var offset:int = x * 3 + y;
			board.cells[offset] = marker[alternate];
			alternate = (alternate == 0?1:0);
			trace("alt : " + alternate);
		}
		
		public function undo():void
		{
			
		}

		public function start():void
		{
			//initialize a board with all cells empty
			if(board == null)
			{
				trace("Game Started");
				board = new Board();
			}
			else 
			{
				// a game is already running
				trace("Game already running");
			}
			
		}
		
		public function stop():void
		{
			if (board != null)
			{
				board.kill();	//the kill function should deallocate the cells and finalize the board and exit
			}
		}

/*		
		public function pause():void
		{
			if ( board != null)
			{
				//the game is supposed to be saved and you go to the main menu
				//this is supposed to be done by the game controller
 			}
		}
*/
/*		
		public function selectMarker():void
		{
			marker = "cross";
 		}
*/
	}

}