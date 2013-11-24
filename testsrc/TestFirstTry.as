package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	import asunit.framework.TestCase
	public class TestFirstTry extends TestCase 
	{
		
 		public function TestFirstTry(testMethod:String) 
		{
			super(testMethod);

		}
 		
		public function firstOne():void 
		{
 				assertEquals(2,2);
// 				assertEquals(2 == 2);
 		}
		
	}

}