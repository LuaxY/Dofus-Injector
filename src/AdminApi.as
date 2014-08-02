package  
{
	import com.ankamagames.dofus.scripts.ScriptEntity;
	import com.ankamagames.jerakine.lua.LuaPackage;
	
	import com.ankamagames.dofus.console.moduleLogger.Console;
	import com.ankamagames.jerakine.logger.ModuleLogger;
	
	import com.ankamagames.dofus.network.enums.BuildTypeEnum;
	import com.ankamagames.dofus.BuildInfos;
	
	import com.ankamagames.berilia.managers.UiModuleManager;
	
	import flash.text.TextField;
	import flash.text.TextFormat;
	import Dofus;
	import com.ankamagames.jerakine.managers.FontManager;

	public class AdminApi extends Object implements LuaPackage
	{
		private var textFormat:TextFormat = null;
		private var font:String = null;
		
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
		
		public function setTextFormat(fontName:String, size:uint, color:int, bold:Boolean = false) : void 
		{
			font = FontManager.initialized?FontManager.getInstance().getFontClassName(fontName):fontName;
			textFormat = new TextFormat(font, size, color, bold);
		}
		
		public function displayText(text:String, x:int = 0, y:int = 0, width:int = 500, selectable:Boolean = false, opacity:Number = 1) : void 
		{
			var buildsInfoBig:TextField = new TextField();
			buildsInfoBig.appendText(text);
			buildsInfoBig.x = x;
			buildsInfoBig.y = y;
			buildsInfoBig.width = width;
			buildsInfoBig.selectable = selectable;
			buildsInfoBig.setTextFormat(textFormat);
			buildsInfoBig.alpha = opacity;
			
            Dofus.getInstance().addChild(buildsInfoBig);
		}
		
		public function watermark(text:String) : void
		{
			setTextFormat("Tahoma", 72, 0x000000, true);
			
			for (var y:int = 0; y <= 10000; y += 90)
			{
				for (var x:int = 0; x <= 10000; x += 550)
				{
					displayText(text, x, y, 600, false, .1);
				}
			}
		}
		
		public function serverName(text:String) : void
		{
			setTextFormat("Tahoma", 72, 0x000000, true);
			displayText(text, 400, 350, 600, false, .2);
		}
	}
}