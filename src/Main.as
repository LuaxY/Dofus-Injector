package
{
	import com.hurlant.util.der.ByteString;
	import flash.display.Sprite;
	import com.ankamagames.dofus.console.moduleLogger.Console;
	import com.ankamagames.jerakine.logger.ModuleLogger;
	import flash.utils.ByteArray;
	
	import ModuleHash;
	import Account;
	import LiveScript;

	public class Main extends Sprite
	{
		public function Main()
		{
			Console.getInstance().display();
			
			//var moduleHash:ModuleHash = new ModuleHash();
			//var account:Account = new Account();
			var livescript:LiveScript = new LiveScript();
		}
	}
}