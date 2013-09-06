package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	public class Player 
	{
		public var sign:String; //can be a cross or a circle
		public var id:int;
		public function Player(id:int) 
		{
			this.id = id;
			trace("Player No : " + id + " created");
		}
		public function play():int		//it willl returnn the block number which the player wishes to mark on
		{
			var blockNum:int = 0;
			trace("Player" + id +" turn");
			trace("Enter a move");
			return blockNum;
		}
	}

}