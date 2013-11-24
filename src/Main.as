package 
{
 	import flash.display.Sprite;
	import flash.events.Event;
	import asunit.textui.TestRunner;
	
	/**
=======
 	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import asunit.textui.TestRunner;
	

 	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	
 	/**
 	 * ...
	 * @author Anubhav
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
 			if (stage)
			{
				trace("jnhbjh");
				var unittests:TestRunner = new TestRunner();
				stage.addChild(unittests);
				unittests.start(AllTests, null, TestRunner.SHOW_TRACE);

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
 