package Mvc 
{
	import flash.events.*;
	import flash.display.*;

	/**
	 * @author Sergio Rinaudo
	 */
	public class View extends Sprite
	{
		private var model:IModel;
		private var controller:IController;
		
		public function View(model:IModel, controller:IController, target:Stage) 
		{
			this.model = model;
			this.controller = controller;
			
			// register to receive notifications from the model
			model.addEventListener(Event.CHANGE, this.update);
			
			// register to receive key press notifications from the stage
			target.addEventListener(KeyboardEvent.KEY_DOWN, this.onKeyPress);
		}
		
		private function update(event:Event):void
		{
			// get data from model and update view
			trace(model.getKey());
		}
		
		private function onKeyPress(event:KeyboardEvent):void
		{
			// delegate to the controller (strategy) to handle it
			controller.keyPressHandler(event);
		}	
	}
}