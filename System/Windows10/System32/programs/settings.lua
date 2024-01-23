-- All glory to God, Jesus Christ, and the Holy Spirit.

settings = false
settings_entry = 0
settings_exit = 0
local settings_loaded = false
settings_menu = ""
local color_to_change = ""
local r = 0
local g = 0
local b = 0
local option = 1
local speed = 1
local numberOfOptions = 0
local suboption = 1
local numberOfSubOptions = 7
local listdir = System.listDirectory(System.currentDirectory())
local settings_directory = System.currentDirectory()
local input = ""
local numberOfDirectories = 0
local isDirInit = 1
local dir1 = nil
local dir2 = nil
local dir3 = nil
local dir4 = nil
local dir5 = nil
local dir6 = nil
local dir7 = nil
local dir8 = nil
local dir9 = nil
local dir10 = nil
local dir11 = nil
local dir12 = nil
local dir13 = nil
local dir14 = nil
local dir15 = nil
local dir16 = nil
local load_image_1 = Graphics.loadImage("System/buffer.png")
local load_image_2 = Graphics.loadImage("System/buffer.png")
local load_image_3 = Graphics.loadImage("System/buffer.png")
local load_image_4 = Graphics.loadImage("System/buffer.png")
local load_image_5 = Graphics.loadImage("System/buffer.png")
local load_image_6 = Graphics.loadImage("System/buffer.png")
local load_image_7 = Graphics.loadImage("System/buffer.png")
local load_image_8 = Graphics.loadImage("System/buffer.png")
local load_image_cycle = 0
local settings_directories_enumerated = false
local settings_graphical_memory_logic = 0



windows_application_position_y[1] = windows_application_position_y[1] - 70


settings_system = Graphics.loadImage("System/Windows10/System32/graphics/settings_system_icon.png")
settings_personalization = Graphics.loadImage("System/Windows10/System32/graphics/settings_personalization_icon.png")

if settings_directory == "mass:" then
settings_directory = "mass:\\"
end


local function closeWritePermissions()

windows_close_write_permissions()

end










local function settings_GraphicalMemoryHandlingLogic(check)

if check == false then

if settings_graphical_memory_logic == 0 then
settings_system = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
settings_personalization = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_1 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_2 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_3 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_4 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_5 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_6 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_7 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
load_image_8 = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
settings_graphical_memory_logic = 1
end







end



if check == true then



if settings_graphical_memory_logic == 1 then
settings_system = Graphics.loadImage("System/Windows10/System32/graphics/settings_system_icon.png")
settings_personalization = Graphics.loadImage("System/Windows10/System32/graphics/settings_personalization_icon.png")


settings_graphical_memory_logic = 0
end

end




end





register_desktop_icon("Settings", settings_icon, "settings")


local function settings_getDir(dir)

option = 1
System.clearNumberOfDirectories()
settings_directory = settings_directory .. dir 
listdir = System.listDirectory(settings_directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
 
  
  
  --System.currentDirectory()
  
  end
  
  settings_getDir("System/Windows10/UserData/Pictures")

  
  
 
  
  
  local function settings_update_input(update_input)


if isDirInit == 0 then
input = update_input
else
input = "\\" .. update_input
end



end
  



local function back(menu)


if windows_key_pressed() == "WINDOWS_VK_CIRCLE" then

if menu == "exit" then
closeWritePermissions()
settings_entry = 0
settings_exit = 1
if settings_exit == 1 then
settings = false
end
else
settings_menu = menu
end

end

end




local function systemSidebar()



Graphics.drawRect(windows_application_position_x[1]-100, windows_application_position_y[1]-1, 160, 448, dark_grey)


if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "system_about"
end



if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "system_audio"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "system_cursor"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26+26+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "system_notifications"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26+26+26+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "system_power"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26+26+26+26+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "system_screensaver"
end








print(windows_application_position_x[1]-73, windows_application_position_y[1]+60,0.5, "About", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26,0.5, "Audio", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26,0.5, "Cursor", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26+26,0.5, "Notifications", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26+26+26,0.5, "Power", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26+26+26+26,0.5, "Screensaver", white)

end



local function customizeSidebar()



Graphics.drawRect(windows_application_position_x[1]-100, windows_application_position_y[1]-1, 160, 448, dark_grey)


if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "customize_background"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "customize_colors"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "customize_cursor"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26+26+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "customize_taskbar"
end

if windows_button(windows_application_position_x[1]-100, windows_application_position_y[1]+55+26+26+26+26, 160, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "customize_screensaver"
end



print(windows_application_position_x[1]-73, windows_application_position_y[1]+60,0.5, "Background", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26,0.5, "Colors", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26,0.5, "Cursor", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26+26,0.5, "Taskbar", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26+26+26,0.5, "Screensaver", white)


end





local function profileSidebar()



Graphics.drawRect(windows_application_position_x[1]-100, windows_application_position_y[1]-1, 160, 448, dark_grey)



if windows_button(windows_application_position_x[1]-140, windows_application_position_y[1]+55+26+26, 200, 26, "box", transparent, transparent_grey, "", false, 1) == true then

settings_menu = "profile_picture"
end



print(windows_application_position_x[1]-73, windows_application_position_y[1]+60,0.5, "Password", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26,0.5, "Username", white)
print(windows_application_position_x[1]-73, windows_application_position_y[1]+60+26+26,0.5, "Picture", white)




end





local function requestWritePermissions()

windows_request_write_permissions("settings232493424575321291243")

end

-- crashes app



function settings_init()


if settings == true then

if settings_directories_enumerated == false then

System.clearNumberOfDirectories()
settings_getDir("")
settings_directories_enumerated = true

end

end

local application_name = "Settings"
local application_color_1 = black
local application_color_2 = windows_highlight_color

--make a toggle to swap access before and then after write





application_focus_bar(windows_application_position_x[1]-20, windows_application_position_y[1]-20, 640, 17,application_name, 1)


if application_focus_button(windows_application_position_x[1]+510, windows_application_position_y[1]-20, 30, 17, "exit", 1) == true then

settings = false
settings_menu = ""
windows_application_position_x[1] = 100
windows_application_position_y[1] = 100 - 70
settings_directories_enumerated = false

end

if application_focus_button(windows_application_position_x[1]+480, windows_application_position_y[1]-20, 30, 17, "maximize", 1) == true then

windows_application_position_x[1] = 100
windows_application_position_y[1] = 100 - 70

end

if application_focus_button(windows_application_position_x[1]+460, windows_application_position_y[1]-20, 20, 17, "minimize", 1) == true then

windows_application_position_x[1] = 1000

end


windows_background(windows_application_position_x[1]-100, windows_application_position_y[1]-1, 640, 448, "box", black, application_name, 1)

if settings_menu == "" then


if windows_active_highlight == "settings_system_button" then

Graphics.drawRect(windows_application_position_x[1]-90+15+160,windows_application_position_y[1]+15+10,60, 60,windows_highlight_color)

end

if windows_active_highlight == "settings_personalization_button" then

Graphics.drawRect(windows_application_position_x[1]-90+15+150+160, windows_application_position_y[1]+15+10, 60, 60, windows_highlight_color)

end


if windows_button(windows_application_position_x[1]-90+15+160, windows_application_position_y[1]+15+10, 60, 60, "image", settings_system, transparent, "settings_system_button", false, 1) then
settings_menu = "system_about"
end

print(windows_application_position_x[1]-90+160, windows_application_position_y[1]+80+10,0.4, "Details, sound, \nnotifications, \nand power", grey)
print(windows_application_position_x[1]-90+73+160, windows_application_position_y[1]+55+10,0.45, "System", white)




if windows_button(windows_application_position_x[1]-90+15+150+160, windows_application_position_y[1]+15+10, 60, 60, "image", settings_personalization, transparent, "settings_personalization_button", false, 1) then
settings_menu = "customize_background"
end

print(windows_application_position_x[1]-90+150+160, windows_application_position_y[1]+80+10,0.4, "Background, lock \nscreen, \namd colors", grey)
print(windows_application_position_x[1]-90+73+150+160, windows_application_position_y[1]+55+10,0.45, "Customize", white)



--if windows_button(windows_application_position_x[1]-90+15+300, windows_application_position_y[1]+15, 60, 60, "image", settings_apps, application_color_2, "", false, 1) then
--closeWritePermissions()
--settings = false
--end

--print(windows_application_position_x[1]-90+300, windows_application_position_y[1]+80,0.4, "Uninstall, defaults, \noptional features", grey)
--print(windows_application_position_x[1]-90+73+300, windows_application_position_y[1]+55,0.45, "Apps", white)



--if windows_button(windows_application_position_x[1]-90+15+450, windows_application_position_y[1]+15, 60, 60, "image", settings_profile, application_color_2, "", false, 1) then
--closeWritePermissions()
--settings_menu = "profile_password"
--end

--print(windows_application_position_x[1]-90+450, windows_application_position_y[1]+80,0.4, "Your profile, details, \nproductivity", grey)
--print(windows_application_position_x[1]-90+73+450, windows_application_position_y[1]+55,0.45, "Profile", white)


end



if settings_menu == "customize_background" then

back("")

  

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Background", white)
customizeSidebar()


local application_x_pos = -80
local application_y_pos = 50



if windows_button(windows_application_position_x[1]-application_x_pos, windows_application_position_y[1]+application_y_pos+20, 180, 20, "box", application_color_1, application_color_2, "", false, 1) then


load_image_cycle = 0

 option = option -speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end





if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
  
  

end






Font.fmPrint(windows_application_position_x[1]-application_x_pos, windows_application_position_y[1]+application_y_pos+20, 0.45, "         /\\", white)








if windows_button(windows_application_position_x[1]-application_x_pos+200, windows_application_position_y[1]+application_y_pos+20, 180, 20, "box", application_color_1, application_color_2, "", false, 1) then


load_image_cycle = 0

 option = option +speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end





if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
  
  

end






Font.fmPrint(windows_application_position_x[1]-application_x_pos+200, windows_application_position_y[1]+application_y_pos+20, 0.45, "         \\/", white)



dir1 = listdir[option].name



if windows_active_highlight == "settings_id_0" then
settings_update_input(settings_directory .. "\\" .. dir1)


end

if GetFileExtension(dir1) == ".png" or GetFileExtension(dir1) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_1, application_color_2, "settings_id_0", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir1)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir1)
windows_registry_write("windows", "win_desktop", dir1)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir1, white)


