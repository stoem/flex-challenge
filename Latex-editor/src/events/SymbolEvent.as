package events
{
	import flash.events.Event;

	public class SymbolEvent extends Event
	{
		
		public static const SYMBOL_CLICKED:String = "symbol_clicked";
		
		private var _data:Object;
		
		public function SymbolEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false, data:Object=null)
		{
			super(type, bubbles, cancelable);
			_data = data;
		}
		
		override public function clone():Event
		{
			return new SymbolEvent(type, bubbles, cancelable, data);
		}
		
		public function get data():Object
		{
			return _data;
		}
	}
}