package  
{
	import com.ankamagames.dofus.console.moduleLogger.Console;
	import com.ankamagames.jerakine.logger.ModuleLogger;
	
	import com.ankamagames.jerakine.lua.LuaPlayer;
	import com.ankamagames.jerakine.script.ScriptsManager;
	
	import com.ankamagames.dofus.scripts.api.EntityApi;
	import com.ankamagames.dofus.scripts.api.ScriptSequenceApi;
	import com.ankamagames.dofus.scripts.api.CameraApi;
	
	import AdminApi;
	
	public class LiveScript 
	{
		public function LiveScript() 
		{
			ModuleLogger.log("Start lua AdminApi<br/>");

			var luaPlayer:LuaPlayer = ScriptsManager.getInstance().getPlayer(ScriptsManager.LUA_PLAYER) as LuaPlayer;
			if(!luaPlayer)
            {
				luaPlayer = new LuaPlayer();
				ScriptsManager.getInstance().addPlayer(ScriptsManager.LUA_PLAYER, luaPlayer);
				ScriptsManager.getInstance().addPlayerApi(luaPlayer, "EntityApi", new EntityApi());
				ScriptsManager.getInstance().addPlayerApi(luaPlayer, "SeqApi", new ScriptSequenceApi());
				ScriptsManager.getInstance().addPlayerApi(luaPlayer, "CameraApi", new CameraApi());
				ScriptsManager.getInstance().addPlayerApi(luaPlayer, "AdminApi", new AdminApi());
			}
		}
	}
}