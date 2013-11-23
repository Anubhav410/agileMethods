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
<<<<<<< HEAD
			if(board != null)
			{
				var offset:int = x * 3 + y ;	
				board.cells[offset].mark(marker[alternate]);
				if (board.won() == true)
				{
					trace("Player : " + alternate+1 + " won the game");
					this.stop();
				}
				
				if (board.draw() == true)
				{
					trace("The match is a draw");
					this.stop();

				}
				
				alternate = (alternate == 0?1:0);
				trace("alt : " + alternate);
			}		
=======
			var offset:int = x * 3 + y;
			board.cells[offset] = marker[alternate];
			alternate = (alternate == 0?1:0);
			trace("alt : " + alternate);
>>>>>>> ee60398e0fcf760f87d767931d252033adb4eba3
		}
		
		public function undo():void
		{
			
		}
<<<<<<< HEAD
		
=======

>>>>>>> ee60398e0fcf760f87d767931d252033adb4eba3
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
<<<<<<< HEAD
				trace("Ending game.");
				board.kill();	//the kill function should deallocate the cells and finalize the board and exit
			}
		//	board = null;
=======
				board.kill();	//the kill function should deallocate the cells and finalize the board and exit
			}
>>>>>>> ee60398e0fcf760f87d767931d252033adb4eba3
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