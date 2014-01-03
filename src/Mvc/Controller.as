package Mvc 
{
	import flash.events.*;
	
	/**
	 * @author Sergio Rinaudo
	 */
	public class Controller 
		implements IController 
	{
		private var model:IModel;
		
		public function Controller(model:IModel)
		{
			this.model = model;
		}
		
		public function keyPressHandler(event:KeyboardEvent):void
		{
			model.setKey(event.charCode); // change model
		}
	}
}