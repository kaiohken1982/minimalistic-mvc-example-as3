package Mvc 
{
	import flash.events.*;
	
	/**
	 * @author Sergio Rinaudo
	 */
	public class Model 
		extends EventDispatcher 
			implements IModel
	{
		private var lastKeyPressed:uint = 0;
		
		public function setKey(key:uint):void
		{
			this.lastKeyPressed = key;
			dispatchEvent(new Event(Event.CHANGE)); // dispatch event
		}
		
		public function getKey():uint
		{
			return lastKeyPressed;
		}
	}
}