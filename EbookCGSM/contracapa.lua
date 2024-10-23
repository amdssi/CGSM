local composer = require( "composer" )
 
local scene = composer.newScene()
 
local MARGIN = 40
 
function scene:create( event )
    local sceneGroup = self.view

    local background = display.newImageRect(sceneGroup, "assets/contracapa/Contracapa.png", 768, 1024)

    background.x = display.contentCenterX
    background.y = display.contentCenterY

    local pa = display.newImage(sceneGroup, "/assets/botoes/pa.png")
    pa.x = display.contentWidth - pa.width/2 - MARGIN - 500
    pa.y = display.contentHeight - pa.height/2 - MARGIN

    pa:addEventListener("tap", function (event)
        composer.gotoScene("pagina6", {
            effect = "slideRight",
            time = 500
        });
        
    end)

    local vi = display.newImage(sceneGroup, "/assets/botoes/vi.png")
    vi.x = display.contentWidth - vi.width/2 - MARGIN
    vi.y = display.contentHeight - vi.height/2 - MARGIN

    vi:addEventListener("tap", function (event)
        composer.gotoScene("capa", {
            effect = "slideRight",
            time = 500
        });
        
    end)
    
end
 

function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end
 
 
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end
 
function scene:destroy( event )
 
    local sceneGroup = self.view

end
 
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
