package 
{
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
			
			
		 	if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			var tic:TicTacGame = new TicTacGame();
 			
 		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
		}
		
	}
	
}