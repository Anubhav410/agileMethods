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
			trace("initailizing board cells");
			cells = new Array();
			makeAllCellsZero();
		}
		
		public function makeAllCellsZero():void
		{
			trace("making cells equal to zero");
			for (var i:int = 0 ; i < 9 ; i++)
			{
 				cells[i] = new Cell();
			}
		}
		
		public function freeze():void 
		{
			
		}

		
		
  	 	public function won():Boolean
 		{
			trace("in WON : marker" + cells[0].marker);
			if (cells[0].marker == cells[1].marker && cells[1].marker == cells[2].marker)
			{
		//		trace("Awesome!!!!!");
				return true;
			}

			if (cells[3].marker == cells[4].marker && cells[4].marker == cells[5].marker)
			{
		//		trace("Awesome!!!!!");
				return true;
			}
			if (cells[6].marker == cells[7].marker && cells[7].marker == cells[8].marker)
			{
		//		trace("Awesome!!!!!");
				return true;
			}
			if (cells[0].marker == cells[4].marker && cells[4].marker == cells[8].marker)
			{
		//		trace("Awesome!!!!!");
				return true;
			}
			if (cells[2].marker == cells[4].marker && cells[4].marker == cells[6].marker)
			{
		//		trace("Awesome!!!!!");
				return true;
			}
	
			return false;
		}
		public function draw():Boolean
		{
			return false;
		}
  		public function kill():void 
	 	{
			
		}

	}

}