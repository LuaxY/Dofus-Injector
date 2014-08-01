package  
{
	import com.ankamagames.dofus.scripts.ScriptEntity;
	import com.ankamagames.jerakine.lua.LuaPackage;
	
	import com.ankamagames.dofus.console.moduleLogger.Console;
	import com.ankamagames.jerakine.logger.ModuleLogger;
	
	import com.ankamagames.dofus.network.enums.BuildTypeEnum;
	import com.ankamagames.dofus.BuildInfos;
	
	import com.ankamagames.berilia.managers.UiModuleManager;

	public class AdminApi extends Object implements LuaPackage
	{
		public function AdminApi() 
		{
			super();
		}
		
		public function init() : void
		{
			
		}
		
		public function reset() : void
		{
			
		}
		
		public function buildType(configVersion:String) : void
		{
			var buildType:* = BuildInfos.BUILD_TYPE;

			switch(configVersion.toLowerCase())
			{
				case "debug":
					buildType = BuildTypeEnum.DEBUG;
					break;
				case "internal":
					buildType = BuildTypeEnum.INTERNAL;
					break;
				case "testing":
					buildType = BuildTypeEnum.TESTING;
					break;
				case "alpha":
					buildType = BuildTypeEnum.ALPHA;
					break;
				case "beta":
					buildType = BuildTypeEnum.BETA;
					break;
				case "release":
					buildType = BuildTypeEnum.RELEASE;
					break;
			}

			BuildInfos.BUILD_TYPE = buildType;
		}
		
		public function addModule(id:String, hash:String) : void
		{
			UiModuleManager.getInstance().modulesHashs[id] = hash;
		}
		
		public function loadModule(id:String) : void
		{
			UiModuleManager.getInstance().loadModule(id);
		}
		
		public function unloadModule(id:String) : void
		{
			UiModuleManager.getInstance().unloadModule(id);
		}
	}
}