if option+1 < numberOfOptions then


dir2 = listdir[option+1].name


if windows_active_highlight == "settings_id_1" then
settings_update_input(settings_directory .. "\\" .. dir2)



end

if GetFileExtension(dir2) == ".png" or GetFileExtension(dir2) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_2, application_color_2, "settings_id_1", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir2)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir2)
windows_registry_write("windows", "win_desktop", dir2)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir2, white)




end




if option+2 < numberOfOptions then


dir3 = listdir[option+2].name


if windows_active_highlight == "settings_id_2" then
settings_update_input(settings_directory .. "\\" .. dir3)


end

if GetFileExtension(dir3) == ".png" or GetFileExtension(dir3) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_3, application_color_2, "settings_id_2", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir3)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir3)
windows_registry_write("windows", "win_desktop", dir3)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir3, white)




end




if option+3 < numberOfOptions then


dir4 = listdir[option+3].name


if windows_active_highlight == "settings_id_3" then
settings_update_input(settings_directory .. "\\" .. dir4)


end

if GetFileExtension(dir4) == ".png" or GetFileExtension(dir4) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_4, application_color_2, "settings_id_3", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir4)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir4)
windows_registry_write("windows", "win_desktop", dir4)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir4, white)




end






if option+4 < numberOfOptions then


dir5 = listdir[option+4].name


if windows_active_highlight == "settings_id_4" then
settings_update_input(settings_directory .. "\\" .. dir5)



end

if GetFileExtension(dir5) == ".png" or GetFileExtension(dir5) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_5, application_color_2, "settings_id_4", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir5)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir5)
windows_registry_write("windows", "win_desktop", dir5)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir5, white)




end





if option+5 < numberOfOptions then


dir6 = listdir[option+5].name



if GetFileExtension(dir6) == ".png" or GetFileExtension(dir6) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_6, application_color_2, "settings_id_5", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir6)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir6)
windows_registry_write("windows", "win_desktop", dir6)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir6, white)




end




if option+6 < numberOfOptions then


dir7 = listdir[option+6].name



if GetFileExtension(dir7) == ".png" or GetFileExtension(dir7) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_7, application_color_2, "settings_id_6", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir7)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir7)
windows_registry_write("windows", "win_desktop", dir7)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir7, white)




end





if option+7 < numberOfOptions then


dir8 = listdir[option+7].name



if GetFileExtension(dir8) == ".png" or GetFileExtension(dir8) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_8, application_color_2, "settings_id_7", true) then

desktop = Graphics.loadImage(settings_directory .. "\\" .. dir8)
requestWritePermissions()
windows_registry_write("windows", "win_desktop", dir8)
windows_registry_write("windows", "win_desktop", dir8)

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir8, white)




end








if windows_active_highlight == "settings_id_0" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_1" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+100, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_2" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+200, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_3" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+300, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_4" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_5" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+100, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_6" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+200, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_7" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+300, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end



