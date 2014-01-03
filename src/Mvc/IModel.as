package Mvc 
{
	import flash.events.*;
	
	/**
	 * @author Sergio Rinaudo
	 */
	public interface IModel
		extends IEventDispatcher
	{
		function setKey(key:uint):void 
		function getKey():uint;
	}
}