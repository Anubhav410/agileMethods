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
			
<<<<<<< HEAD
		public function won():Boolean
		{
			trace("in WON : marker" + cells[0].marker);
			if (cells[0].marker == cells[1].marker && cells[1].marker == cells[2].marker)
			{
				trace("Awesome!!!!!");
				return true;
			}
			return false;
		}
		public function draw():Boolean
		{
			return false;
		}
=======
>>>>>>> ee60398e0fcf760f87d767931d252033adb4eba3
		public function kill():void 
		{
			
		}

	}

}