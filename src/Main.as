package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import asunit.textui.TestRunner;
	
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