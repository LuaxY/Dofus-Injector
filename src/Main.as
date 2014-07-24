package
{
	import com.hurlant.util.der.ByteString;
	import flash.display.Sprite;
	import com.ankamagames.dofus.console.moduleLogger.Console;
	import com.ankamagames.jerakine.logger.ModuleLogger;
	import flash.utils.ByteArray;
	
	import ModuleHash;
	import Account;

	public class Main extends Sprite
	{
		public function Main()
		{
			Console.getInstance().display();
			
			var moduleHash:ModuleHash = new ModuleHash();
			var account:Account = new Account();
		}
	}
}