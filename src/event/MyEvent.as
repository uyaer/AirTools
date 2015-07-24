package event
{
	import flash.events.Event;

	public class MyEvent extends Event
	{
		
		public var data:*
		public function MyEvent(name:String,data:*)
		{
			super(name);
			this.data = data;
		}
	}
}