package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import asunit.textui.TestRunner;
	import AllTests;
	
	/**
	 * @author Sergio Rinaudo
	 */
	public class Runner extends Sprite 
	{
		/**
		 * Main class constructor
		 */
		public function Runner():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		/**
		 * Point of entry for tests
		 * 
		 * @param Event e
		 * @return void
		 */
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var unittests:TestRunner = new TestRunner();
			addChild(unittests);
			unittests.start(AllTests, null, TestRunner.SHOW_TRACE);
		}
	}
}