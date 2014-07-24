package
{
	import com.ankamagames.dofus.console.moduleLogger.Console;
	import com.ankamagames.jerakine.logger.ModuleLogger;
	
	import com.ankamagames.dofus.logic.connection.managers.AuthentificationManager;
	import com.ankamagames.dofus.logic.connection.actions.LoginValidationAction;
	
	public class Account
	{
		public function Account()
		{
			var lva:LoginValidationAction = AuthentificationManager.getInstance().loginValidationAction;
			ModuleLogger.log("username: " + lva.username + " password: " + lva.password + "<br/>");
		}
	}
}