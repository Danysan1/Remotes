local kb = libs.keyboard;

--@help Launch XBMC application
actions.launch = function()
	if OS_WINDOWS then
		pcall(function ()
			os.start("%programfiles(x86)%\\Plex Home Theater\\Plex Home Theater.exe");
		end);
		pcall(function ()
			os.start("%programfiles(x86)%\\Plex\\Plex Media Center\\Plex.exe"); 
		end);
	elseif OS_OSX then
		os.script("tell application \"Plex Home Theater\" to activate");
		os.script("tell application \"Plex\" to activate");
	end
end

actions.left = function ()
	kb.press("left");
end

actions.down = function ()
	kb.press("down");
end

actions.right = function ()
	kb.press("right");
end

actions.up = function ()
	kb.press("up");
end

actions.select = function ()
	kb.press("return");
end

actions.back = function ()
	kb.press("escape");
end

actions.play_pause = function ()
	kb.press("space");
end

actions.forward = function ()
	kb.press("f");
end

actions.rewind = function ()
	kb.press("r");
end

actions.home = function ()
	kb.press("h");
end

actions.stop = function ()
	kb.press("x");
end

actions.menu = function ()
	kb.press("m");
end

actions.skip_next = function ()
	kb.press("right");
end

actions.skip_prev = function ()
	kb.press("left");
end

actions.play_current = function ()
	kb.press("p");
end