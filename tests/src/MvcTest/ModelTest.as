package MvcTest 
{
	import asunit.framework.TestCase;
	import Mvc.IModel;
	import Mvc.Model;
	
	/**
	 * @author Sergio
	 */
	public class ModelTest extends TestCase
	{
		protected var obj:IModel;
		
		public function ModelTest(testMethod:String) 
		{
			this.obj = new Model();
			super(testMethod);
		}
		
		/**
		 * @cover Mvc.Model.setKey()
		 * @cover Mvc.Model.getKey()
		 */
		public function TestSetGetKey() : void
		{
			this.obj.setKey(99);
			assertEquals(99, this.obj.getKey());
		}
	}
}