if load_image_cycle == 0 then
if GetFileExtension(dir1) == ".png" or GetFileExtension(dir1) == ".jpg" then
load_image_1 = Graphics.loadImage(settings_directory .. "\\" .. dir1)
end
if GetFileExtension(dir2) == ".png" or GetFileExtension(dir2) == ".jpg" then
load_image_2 = Graphics.loadImage(settings_directory .. "\\" .. dir2)
end
if GetFileExtension(dir3) == ".png" or GetFileExtension(dir3) == ".jpg" then
load_image_3 = Graphics.loadImage(settings_directory .. "\\" .. dir3)
end
if GetFileExtension(dir4) == ".png" or GetFileExtension(dir4) == ".jpg" then
load_image_4 = Graphics.loadImage(settings_directory .. "\\" .. dir4)
end
if GetFileExtension(dir5) == ".png" or GetFileExtension(dir5) == ".jpg" then
load_image_5 = Graphics.loadImage(settings_directory .. "\\" .. dir5)
end
if GetFileExtension(dir6) == ".png" or GetFileExtension(dir6) == ".jpg" then
load_image_6 = Graphics.loadImage(settings_directory .. "\\" .. dir6)
end
if GetFileExtension(dir7) == ".png" or GetFileExtension(dir7) == ".jpg" then
load_image_7 = Graphics.loadImage(settings_directory .. "\\" .. dir7)
end
if GetFileExtension(dir8) == ".png" or GetFileExtension(dir8) == ".jpg" then
load_image_8 = Graphics.loadImage(settings_directory .. "\\" .. dir8)
end
load_image_cycle = 1
end








end


if settings_menu == "customize_colors" then

back("")
windows_lock_cursor = false

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Colors", white)
customizeSidebar()


print(windows_application_position_x[1]+80, windows_application_position_y[1]+70,0.5, "Background color", white)

if windows_button(windows_application_position_x[1]+70, windows_application_position_y[1]+90, 30, 30, "box", blue, application_color_2, "", false, 1) then
windows_background_color = blue

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "41")

windows_registry_write("windows", "settings_background_g", "199")

windows_registry_write("windows", "settings_background_b", "239")


windows_registry_write("windows", "settings_background_r", "41")

windows_registry_write("windows", "settings_background_g", "199")

windows_registry_write("windows", "settings_background_b", "239")



end

if windows_button(windows_application_position_x[1]+70+33, windows_application_position_y[1]+90, 30, 30, "box", red, application_color_2, "", false, 1) then
windows_background_color = red

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "204")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "0")

windows_registry_write("windows", "settings_background_r", "204")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "0")
end

if windows_button(windows_application_position_x[1]+70+33+33, windows_application_position_y[1]+90, 30, 30, "box", green, application_color_2, "", false, 1) then
windows_background_color = green

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "0")

windows_registry_write("windows", "settings_background_g", "204")

windows_registry_write("windows", "settings_background_b", "0")

windows_registry_write("windows", "settings_background_r", "0")

windows_registry_write("windows", "settings_background_g", "204")

windows_registry_write("windows", "settings_background_b", "0")
end

if windows_button(windows_application_position_x[1]+70+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", dark_blue, application_color_2, "", false, 1) then
windows_background_color = dark_blue

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "2")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "194")

windows_registry_write("windows", "settings_background_r", "2")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "194")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", pink, application_color_2, "", false, 1) then
windows_background_color = pink

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "255")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "255")

windows_registry_write("windows", "settings_background_r", "255")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "255")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", purple, application_color_2, "", false, 1) then
windows_background_color = purple

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "127")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "255")

windows_registry_write("windows", "settings_background_r", "127")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "255")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", white, application_color_2, "", false, 1) then
windows_background_color = white

requestWritePermissions()


windows_registry_write("windows", "settings_background_r", "255")

windows_registry_write("windows", "settings_background_g", "255")

windows_registry_write("windows", "settings_background_b", "255")


windows_registry_write("windows", "settings_background_r", "255")

windows_registry_write("windows", "settings_background_g", "255")

windows_registry_write("windows", "settings_background_b", "255")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", black, application_color_2, "", false, 1) then
windows_background_color = black

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "0")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "0")

windows_registry_write("windows", "settings_background_r", "0")

windows_registry_write("windows", "settings_background_g", "0")

windows_registry_write("windows", "settings_background_b", "0")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", grey, application_color_2, "", false, 1) then
windows_background_color = grey

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "90")

windows_registry_write("windows", "settings_background_g", "90")

windows_registry_write("windows", "settings_background_b", "90")

windows_registry_write("windows", "settings_background_r", "90")

windows_registry_write("windows", "settings_background_g", "90")

windows_registry_write("windows", "settings_background_b", "90")
end

if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", dark_grey, application_color_2, "", false, 1) then
windows_background_color = dark_grey

requestWritePermissions()

windows_registry_write("windows", "settings_background_r", "33")

windows_registry_write("windows", "settings_background_g", "33")

windows_registry_write("windows", "settings_background_b", "33")

windows_registry_write("windows", "settings_background_r", "33")

windows_registry_write("windows", "settings_background_g", "33")

windows_registry_write("windows", "settings_background_b", "33")
end

if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+90, 120, 30, "box", transparent, application_color_2, "", false, 1) then
settings_menu = "customize_custom_color"
color_to_change = "windows_background_color"
end

print(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+95,0.4, "Custom", white)



print(windows_application_position_x[1]+80, windows_application_position_y[1]+160,0.5, "Taskbar color", white)

if windows_button(windows_application_position_x[1]+70, windows_application_position_y[1]+180, 30, 30, "box", blue, application_color_2, "", false, 1) then
windows_taskbar_color = blue

requestWritePermissions()

windows_registry_write("windows", "settings_taskbar_r", "41")

windows_registry_write("windows", "settings_taskbar_g", "199")

windows_registry_write("windows", "settings_taskbar_b", "239")

windows_registry_write("windows", "settings_taskbar_r", "41")

windows_registry_write("windows", "settings_taskbar_g", "199")

windows_registry_write("windows", "settings_taskbar_b", "239")
end

if windows_button(windows_application_position_x[1]+70+33, windows_application_position_y[1]+180, 30, 30, "box", red, application_color_2, "", false, 1) then
windows_taskbar_color = red

requestWritePermissions()

windows_registry_write("windows", "settings_taskbar_r", "204")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "0")

windows_registry_write("windows", "settings_taskbar_r", "204")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "0")
end

if windows_button(windows_application_position_x[1]+70+33+33, windows_application_position_y[1]+180, 30, 30, "box", green, application_color_2, "", false, 1) then
windows_taskbar_color = green

requestWritePermissions()


windows_registry_write("windows", "settings_taskbar_r", "0")

windows_registry_write("windows", "settings_taskbar_g", "204")

windows_registry_write("windows", "settings_taskbar_b", "0")


windows_registry_write("windows", "settings_taskbar_r", "0")

windows_registry_write("windows", "settings_taskbar_g", "204")

windows_registry_write("windows", "settings_taskbar_b", "0")
end

if windows_button(windows_application_position_x[1]+70+33+33+33, windows_application_position_y[1]+180, 30, 30, "box", dark_blue, application_color_2, "", false, 1) then
windows_taskbar_color = dark_blue

requestWritePermissions()

windows_registry_write("windows", "settings_taskbar_r", "2")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "194")

