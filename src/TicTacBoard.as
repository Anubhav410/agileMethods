package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	public class TicTacBoard 
	{
		
		public function TicTacBoard() 
		{
			trace("TicTacBoard Ctor");
 		}
		public function createCells():void
			{
				var cellArray:Array = new Array();;// [] = new TicTacCell[9];
				
				for (var i:int = 0 ; i < 9 ; i++)
				{
					cellArray[i] = new TicTacCell(i);
				}
			}

			public function isValidCell(cellNo:int):Boolean
			{
				var valid:Boolean = true;
				trace("checking of the move is a valid empty cell");
				
				
				return valid;
			}
			public function makeMove(cellNo:int , sign:String):void
			{
				//check if its a vlaid empty cell
				if (isValidCell(cellNo))
				{
					trace("Coloring the cell " + cellNo + "with the sign " + sign);
				}
				else
				{
					trace("bad move!!");
				}
				
			}

	}

}