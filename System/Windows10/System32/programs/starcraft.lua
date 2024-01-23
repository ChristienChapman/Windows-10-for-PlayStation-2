-- All glory to God, Jesus Christ, and the Holy Spirit.


starcraft = false
starcraft_map = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
starcraft_fog_of_war = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
starcraft_ui = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")


local camera_pos_x = 0
local camera_pos_y = 0

function starcraft_init()
windows_full_screen = true

if windows_button(100, 100, 60, 35, "box", red, green, "", true, 3742) then
desktop = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
starcraft_map = Graphics.loadImage("System/Windows10/ProgramData/starcraft/maps/Baby Steps.jpg")
starcraft_fog_of_war = Graphics.loadImage("System/Windows10/ProgramData/starcraft/data/fog_of_war.png")
starcraft_ui = Graphics.loadImage("System/Windows10/ProgramData/starcraft/data/terran_ui.png")
Screen.clear()
end

if camera_pos_x >= 1000-4 then
camera_pos_x = 999-4
end

if camera_pos_x >= 1580-4 then
camera_pos_x = 1579-4
end


if camera_pos_y >= 1008-4 then
camera_pos_y = 1007-4
end

if camera_pos_y <= -1244-4 then
camera_pos_y = -1243-4
end

if windows_key_pressed() == "WINDOWS_VK_UP" then
camera_pos_y = camera_pos_y + 4
end

if windows_key_pressed() == "WINDOWS_VK_DOWN" then
camera_pos_y = camera_pos_y - 4

end

if windows_key_pressed() == "WINDOWS_VK_LEFT" then
camera_pos_x = camera_pos_x + 4

end

if windows_key_pressed() == "WINDOWS_VK_RIGHT" then

camera_pos_x = camera_pos_x - 4

end
Graphics.setImageFilters(starcraft_map, LINEAR)
Graphics.drawScaleImage(starcraft_map, camera_pos_x-1000, camera_pos_y-1000, 60000, 60000)
Graphics.drawScaleImage(starcraft_fog_of_war, 0, 0, 640,448)
Graphics.drawScaleImage(starcraft_ui, 0, 265, 640,186)
print(200,200,0.7,"x: " .. camera_pos_x .. " y:" .. camera_pos_y,grey)








end
