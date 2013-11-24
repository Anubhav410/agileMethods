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
 		
		public function testMakeMove():void
		{
			var pl:Player = new Player();
			pl.start();
			var x:int;
			var y:int;
			x = 0 , y = 0;
			pl.makeMove(x, y);
			assertEquals(pl.board.cells[x * 3 + y].marker , "X");

			x = 1 , y = 0;
			pl.makeMove(x, y);
			assertEquals(pl.board.cells[x * 3 + y].marker , "O");
			
			x = 1 , y = 1;
			pl.makeMove(x, y);
			assertEquals(pl.board.cells[x * 3 + y].marker , "X");
			
			x = 2 , y = 2;
			pl.makeMove(x, y);
			assertEquals(pl.board.cells[x * 3 + y].marker , "O");
			
			pl.stop();
		}

		public function testGameWon():void 
		{
			var pl:Player = new Player();
			pl.start();
			
 			pl.makeMove(0, 0);
 			pl.makeMove(0, 1);		
 			pl.makeMove(1, 1);
 			pl.makeMove(1 ,0);
  			pl.makeMove(2 ,2);
 			
			assertTrue(pl.board.won());
 			
			pl.restart();
			
			pl.makeMove(0, 0);
 			pl.makeMove(0, 1);		
 			pl.makeMove(1, 1);
 			pl.makeMove(1 ,0);
  			pl.makeMove(2 ,1);
 			
			assertFalse(pl.board.won());
			
			
			
			pl.stop();
		}
		public function testGameStart():void
		{
			var pl:Player = new Player();
			assertTrue(pl.start());
			pl.stop();
		}
		
		public function testGameStop():void
		{
			var pl:Player = new Player();
			pl.start();
			assertTrue(pl.stop());
		}
	
		public function firstOne():void 
		{
 				assertEquals(2,2);
// 				assertEquals(2 == 2);
 		}
		
		
	}

}