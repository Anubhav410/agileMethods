package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	import asunit.framework.TestCase
	public class TestFirstTry extends TestCase 
	{
		
		public function TestFirstTry() 
		{
			super();
			addTest(new TestFirstTry("firstOne"));
		}
		
		public function firstOne():void 
		{
				assertEquals(2 == 3);
		}
		
	}

}