windows_registry_write("windows", "settings_taskbar_r", "2")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "194")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33, windows_application_position_y[1]+180, 30, 30, "box", pink, application_color_2, "", false, 1) then
windows_taskbar_color = pink

requestWritePermissions()


windows_registry_write("windows", "settings_taskbar_r", "255")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "255")



windows_registry_write("windows", "settings_taskbar_r", "255")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "255")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33+33, windows_application_position_y[1]+180, 30, 30, "box", purple, application_color_2, "", false, 1) then
windows_taskbar_color = purple

requestWritePermissions()


windows_registry_write("windows", "settings_taskbar_r", "127")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "255")


windows_registry_write("windows", "settings_taskbar_r", "127")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "255")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33, windows_application_position_y[1]+180, 30, 30, "box", white, application_color_2, "", false, 1) then
windows_taskbar_color = white

requestWritePermissions()


windows_registry_write("windows", "settings_taskbar_r", "255")

windows_registry_write("windows", "settings_taskbar_g", "255")

windows_registry_write("windows", "settings_taskbar_b", "255")


windows_registry_write("windows", "settings_taskbar_r", "255")

windows_registry_write("windows", "settings_taskbar_g", "255")

windows_registry_write("windows", "settings_taskbar_b", "255")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33, windows_application_position_y[1]+180, 30, 30, "box", black, application_color_2, "", false, 1) then
windows_taskbar_color = black

requestWritePermissions()

windows_registry_write("windows", "settings_taskbar_r", "0")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "0")

windows_registry_write("windows", "settings_taskbar_r", "0")

windows_registry_write("windows", "settings_taskbar_g", "0")

windows_registry_write("windows", "settings_taskbar_b", "0")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33, windows_application_position_y[1]+180, 30, 30, "box", grey, application_color_2, "", false, 1) then
windows_taskbar_color = grey

requestWritePermissions()

windows_registry_write("windows", "settings_taskbar_r", "90")

windows_registry_write("windows", "settings_taskbar_g", "90")

windows_registry_write("windows", "settings_taskbar_b", "90")

windows_registry_write("windows", "settings_taskbar_r", "90")

windows_registry_write("windows", "settings_taskbar_g", "90")

windows_registry_write("windows", "settings_taskbar_b", "90")
end

if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33, windows_application_position_y[1]+180, 30, 30, "box", dark_grey, application_color_2, "", false, 1) then
windows_taskbar_color = dark_grey

requestWritePermissions()


windows_registry_write("windows", "settings_taskbar_r", "33")

windows_registry_write("windows", "settings_taskbar_g", "33")

windows_registry_write("windows", "settings_taskbar_b", "33")

windows_registry_write("windows", "settings_taskbar_r", "33")

windows_registry_write("windows", "settings_taskbar_g", "33")

windows_registry_write("windows", "settings_taskbar_b", "33")
end

if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+180, 180, 30, "box", transparent, application_color_2, "", false, 1) then
settings_menu = "customize_custom_color"
color_to_change = "windows_taskbar_color"
end

print(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+185,0.4, "Custom", white)






print(windows_application_position_x[1]+80, windows_application_position_y[1]+250,0.5, "Highlight color", white)

if windows_button(windows_application_position_x[1]+70, windows_application_position_y[1]+270, 30, 30, "box", blue, application_color_2, "", false, 1) then
windows_highlight_color = blue

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "41")

windows_registry_write("windows", "settings_highlight_g", "199")

windows_registry_write("windows", "settings_highlight_b", "239")

windows_registry_write("windows", "settings_highlight_r", "41")

windows_registry_write("windows", "settings_highlight_g", "199")

windows_registry_write("windows", "settings_highlight_b", "239")
end

if windows_button(windows_application_position_x[1]+70+33, windows_application_position_y[1]+270, 30, 30, "box", red, application_color_2, "", false, 1) then
windows_highlight_color = red

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "204")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "0")

windows_registry_write("windows", "settings_highlight_r", "204")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "0")
end

if windows_button(windows_application_position_x[1]+70+33+33, windows_application_position_y[1]+270, 30, 30, "box", green, application_color_2, "", false, 1) then
windows_highlight_color = green

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "0")

windows_registry_write("windows", "settings_highlight_g", "204")

windows_registry_write("windows", "settings_highlight_b", "0")

windows_registry_write("windows", "settings_highlight_r", "0")

windows_registry_write("windows", "settings_highlight_g", "204")

windows_registry_write("windows", "settings_highlight_b", "0")
end

if windows_button(windows_application_position_x[1]+70+33+33+33, windows_application_position_y[1]+270, 30, 30, "box", dark_blue, application_color_2, "", false, 1) then
windows_highlight_color = dark_blue

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "2")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "194")

windows_registry_write("windows", "settings_highlight_r", "2")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "194")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33, windows_application_position_y[1]+270, 30, 30, "box", pink, application_color_2, "", false, 1) then
windows_highlight_color = pink

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "255")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "255")


windows_registry_write("windows", "settings_highlight_r", "255")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "255")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33+33, windows_application_position_y[1]+270, 30, 30, "box", purple, application_color_2, "", false, 1) then
windows_highlight_color = purple

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "127")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "255")

windows_registry_write("windows", "settings_highlight_r", "127")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "255")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33, windows_application_position_y[1]+270, 30, 30, "box", white, application_color_2, "", false, 1) then
windows_highlight_color = white

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "255")

windows_registry_write("windows", "settings_highlight_g", "255")

windows_registry_write("windows", "settings_highlight_b", "255")

windows_registry_write("windows", "settings_highlight_r", "255")

windows_registry_write("windows", "settings_highlight_g", "255")

windows_registry_write("windows", "settings_highlight_b", "255")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33, windows_application_position_y[1]+270, 30, 30, "box", black, application_color_2, "", false, 1) then
windows_highlight_color = black

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "0")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "0")

windows_registry_write("windows", "settings_highlight_r", "0")

windows_registry_write("windows", "settings_highlight_g", "0")

windows_registry_write("windows", "settings_highlight_b", "0")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33, windows_application_position_y[1]+270, 30, 30, "box", grey, application_color_2, "", false, 1) then
windows_highlight_color = grey

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "90")

windows_registry_write("windows", "settings_highlight_g", "90")

windows_registry_write("windows", "settings_highlight_b", "90")

windows_registry_write("windows", "settings_highlight_r", "90")

windows_registry_write("windows", "settings_highlight_g", "90")

windows_registry_write("windows", "settings_highlight_b", "90")
end

if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33, windows_application_position_y[1]+270, 30, 30, "box", dark_grey, application_color_2, "", false, 1) then
windows_highlight_color = dark_grey

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", "33")

windows_registry_write("windows", "settings_highlight_g", "33")

windows_registry_write("windows", "settings_highlight_b", "33")

windows_registry_write("windows", "settings_highlight_r", "33")

windows_registry_write("windows", "settings_highlight_g", "33")

windows_registry_write("windows", "settings_highlight_b", "33")
end

