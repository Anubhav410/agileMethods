package  
{
	import flash.system.System;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author Anubhav
	 */
	public class Board extends Sprite
	{
		public var face1:Sprite;
		public var face2:Sprite;		
		public var score:Array
		public var allViewArray:Array;
		public var player:Player;
		public var boardView:Sprite;// = new Sprite();
		public var restartBtn:Sprite;
		public var exitBtn:Sprite;
		public var title:Sprite;
		public var cells:Array;
		public var textView:TextField;
		
		[Embed(source = "../lib/cool1.png")]
		private var Cool1Class:Class;

		[Embed(source = "../lib/cool2.png")]
		private var Cool2Class:Class;

		
		[Embed(source = "../lib/title.png")]
		private var TitleClass:Class;
		
		[Embed(source = "../lib/restart.png")]
		private var RestartClass:Class;
		
		[Embed(source = "../lib/EXIT.png")]
		private var ExitClass:Class;

		
		[Embed(source = "../lib/x_red.png")]
		private var XRedClass:Class;

		[Embed(source = "../lib/z_red.png")]
		private var ZRedClass:Class;
		

		[Embed(source = "../lib/board.png")]
		private var boardClass:Class;

		[Embed(source = "../lib/z.png")]
		private var ZClass:Class;

		[Embed(source="../lib/x.png")]
		private var XClass:Class;

		
		public function Board(pl:Player) 
		{
			score = new Array();
			score[0] = 0;
			score[1] = 0;
			
			
			face1 = new Sprite();
			face1.addChild(new Cool1Class());
			face1.y = 100;
			this.addChild(face1);
			
			face2 = new Sprite();
			face2.addChild(new Cool2Class());
			face2.y = 100;
			face2.x = 200;

			this.addChild(face2);
			
			
			textView = new TextField();
			textView.text = "1 : 0";
			textView.y = 130;
			textView.x = 130;
			var tf:TextFormat = new TextFormat();
			tf.size = 25;
			tf.color = 0xFF0000;
			textView.setTextFormat(tf);
 			
			this.addChild(textView);
			allViewArray = new Array();	//this is the array of all the sprite object that will be added on to the board
			player = pl;
			boardView = new Sprite();
			boardView.addChild(new boardClass());
		
			trace("initailizing board cells");
			cells = new Array();
			makeAllCellsZero();
			boardView.addEventListener(MouseEvent.CLICK, onclick);
			boardView.y = 200;
			this.addChild(boardView);
			
			restartBtn = new Sprite();
			restartBtn.addChild(new RestartClass());
			restartBtn.addEventListener(MouseEvent.CLICK, restartHandle);
			restartBtn.y = 500;
			this.addChild(restartBtn);
			
			exitBtn = new Sprite();
			exitBtn.addChild(new ExitClass());
//			exitBtn.addEventListener(MouseEvent.CLICK, player.restart);
			exitBtn.y = 550;
			this.addChild(exitBtn);

			title = new Sprite();
			title.addChild(new TitleClass());
			addChild(title);
		
			
		}
		
		public function makeAllCellsZero():void
		{
			trace("making cells equal to zero");
			for (var i:int = 0 ; i < 9 ; i++)
			{
 				cells[i] = new Cell();
			}
		}
		
		public function restartHandle(e:MouseEvent):void
		{
			makeAllCellsZero();
			var l:int = allViewArray.length;
			for ( var i:int = 0; i < l ; i++)
			{
	 			this.removeChild(allViewArray.pop());
			}
		}
		
		public function markCell(offset:int,marker:String):void 
		{
			cells[offset].mark(marker);
			var x:int = offset / 3;
			var y:int = offset % 3;
			
			paintCell(x,y,marker);
		}

		private function paintCell(x:int,y:int,marker:String):void
		{
			var cellView:Sprite = new Sprite();
			allViewArray = allViewArray.concat(cellView);
			//trace("length : " + allViewArray.length);
			if(marker == "X")
				cellView.addChild(new XClass());
			else if( marker == "O")
				cellView.addChild(new ZClass());	
			else if( marker == "redX")
				cellView.addChild(new XRedClass());	
			else if( marker == "redO")
				cellView.addChild(new ZRedClass());	
	
				
			cellView.x = 100*x + 5;
			cellView.y = 100*y + 5 + 200;

			this.addChild(cellView);
		}
		
  	 	public function won():Boolean
 		{
			var ret:Boolean = false;
//			trace("in WON : marker" + cells[0].marker);
			if (cells[0].marker == cells[1].marker && cells[1].marker == cells[2].marker && cells[2].marker != "null")
			{
				paintCell(0, 0, "red" + cells[0].marker);
				paintCell(0, 1, "red" + cells[0].marker);
				paintCell(0, 2, "red" + cells[0].marker);

				//		trace("Awesome!!!!!");
				ret = true;
			}

			if (cells[3].marker == cells[4].marker && cells[4].marker == cells[5].marker && cells[5].marker != "null")
			{
				paintCell(1, 0, "red" + cells[3].marker);
				paintCell(1, 1, "red" + cells[3].marker);
				paintCell(1, 2, "red" + cells[3].marker);
				
		//		trace("Awesome!!!!!");
				ret = true;
			}
			if (cells[6].marker == cells[7].marker && cells[7].marker == cells[8].marker && cells[8].marker != "null")
			{
				paintCell(2, 0, "red" + cells[6].marker);
				paintCell(2, 1, "red" + cells[6].marker);
				paintCell(2, 2, "red" + cells[6].marker);
		//		trace("Awesome!!!!!");
				ret = true;
			}
			if (cells[0].marker == cells[4].marker && cells[4].marker == cells[8].marker && cells[8].marker != "null")
			{
				paintCell(0, 0, "red" + cells[0].marker);
				paintCell(1, 1, "red" + cells[0].marker);
				paintCell(2, 2, "red" + cells[0].marker);
		//		trace("Awesome!!!!!");
				ret = true;
			}
			if (cells[2].marker == cells[4].marker && cells[4].marker == cells[6].marker && cells[6].marker != "null")
			{
				paintCell(0, 2, "red" + cells[2].marker);
				paintCell(1, 1, "red" + cells[2].marker);
				paintCell(2, 0, "red" + cells[2].marker);
		//		trace("Awesome!!!!!");
				ret = true;
			}
			
			if (cells[0].marker == cells[3].marker && cells[3].marker == cells[6].marker && cells[6].marker != "null")
			{
				paintCell(0, 0, "red" + cells[0].marker);
				paintCell(1, 0, "red" + cells[0].marker);
				paintCell(2, 0, "red" + cells[0].marker);

				//		trace("Awesome!!!!!");
				ret = true;
			}

			if (cells[1].marker == cells[4].marker && cells[4].marker == cells[7].marker && cells[7].marker != "null")
			{
				paintCell(0, 1, "red" + cells[1].marker);
				paintCell(1, 1, "red" + cells[1].marker);
				paintCell(2, 1, "red" + cells[1].marker);
				
		//		trace("Awesome!!!!!");
				ret = true;
			}
			if (cells[2].marker == cells[5].marker && cells[5].marker == cells[8].marker && cells[8].marker != "null")
			{
				paintCell(0, 2, "red" + cells[2].marker);
				paintCell(1, 2, "red" + cells[2].marker);
				paintCell(2, 2, "red" + cells[2].marker);
		//		trace("Awesome!!!!!");
				ret = true;
			}
			if (ret == true)
			{
				trace("dffdfdfd");
				boardView.removeEventListener(MouseEvent.CLICK, onclick);
			}
			
			return ret;
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
		
		public function updateScore():void
		{
			
		}
		
		public function onclick(e:MouseEvent):void 
		{
			var x:int = e.localX / 100;	
			var y:int = e.localY / 100;	
			trace(x + "," +y);
 			player.makeMove(x, y);
			
		}


	}

}