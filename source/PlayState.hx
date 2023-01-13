    #if (LUA_ALLOWED)
		var doPush:Bool = false;
		var luaFile:String = 'data/' + Paths.formatToSongPath(SONG.song) + '/script.lua';
			luaFile = Paths.getPreloadPath(luaFile);
			if(OpenFlAssets.exists(luaFile)) {
				doPush = true;
			}
		
		if(doPush) 
			luaArray.push(new FunkinLua(Asset2File.getPath(luaFile)));
		#end
