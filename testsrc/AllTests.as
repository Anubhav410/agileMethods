package 
{
	/**
	 * ...
	 * @author Anubhav
	 */
	import asunit.framework.TestSuite;
	public class AllTests extends TestSuite
	{
		public function AllTests() 
		{
 			super();
// 			addTest(new TestFirstTry("firstOne"));
 			addTest(new TestFirstTry("testGameStart"));
			addTest(new TestFirstTry("testGameStop"));
			addTest(new TestFirstTry("testMakeMove"));
			addTest(new TestFirstTry("testGameWon"));
				
		}
			
		
	}

}