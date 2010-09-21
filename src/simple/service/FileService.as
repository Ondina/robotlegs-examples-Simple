package simple.service
{
	import flash.events.Event;
	import flash.filesystem.File;
	
	import org.robotlegs.mvcs.Actor;
	
	public class FileService extends Actor implements IFileService
	{
		private var _file:File;
		
		public function promptToChooseFile():void
		{
			_file = File.desktopDirectory;
			_file.addEventListener(Event.SELECT, onFileSelect);
			_file.browseForOpen("Choose text file");
		}
		
		
		private function onFileSelect(event:Event):void
		{
		}
	}
}