if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+270, 270, 30, "box", transparent, application_color_2, "", false, 1) then
settings_menu = "customize_custom_color"
color_to_change = "windows_highlight_color"
end

print(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+275,0.4, "Custom", white)










end











if settings_menu == "customize_cursor" then

back("")
windows_lock_cursor = false

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Cursor", white)
customizeSidebar()


print(windows_application_position_x[1]+80, windows_application_position_y[1]+70,0.5, "Cursor Color", white)

if windows_button(windows_application_position_x[1]+70, windows_application_position_y[1]+90, 30, 30, "box", blue, application_color_2, "", false, 1) then
windows_cursor_color = blue_cursor_patch

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "blue")

windows_registry_write("windows", "win_cursor_color", "blue")



end

if windows_button(windows_application_position_x[1]+70+33, windows_application_position_y[1]+90, 30, 30, "box", red, application_color_2, "", false, 1) then
windows_cursor_color = red_cursor_patch

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "red")

windows_registry_write("windows", "win_cursor_color", "red")
end

if windows_button(windows_application_position_x[1]+70+33+33, windows_application_position_y[1]+90, 30, 30, "box", green, application_color_2, "", false, 1) then
windows_cursor_color = green

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "green")

windows_registry_write("windows", "win_cursor_color", "green")
end

if windows_button(windows_application_position_x[1]+70+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", dark_blue, application_color_2, "", false, 1) then
windows_cursor_color = dark_blue_cursor_patch

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "dark_blue")

windows_registry_write("windows", "win_cursor_color", "dark_blue")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", pink, application_color_2, "", false, 1) then
windows_cursor_color = pink_cursor_patch

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "pink")

windows_registry_write("windows", "win_cursor_color", "pink")
end





if windows_button(windows_application_position_x[1]+70+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", white, application_color_2, "", false, 1) then
windows_custom_cursor = false

requestWritePermissions()

windows_registry_write("windows", "win_cursor_color", "default")

windows_registry_write("windows", "win_cursor_color", "default")
end



if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", black, application_color_2, "", false, 1) then
windows_cursor_color = black

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "black")

windows_registry_write("windows", "win_cursor_color", "black")

end




if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", dark_grey, application_color_2, "", false, 1) then
windows_cursor_color = dark_grey_cursor_patch

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "dark_grey")

windows_registry_write("windows", "win_cursor_color", "dark_grey")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", yellow, application_color_2, "", false, 1) then
windows_cursor_color = yellow_cursor_patch

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "yellow")

windows_registry_write("windows", "win_cursor_color", "yellow")
end


if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", brown, application_color_2, "", false, 1) then
windows_cursor_color = brown

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "brown")

windows_registry_write("windows", "win_cursor_color", "brown")
end




if windows_button(windows_application_position_x[1]+70+33+33+33+33+33+33+33+33+33+33, windows_application_position_y[1]+90, 30, 30, "box", purple, application_color_2, "", false, 1) then
windows_cursor_color = purple

requestWritePermissions()

windows_custom_cursor = true

windows_registry_write("windows", "win_cursor_color", "purple")

windows_registry_write("windows", "win_cursor_color", "purple")
end
















end







if settings_menu == "customize_custom_color" then

back("customize_colors")

local mem_color = Color.new(r, g, b)
print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Custom Color", white)
Graphics.drawRect(windows_application_position_x[1]+50, windows_application_position_y[1]+100, 80, 80, mem_color)

print(windows_application_position_x[1]+170, windows_application_position_y[1]+40,0.6, "R: " .. r .. " G: " .. g .. " B: " .. b, white)

if r == 256 then
r = 0
end

if g == 256 then
g = 0
end

if b == 256 then
b = 0
end


if r == -1 then
r = 255
end

if g == -1 then
g = 255
end

if b == -1 then
b = 255
end







if windows_button(windows_application_position_x[1]+180, windows_application_position_y[1]+75, 30, 30, "box", grey, application_color_2, "", false, 1) then


r = r + 1

end

print(windows_application_position_x[1]+180, windows_application_position_y[1]+75,0.45, "/\\", white)



if windows_button(windows_application_position_x[1]+180, windows_application_position_y[1]+105, 30, 30, "box", grey, application_color_2, "", false, 1) then


r = r - 1

end

print(windows_application_position_x[1]+180, windows_application_position_y[1]+105,0.45, "\\/", white)









if windows_button(windows_application_position_x[1]+235, windows_application_position_y[1]+75, 30, 30, "box", grey, application_color_2, "", false, 1) then


g = g + 1

end
print(windows_application_position_x[1]+235, windows_application_position_y[1]+75,0.45, "/\\", white)




if windows_button(windows_application_position_x[1]+235, windows_application_position_y[1]+105, 30, 30, "box", grey, application_color_2, "", false, 1) then


g = g - 1


end

print(windows_application_position_x[1]+235, windows_application_position_y[1]+105,0.45, "\\/", white)









if windows_button(windows_application_position_x[1]+285, windows_application_position_y[1]+75, 30, 30, "box", grey, application_color_2, "", false, 1) then


b = b + 1

end
print(windows_application_position_x[1]+285, windows_application_position_y[1]+75,0.45, "/\\", white)


if windows_button(windows_application_position_x[1]+285, windows_application_position_y[1]+105, 30, 30, "box", grey, application_color_2, "", false, 1) then


b = b - 1


end
print(windows_application_position_x[1]+285, windows_application_position_y[1]+105,0.45, "\\/", white)



if windows_key_pressed() == "WINDOWS_VK_CIRCLE" then

if color_to_change == "windows_background_color" then

windows_background_color = mem_color

requestWritePermissions()


windows_registry_write("windows", "settings_background_r", tostring(r))

windows_registry_write("windows", "settings_background_g", tostring(g))

windows_registry_write("windows", "settings_background_b", tostring(b))

windows_registry_write("windows", "settings_background_r", tostring(r))

windows_registry_write("windows", "settings_background_g", tostring(g))

windows_registry_write("windows", "settings_background_b", tostring(b))

end

if color_to_change == "windows_taskbar_color" then

windows_taskbar_color = mem_color

requestWritePermissions()

windows_registry_write("windows", "settings_taskbar_r", tostring(r))

windows_registry_write("windows", "settings_taskbar_g", tostring(g))

windows_registry_write("windows", "settings_taskbar_b", tostring(b))

windows_registry_write("windows", "settings_taskbar_r", tostring(r))

windows_registry_write("windows", "settings_taskbar_g", tostring(g))

windows_registry_write("windows", "settings_taskbar_b", tostring(b))


end

if color_to_change == "windows_highlight_color" then

windows_highlight_color = mem_color

requestWritePermissions()

windows_registry_write("windows", "settings_highlight_r", tostring(r))

windows_registry_write("windows", "settings_highlight_g", tostring(g))

windows_registry_write("windows", "settings_highlight_b", tostring(b))

windows_registry_write("windows", "settings_highlight_r", tostring(r))

