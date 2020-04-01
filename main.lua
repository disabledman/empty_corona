-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- hide the status bar
--display.setStatusBar( display.HiddenStatusBar )
display.setStatusBar(display.DefaultStatusBar)

--
g_Composer = require "composer"

-- load menu screen
g_Composer.gotoScene("mainmenu")