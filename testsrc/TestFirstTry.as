package  
{
	/**
	 * ...
	 * @author Anubhav
	 */
	import asunit.framework.TestCase
	public class TestFirstTry extends TestCase 
	{
		
<<<<<<< HEAD
		public function TestFirstTry(testMethod:String) 
		{
			super(testMethod);
=======
		public function TestFirstTry() 
		{
			super();
			addTest(new TestFirstTry("firstOne"));
>>>>>>> c1cecfb95a9c77bf5b034e3b4a166ddb5869093d
		}
		
		public function firstOne():void 
		{
<<<<<<< HEAD
				assertEquals(2,2);
=======
				assertEquals(2 == 3);
>>>>>>> c1cecfb95a9c77bf5b034e3b4a166ddb5869093d
		}
		
	}

}