windows_registry_write("windows", "settings_highlight_g", tostring(g))

windows_registry_write("windows", "settings_highlight_b", tostring(b))

end
end






end



if settings_menu == "customize_lock_screen" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Lock Screen", white)
customizeSidebar()






end



if settings_menu == "customize_taskbar" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Taskbar", white)
customizeSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Taskbar Location", white)



if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90, 65, 30, "box", grey, application_color_2, "", false, 1) then



windows_taskbar_draw_type = "bottom"

requestWritePermissions()

windows_registry_write("windows", "taskbar_draw_type", "bottom")
windows_registry_write("windows", "taskbar_draw_type", "bottom")

windows_application_position_y[upi] = windows_application_position_y[upi] - 33
end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90,0.45, "Bottom", white)




if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36, 65, 30, "box", grey, application_color_2, "", false, 1) then

if windows_taskbar_draw_type == "top" then

else

for upi=0,10000 do

windows_application_position_y[upi] = windows_application_position_y[upi] + 33

end
end


windows_taskbar_draw_type = "top"

requestWritePermissions()

windows_registry_write("windows", "taskbar_draw_type", "top")
windows_registry_write("windows", "taskbar_draw_type", "top")




end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36,0.45, "Top", white)





if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36, 65, 30, "box", grey, application_color_2, "", false, 1) then

if windows_taskbar_draw_type == "left" then

else

for upi=0,10000 do

windows_application_position_x[upi] = windows_application_position_x[upi] + 45

end
end

windows_taskbar_draw_type = "left"

requestWritePermissions()

windows_registry_write("windows", "taskbar_draw_type", "left")
windows_registry_write("windows", "taskbar_draw_type", "left")



end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36,0.45, "Left", white)




if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36+36, 65, 30, "box", grey, application_color_2, "", false, 1) then

if windows_taskbar_draw_type == "right" then

else

for upi=0,10000 do

windows_application_position_x[upi] = windows_application_position_x[upi] - 45

end

end


windows_taskbar_draw_type = "right"


requestWritePermissions()

windows_registry_write("windows", "taskbar_draw_type", "right")
windows_registry_write("windows", "taskbar_draw_type", "right")



end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36+36,0.45, "Right", white)






end



if settings_menu == "customize_screensaver" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Screensaver", white)
customizeSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Screensaver Type", white)



if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36+36, 125, 30, "box", grey, application_color_2, "", false, 1) then

windows_screensaver_type = "off"

requestWritePermissions()

windows_registry_write("windows", "win_screensaver", "off")
windows_registry_write("windows", "win_screensaver", "off")

end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36+36,0.45, "Turn off PS2", white)




if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36, 125, 30, "box", grey, application_color_2, "", false, 1) then


windows_screensaver_type = "psr"

requestWritePermissions()

windows_registry_write("windows", "win_screensaver", "psr")
windows_registry_write("windows", "win_screensaver", "psr")

end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36+36,0.45, "Power Saver", white)





if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36, 125, 30, "box", grey, application_color_2, "", false, 1) then




settings_menu = "customize_screensaver_msg"

end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90+36,0.45, "Display Message", white)




if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90, 125, 30, "box", grey, application_color_2, "", false, 1) then

windows_screensaver_type = "img"

requestWritePermissions()

settings_menu = "customize_screensaver_img"

end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90,0.45, "Display Image", white)






end






if settings_menu == "customize_screensaver_msg" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Screensaver", white)
customizeSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Enter Screensaver Message", white)


if windows_box_text_input_string(windows_application_position_x[1]+100, windows_application_position_y[1]+90, 256, 35, "box", white) == "enter" then
windows_screensaver_type = "msg"
windows_screensaver_message = windows_text_input_stream

requestWritePermissions()

windows_registry_write("windows", "win_screensaver", "msg " .. windows_text_input_stream)
windows_registry_write("windows", "win_screensaver", "msg " .. windows_text_input_stream)


windows_text_input_stream = ""
settings_menu = "customize_screensaver"
end



print(windows_application_position_x[1]+100, windows_application_position_y[1]+90,0.45, windows_text_input_stream, white)







end





if settings_menu == "customize_screensaver_img" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Screensaver", white)
customizeSidebar()








local application_x_pos = -80
local application_y_pos = 120



if windows_button(windows_application_position_x[1]-application_x_pos, windows_application_position_y[1]+application_y_pos+20, 180, 20, "box", application_color_1, application_color_2, "", false, 1) then


load_image_cycle = 0

 option = option -speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end





if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
  
  

end






Font.fmPrint(windows_application_position_x[1]-application_x_pos, windows_application_position_y[1]+application_y_pos+20, 0.45, "         /\\", white)








if windows_button(windows_application_position_x[1]-application_x_pos+200, windows_application_position_y[1]+application_y_pos+20, 180, 20, "box", application_color_1, application_color_2, "", false, 1) then


load_image_cycle = 0

 option = option +speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end





if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
  
  

end






Font.fmPrint(windows_application_position_x[1]-application_x_pos+200, windows_application_position_y[1]+application_y_pos+20, 0.45, "         \\/", white)



dir1 = listdir[option].name



if windows_active_highlight == "settings_id_0" then
settings_update_input(settings_directory .. "\\" .. dir1)


end

if GetFileExtension(dir1) == ".png" or GetFileExtension(dir1) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_1, application_color_2, "settings_id_0", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir1)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir1)
windows_registry_write("windows", "win_screensaver", "img " .. dir1)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir1, white)


if option+1 < numberOfOptions then


dir2 = listdir[option+1].name


if windows_active_highlight == "settings_id_1" then
settings_update_input(settings_directory .. "\\" .. dir2)



end

if GetFileExtension(dir2) == ".png" or GetFileExtension(dir2) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_2, application_color_2, "settings_id_1", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir2)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir2)
windows_registry_write("windows", "win_screensaver", "img " .. dir2)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir2, white)




end




if option+2 < numberOfOptions then


dir3 = listdir[option+2].name


if windows_active_highlight == "settings_id_2" then
settings_update_input(settings_directory .. "\\" .. dir3)


end

if GetFileExtension(dir3) == ".png" or GetFileExtension(dir3) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_3, application_color_2, "settings_id_2", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir3)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir3)
windows_registry_write("windows", "win_screensaver", "img " .. dir3)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir3, white)




end




if option+3 < numberOfOptions then


dir4 = listdir[option+3].name


if windows_active_highlight == "settings_id_3" then
settings_update_input(settings_directory .. "\\" .. dir4)


end

if GetFileExtension(dir4) == ".png" or GetFileExtension(dir4) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40, 100, 100, "image", load_image_4, application_color_2, "settings_id_3", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir4)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir4)
windows_registry_write("windows", "win_screensaver", "img " .. dir4)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40, 0.45, dir4, white)




end






if option+4 < numberOfOptions then


dir5 = listdir[option+4].name


if windows_active_highlight == "settings_id_4" then
settings_update_input(settings_directory .. "\\" .. dir5)



