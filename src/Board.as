package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	public class Board 
	{
		public var cells:Array;
		
		public function Board() 
		{
			cells = new Array();
			trace("initailizing board cells");
			for (var i:int = 0 ; i < 9 ; i++)
			{
 				cells[i] = new Cell();
			}
		}
		public function freeze():void 
		{
			
		}
			
		public function kill():void 
		{
			
		}

	}

}