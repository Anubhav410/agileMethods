package 
{
 	import flash.display.Sprite;
	import flash.events.Event;
	import asunit.textui.TestRunner;
	import flash.events.MouseEvent;
  	/**
 	 * ...
	 * @author Anubhav
	 */
 	public class Main extends Sprite 
	{
	
		private var player:Player;
 		public function Main():void 
		{
 			if (stage)
			{
 				player = new Player();
				player.start();
				stage.addChild(player.board);
				
//				boardView.addEventListener(MouseEvent.CLICK , onclick);
				
				
				
				
  		// 		var unittests:TestRunner = new TestRunner();
		//		stage.addChild(unittests);
		//		unittests.start(AllTests, null, TestRunner.SHOW_TRACE);
		 		init();
			}
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
		}
		
	}
	
}
 

/*
Will make a GameControllor class which will contain static methods that can be invoked without any object
*/
 