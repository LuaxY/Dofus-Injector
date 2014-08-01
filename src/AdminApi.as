package  
{
	import com.ankamagames.dofus.scripts.ScriptEntity;
	import com.ankamagames.jerakine.lua.LuaPackage;
	
	import com.ankamagames.dofus.console.moduleLogger.Console;
	import com.ankamagames.jerakine.logger.ModuleLogger;
	
	import com.ankamagames.dofus.network.enums.BuildTypeEnum;
	import com.ankamagames.dofus.BuildInfos;

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
			var buildType:* = -1;
			
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
	}
}