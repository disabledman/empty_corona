
-----------------------------------------------------------------------------------------
--
-- mainmenu.lua
--
-----------------------------------------------------------------------------------------

local scene = g_Composer.newScene()
local UI = require("ui")

-- forward declarations and other locals
local playBtn

-----------------------------------------------------------------------------------------
-- 'onRelease' event listener for playBtn
--local onPlayBtnRelease = function(event)
local function onPlayBtnRelease(event)	
	if event.phase == "release" then
		--print ("playing....")
		--g_Composer.gotoScene("menu1")
	end
end

-----------------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
-- 
-- NOTE: Code outside of listener functions (below) will only be executed once,
--		 unless g_Composer.removeScene() is called.
-- 
-----------------------------------------------------------------------------------------

-- Called when the scene's view does not exist:
function scene:create( event )
	local group = self.view

	-- display a background image
	local background = display.newImageRect("assets/images/bg_01.jpg", 800,480)
	background.anchorX = 0
	background.anchorY = 0
	background.x = 0--display.contentCenterX
	background.y = display.contentCenterY
	
	-- 
	local playBtn = UI.newButton
	{
		id = "btn_1_1",
		defaultSrc = "assets/images/btn_01_01_1.jpg",
		defaultX = 372,
		defaultY = 69,
		overSrc = "assets/images/btn_01_01_2.jpg",
		overX = 372,
		overY = 69,
		onEvent = onPlayBtnRelease,
	}
	playBtn.x = display.contentWidth * 0.5
	playBtn.y = 330--display.contentHeight - 125
	
	-- all display objects must be inserted into group
	group:insert(background)
	group:insert(playBtn)
end

-- Called immediately after scene has moved onscreen:
function scene:show( event )
	local group = self.view	

	-- INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
end

-- Called when scene is about to move offscreen:
function scene:hide( event )
	local group = self.view
	
	-- INSERT code here (e.g. stop timers, remove listenets, unload sounds, etc.)
end

-- If scene's view is removed, scene:destroyScene() will be called just prior to:
function scene:destroy( event )
	local group = self.view

	group:removeSelf( )
	group = nil
end

-----------------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
-----------------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "create", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "show", scene )

-- "exitScene" event is dispatched whenever before next scene's transition begins
scene:addEventListener( "hide", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene