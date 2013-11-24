package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	public class Cell 
	{
		public var marker:String;
	 	public function Cell() 
		{
			this.marker = "null";
		}
  		public function mark(marker:String):void
		{
			trace("marking cell with : " + marker);
	 		this.marker = marker;
		}
	}

}