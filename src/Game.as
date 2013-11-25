package  
{
	import flash.display.Sprite;
 	import starling.text.TextField;

	/**
	 * ...
	 * @author Anubhav
	 */
	public class Game extends Sprite 
	{
		
		public function Game() 
		{
			var textField:TextField = new TextField(400, 300, "Welcome to Starling!");
			addChild((flash.display.DisplayObject)(textField));	
		}
		
	}

}