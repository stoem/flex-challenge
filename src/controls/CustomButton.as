package controls
{
	import spark.components.Button;

	public class CustomButton extends Button
	{
		public var value: String = "";
		public var focusPosition: int = 0;

		public function CustomButton()
		{
			super();
		}
	}
}