end

if GetFileExtension(dir5) == ".png" or GetFileExtension(dir5) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_5, application_color_2, "settings_id_4", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir5)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir5)
windows_registry_write("windows", "win_screensaver", "img " .. dir5)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir5, white)




end





if option+5 < numberOfOptions then


dir6 = listdir[option+5].name



if GetFileExtension(dir6) == ".png" or GetFileExtension(dir6) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_6, application_color_2, "settings_id_5", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir6)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir6)
windows_registry_write("windows", "win_screensaver", "img " .. dir6)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+100+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir6, white)




end




if option+6 < numberOfOptions then


dir7 = listdir[option+6].name



if GetFileExtension(dir7) == ".png" or GetFileExtension(dir7) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_7, application_color_2, "settings_id_6", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir7)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir7)
windows_registry_write("windows", "win_screensaver", "img " .. dir7)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+200+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir7, white)




end





if option+7 < numberOfOptions then


dir8 = listdir[option+7].name



if GetFileExtension(dir8) == ".png" or GetFileExtension(dir8) == ".jpg" then
if windows_button(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40+100+10, 100, 100, "image", load_image_8, application_color_2, "settings_id_7", true) then

windows_screensaver_image = Graphics.loadImage(settings_directory .. "\\" .. dir8)
requestWritePermissions()
windows_registry_write("windows", "win_screensaver", "img " .. dir8)
windows_registry_write("windows", "win_screensaver", "img " .. dir8)
settings_menu = "customize_screensaver"

end

end
Font.fmPrint(windows_application_position_x[1]-application_x_pos+300+10, windows_application_position_y[1]+application_y_pos+40+100+10, 0.45, dir8, white)




end








if windows_active_highlight == "settings_id_0" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_1" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+100, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_2" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+200, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_3" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+300, windows_application_position_y[1]+application_y_pos+40,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_4" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_5" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+100, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_6" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+200, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end

if windows_active_highlight == "settings_id_7" then
Graphics.drawRect(windows_application_position_x[1]-application_x_pos+10+300, windows_application_position_y[1]+application_y_pos+40+100+10,100,100,windows_highlight_color)
end



if load_image_cycle == 0 then
if GetFileExtension(dir1) == ".png" or GetFileExtension(dir1) == ".jpg" then
load_image_1 = Graphics.loadImage(settings_directory .. "\\" .. dir1)
end
if GetFileExtension(dir2) == ".png" or GetFileExtension(dir2) == ".jpg" then
load_image_2 = Graphics.loadImage(settings_directory .. "\\" .. dir2)
end
if GetFileExtension(dir3) == ".png" or GetFileExtension(dir3) == ".jpg" then
load_image_3 = Graphics.loadImage(settings_directory .. "\\" .. dir3)
end
if GetFileExtension(dir4) == ".png" or GetFileExtension(dir4) == ".jpg" then
load_image_4 = Graphics.loadImage(settings_directory .. "\\" .. dir4)
end
if GetFileExtension(dir5) == ".png" or GetFileExtension(dir5) == ".jpg" then
load_image_5 = Graphics.loadImage(settings_directory .. "\\" .. dir5)
end
if GetFileExtension(dir6) == ".png" or GetFileExtension(dir6) == ".jpg" then
load_image_6 = Graphics.loadImage(settings_directory .. "\\" .. dir6)
end
if GetFileExtension(dir7) == ".png" or GetFileExtension(dir7) == ".jpg" then
load_image_7 = Graphics.loadImage(settings_directory .. "\\" .. dir7)
end
if GetFileExtension(dir8) == ".png" or GetFileExtension(dir8) == ".jpg" then
load_image_8 = Graphics.loadImage(settings_directory .. "\\" .. dir8)
end
load_image_cycle = 1
end













end












if settings_menu == "system_about" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "About", white)
systemSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Device Specifications", white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+90,0.45, "Device name     " .. windows_system_origin, white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+100,0.45, "Processor       " .. windows_hardware_processor, white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+110,0.45, "Installed RAM   " .. windows_available_ram, white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+120,0.45, "Available RAM   " .. freevram, white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+130,0.45, "Build           " .. windows_build, white)
if windows_usb_keyboard_active == false then
print(windows_application_position_x[1]+75, windows_application_position_y[1]+140,0.45, "Keyboard        " .. "Windows Virtual Keyboard", white)
else
print(windows_application_position_x[1]+75, windows_application_position_y[1]+140,0.45, "Keyboard        " .. "USB Keyboard", white)
end

print(windows_application_position_x[1]+75, windows_application_position_y[1]+175,0.7, "Developer Information", white)

print(windows_application_position_x[1]+75, windows_application_position_y[1]+200,0.4, "Windows 10 for PlayStation 2, a Plushie Studios project\n(2023-2024). Developed using PS2DEV and Enceladus.", white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+210,0.4, "\nMain developer: Christien Chapman.\nHelp with keyboard input: El_isra.\nHelp with system time: ChelseaFantasy.", white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+220,0.4, "\n\n\nWindows is an intellectual property of Microsoft. We do not\nintend to infringe on the copyright of the respectful owner.", white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+230,0.4, "\n\n\n\nThis operating system was made for completely creative and\nscientific reasons. This is not an enforsed product of Microsoft.", white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+240,0.4, "\n\n\n\n\nAll glory to God, Jesus Christ, and the Holy Spirit.\nRead the Bible at:\nhttps://www.biblegateway.com\n/passage/?search=Genesis+1&version=NIV", white)

end





if settings_menu == "system_audio" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Audio", white)
systemSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Audio Frequency", white)

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_frequency = 22050

requestWritePermissions()

windows_registry_write("windows", "win_audio_frequency", "22050")
windows_registry_write("windows", "win_audio_frequency", "22050")

end

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+130, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_frequency = 44100

requestWritePermissions()

windows_registry_write("windows", "win_audio_frequency", "44100")
windows_registry_write("windows", "win_audio_frequency", "44100")

end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90,0.45, "22050hz", white)
print(windows_application_position_x[1]+100, windows_application_position_y[1]+130,0.45, "44100hz", white)



print(windows_application_position_x[1]+75, windows_application_position_y[1]+170,0.7, "Audio Status", white)


if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+195, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_audio_enabled = true

requestWritePermissions()

windows_registry_write("windows", "win_audio", "enable")
windows_registry_write("windows", "win_audio", "enable")

end

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+235, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_audio_enabled = false

requestWritePermissions()

windows_registry_write("windows", "win_audio", "disable")
windows_registry_write("windows", "win_audio", "disable")
end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+195,0.45, "Enable", white)
print(windows_application_position_x[1]+100, windows_application_position_y[1]+235,0.45, "Disable", white)






end












if settings_menu == "system_screensaver" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Screensaver", white)
systemSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Screensaver Status", white)

if windows_button(windows_application_position_x[1]+140+100, windows_application_position_y[1]+90+70, 65, 30, "box", grey, application_color_2, "", false, 1) then

