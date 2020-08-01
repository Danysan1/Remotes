local kb = libs.keyboard;
local tmr = require("timer");

-- https://www.unifiedremote.com/tutorials/how-to-create-a-custom-keyboard-shortcuts-remote
-- https://github.com/unifiedremote/Docs/blob/master/res/keys.md

-- Documentation
-- http://www.unifiedremote.com/api

-- Keyboard Library
-- http://www.unifiedremote.com/api/libs/keyboard



actions.winPrint = function ()
	kb.stroke("print", "win");
end

actions.winCtrlPrint = function ()
	kb.stroke("ctrl", "print", "win");
end

actions.winFnPrint = function ()
	kb.stroke("fn", "print", "win");
end

actions.winShiftS = function ()
	kb.stroke("shift", "s", "win");
	tmr.timeout(function ()
		kb.stroke("tab");
		kb.stroke("tab");
		kb.stroke("tab");
		kb.stroke("enter");
	end, 1000);
end

actions.print = function ()
	kb.stroke("print");
end

actions.snapshot = function ()
	kb.stroke("snapshot");
end

actions.sniptool = function ()
	script.default("C:\\Windows\\System32\\SnippingTool.exe /clip");
end