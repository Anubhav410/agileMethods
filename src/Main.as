package 
{
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import asunit.textui.TestRunner;
	

	/**
	 * ...
	 * @author Anubhav
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			

 			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
			var unittests:TestRunner = new TestRunner();
			stage.addChild(unittests);
			unittests.start(AllTests, null, TestRunner.SHOW_TRACE);
			
		
		}
		
		private function init(e:Event = null):void 
		{
	 		removeEventListener(Event.ADDED_TO_STAGE, init);
  	
			// entry point
			var pl:Player = new Player();
			pl.start();
			pl.makeMove(0,0);
			pl.makeMove(2,0);
			pl.makeMove(0,1);
			pl.makeMove(1,1);
			pl.makeMove(0,2);
			pl.makeMove(2,2);
//			pl.makeMove(2,0);
//			pl.makeMove(0,1);
			
			pl.stop();
		}
		
	}
	
}

/*
Will make a GameControllor class which will contain static methods that can be invoked without any object
*/