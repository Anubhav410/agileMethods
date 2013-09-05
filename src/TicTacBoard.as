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
				var cellArray:TicTacCell;// [] = new TicTacCell[9];
				for (var i:int = 0 ; i < 9 ; i++)
				{
					cellArray = new TicTacCell(i);
				}
			}

			public function makeMove(cellNo:int , sign:String):void
			{
				trace("Coloring the cell " + cellNo + "with the sign " + sign);
			}

	}

}