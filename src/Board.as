package  
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Anubhav
	 */
	public class Board extends Sprite
	{
		public var player:Player;
		public var boardView:Sprite;// = new Sprite();

		[Embed(source = "../lib/board.png")]
		private var boardClass:Class;

		[Embed(source = "../lib/z.png")]
		private var ZClass:Class;

		[Embed(source="../lib/x.png")]
		private var XClass:Class;

		public var cells:Array;
		
		public function Board(pl:Player) 
		{
			player = pl;
			boardView = new Sprite();
			boardView.addChild(new boardClass());
		
			trace("initailizing board cells");
			cells = new Array();
			makeAllCellsZero();
			boardView.addEventListener(MouseEvent.CLICK, onclick);
			this.addChild(boardView);
		}
		
		public function makeAllCellsZero():void
		{
			trace("making cells equal to zero");
			for (var i:int = 0 ; i < 9 ; i++)
			{
 				cells[i] = new Cell();
			}
		}
		
		public function markCell(offset:int,marker:String):void 
		{
			cells[offset].mark(marker);
			var x:int = offset / 3;
			var y:int = offset % 3;
			
			var cellView:Sprite = new Sprite();
			if(marker == "X")
				cellView.addChild(new XClass());
			else
				cellView.addChild(new ZClass());	
				
			cellView.x = 100*x + 5;
			cellView.y = 100*y + 5;

			this.addChild(cellView);
		}

		
		
  	 	public function won():Boolean
 		{
			trace("in WON : marker" + cells[0].marker);
			if (cells[0].marker == cells[1].marker && cells[1].marker == cells[2].marker && cells[2].marker != "null")
			{
		//		trace("Awesome!!!!!");
				return true;
			}

			if (cells[3].marker == cells[4].marker && cells[4].marker == cells[5].marker && cells[5].marker != "null")
			{
		//		trace("Awesome!!!!!");
				return true;
			}
			if (cells[6].marker == cells[7].marker && cells[7].marker == cells[8].marker && cells[8].marker != "null")
			{
		//		trace("Awesome!!!!!");
				return true;
			}
			if (cells[0].marker == cells[4].marker && cells[4].marker == cells[8].marker && cells[8].marker != "null")
			{
		//		trace("Awesome!!!!!");
				return true;
			}
			if (cells[2].marker == cells[4].marker && cells[4].marker == cells[6].marker && cells[6].marker != "null")
			{
		//		trace("Awesome!!!!!");
				return true;
			}
	
			return false;
		}
		public function draw():Boolean
		{
			var res:Boolean = true;
			
  			for (var i:int = 0 ; i < 9 ; i++)
			{
				if (cells[i].marker == "null" )
				{
					res = false;
					break;
				}
			}
	    	return res;
		}
  		public function kill():void 
	 	{
			
		}
		
		private function onclick(e:MouseEvent):void 
		{
			var x:int = e.localX / 100;	
			var y:int = e.localY / 100;	
			trace(x + "," +y);
 			player.makeMove(x, y);
			
		}


	}

}