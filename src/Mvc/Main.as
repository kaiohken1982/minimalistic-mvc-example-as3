package Mvc
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * @author Sergio Rinaudo
	 */
	[Frame(factoryClass="Mvc.Preloader")]
	public class Main extends Sprite 
	{
		/**
		 * Main class constructor
		 */
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		/**
		 * Point of entry, 
		 * here we build the MVC triad
		 * 
		 * @param Event e
		 * @return void
		 */
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var model:IModel = new Model();
			var controller:IController = new Controller(model);
			var view:View = new View(model, controller, this.stage);
		}
	}
}