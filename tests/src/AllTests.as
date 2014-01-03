package
{
	import asunit.framework.TestSuite;
	import MvcTest.*;
	
	/**
	 * ...
	 * @author Sergio
	 */
	public class AllTests extends TestSuite
	{
		public function AllTests() 
		{
			super();
			addTest(new ModelTest("TestSetGetKey"));
		}
	}
}