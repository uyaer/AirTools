package event
{
	import flash.events.EventDispatcher;

	public class EventManager
	{
		private var dispatch:EventDispatcher = new EventDispatcher();
		public function EventManager()
		{
		}
		
		private static var _instance:EventManager;
		
		public static function get instance():EventManager{
			return _instance||=new EventManager();
		}
		
		public function addEvent(type:String,callback:Function):void{
			dispatch.addEventListener(type,callback);
		}
		
		public function dispatchEventWithName(name:String,data:*):void{
			dispatch.dispatchEvent(new MyEvent(name,data));
		}
	}
}