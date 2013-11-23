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
<<<<<<< HEAD
		public function mark(marker:String):void
		{
			trace("marking cell with : " + marker);
=======
		public function mark(var marker:String):void
		{
>>>>>>> ee60398e0fcf760f87d767931d252033adb4eba3
			this.marker = marker;
		}
	}

}