settings_menu = "customize_screensaver"

end

if windows_button(windows_application_position_x[1]+140+100, windows_application_position_y[1]+130+70, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_screensaver_type = "nop"

requestWritePermissions()

windows_registry_write("windows", "win_screensaver", "nop")
windows_registry_write("windows", "win_screensaver", "nop")

end

print(windows_application_position_x[1]+100+140, windows_application_position_y[1]+90+70,0.45, "Enable", white)
print(windows_application_position_x[1]+100+140, windows_application_position_y[1]+130+70,0.45, "Disable", white)







end








if settings_menu == "system_power" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Power", white)
systemSidebar()



if windows_button(windows_application_position_x[1]+140+100, windows_application_position_y[1]+90+70, 105, 30, "box", grey, application_color_2, "", false, 1) then

System.shutdown()

end

if windows_button(windows_application_position_x[1]+140+100, windows_application_position_y[1]+130+70, 105, 30, "box", grey, application_color_2, "", false, 1) then

system_menu = "customize_screensaver"

end

print(windows_application_position_x[1]+100+140, windows_application_position_y[1]+90+70,0.45, "Shutdown", white)
print(windows_application_position_x[1]+100+140, windows_application_position_y[1]+130+70,0.45, "Auto Shutdown", white)







end














if settings_menu == "system_cursor" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Cursor", white)
systemSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Movement Speed", white)

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_cursor_movement_speed_x = 2

requestWritePermissions()

windows_registry_write("windows", "win_cursor_speed", "2")
windows_registry_write("windows", "win_cursor_speed", "2")

end

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+130, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_cursor_movement_speed_x = 3

requestWritePermissions()

windows_registry_write("windows", "win_cursor_speed", "3")
windows_registry_write("windows", "win_cursor_speed", "3")

end

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+170, 65, 30, "box", grey, application_color_2, "", false, 1) then

windows_cursor_movement_speed_x = 4

requestWritePermissions()

windows_registry_write("windows", "win_cursor_speed", "4")
windows_registry_write("windows", "win_cursor_speed", "4")

end

print(windows_application_position_x[1]+100, windows_application_position_y[1]+90,0.45, "Slow", white)
print(windows_application_position_x[1]+100, windows_application_position_y[1]+130,0.45, "Moderate", white)
print(windows_application_position_x[1]+100, windows_application_position_y[1]+170,0.45, "Fast", white)





end








if settings_menu == "system_notifications" then

back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Notifications", white)
systemSidebar()


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Notification Status", white)

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+90, 65, 30, "box", grey, application_color_2, "", false, 1) then

focus_assist = true

requestWritePermissions()

windows_registry_write("windows", "win_focus_assist", "false")
windows_registry_write("windows", "win_focus_assist", "false")

end

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+130, 65, 30, "box", grey, application_color_2, "", false, 1) then

focus_assist = false

requestWritePermissions()

windows_registry_write("windows", "win_focus_assist", "true")
windows_registry_write("windows", "win_focus_assist", "true")

end



print(windows_application_position_x[1]+100, windows_application_position_y[1]+90,0.45, "Enable", white)
print(windows_application_position_x[1]+100, windows_application_position_y[1]+130,0.45, "Disable", white)






end





if settings_menu == "system_magic_gate" then
back("")

print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "MagicGate", white)
systemSidebar()

local mg_enabled = windows_registry_get("windows","win_MagicGate_mc02")


print(windows_application_position_x[1]+75, windows_application_position_y[1]+65,0.7, "Automatic Login", white)
print(windows_application_position_x[1]+75, windows_application_position_y[1]+90,0.45, "Windows 10 for PlayStation 2 can automatically login to\nyour account by utilizing a MagicGate memory card present\nin memory card slot 2. You will not be required\nto authenticate your password once your\ncredentials have been stored on the card.", white)



if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+190, 65, 30, "box", grey, application_color_2, "", false, 1) then


--requestWritePermissions()





--windows_registry_magic_gate_create("windows", "usr")
--windows_registry_magic_gate_create("windows", "password")
--windows_registry_write("windows", "win_MagicGate_mc02", "enable")
--windows_registry_magic_gate_write("windows", "usr", windows_username)
--windows_registry_magic_gate_write("windows", "password", windows_password)
--windows_registry_magic_gate_write("windows", "usr", windows_username)
--windows_registry_magic_gate_write("windows", "password", windows_password)


end

if windows_button(windows_application_position_x[1]+100, windows_application_position_y[1]+230, 65, 30, "box", grey, application_color_2, "", false, 1) then

requestWritePermissions()

windows_registry_magic_gate_create("windows", "usr")
windows_registry_magic_gate_create("windows", "password")
windows_registry_write("windows", "win_MagicGate_mc02", "disable")
windows_registry_magic_gate_write("windows", "usr", "0x0000000000")
windows_registry_magic_gate_write("windows", "password", "0x0000000000")
windows_registry_magic_gate_write("windows", "usr", "0x0000000000")
windows_registry_magic_gate_write("windows", "password", "0x0000000000")

end


print(windows_application_position_x[1]+100, windows_application_position_y[1]+190,0.45, "Enable", white)
print(windows_application_position_x[1]+100, windows_application_position_y[1]+230,0.45, "Disable", white)



end







if settings_menu == "profile_password" then
back("")
profileSidebar()

if windows_box_text_input(windows_application_position_x[1]+79, windows_application_position_y[1]+60, 200, 35, "box", white, "compare " .. windows_password) == true then
settings_menu = "profile_password_2"
windows_text_input_stream = ""
end


print(windows_application_position_x[1]+79, windows_application_position_y[1]+20,0.8, "Change Password", white)
print(windows_application_position_x[1]+79, windows_application_position_y[1]+45,0.45, "Enter your current password.", white)
print(windows_application_position_x[1]+79, windows_application_position_y[1]+65,0.45, windows_text_input_stream, white)
end

if settings_menu == "profile_password_2" then

back("")
profileSidebar()

if windows_box_text_input_string(windows_application_position_x[1]+79, windows_application_position_y[1]+60, 200, 35, "box", white) == "enter" then
requestWritePermissions()
windows_registry_write("windows", "win_password", windows_text_input_stream)
end



print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Change Password", white)
print(windows_application_position_x[1]+79, windows_application_position_y[1]+45,0.6, "Enter your new password", white)
print(windows_application_position_x[1]+79, windows_application_position_y[1]+65,0.45, windows_text_input_stream, white)
end


if settings_menu == "profile_username" then
back("")
profileSidebar()


print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Change Username", white)
print(windows_application_position_x[1]+79, windows_application_position_y[1]+45,0.6, "Enter your current password and then your new username.", white)
end



if settings_menu == "profile_picture" then
back("")
profileSidebar()




print(windows_application_position_x[1]+65, windows_application_position_y[1]+20,0.8, "Update Profile Picture", white)
end






settings_GraphicalMemoryHandlingLogic(settings)






end



