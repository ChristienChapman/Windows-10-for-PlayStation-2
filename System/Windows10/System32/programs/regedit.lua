-- All glory to God, Jesus Christ, and the Holy Spirit.


-- This program can be run by the run tab using the command regedit



regedit = false
local option = 1
local speed = 1
local numberOfOptions = 0
local suboption = 1
local numberOfSubOptions = 7
local regedit_listdir = System.listDirectory(System.currentDirectory())
local regedit_directory = System.currentDirectory()
local snapshot_regedit_directory_registry = ""
local dot_cycle = 0
local dot = ""
local input = ""
local type = ""
local space = ""
local numberOfDirectories = 0
local isDirInit = 1
local create_registry = false
local edit_registry = false
local create_variable = false
local regedit_create_name = ""
local regedit_edit_data = ""
local regedit_create_variable = ""
local dir1 = ""
local dir2 = ""
local dir3 = ""
local dir4 = ""
local dir5 = ""
local dir6 = ""
local dir7 = ""
local dir8 = ""
local dir9 = ""
local dir10 = ""
local dir11 = ""
local regedit_open_registry = ""
local regedit_open_variable = ""
local regedit_logical_value = 0
local regedit_directories_enumerated = false



regedit_icon = Graphics.loadImage("System/Windows10/ProgramData/regedit/regedit_icon.png")


windows_application_position_y[3] = windows_application_position_y[3] - 70
windows_application_position_x[4] = windows_application_position_x[4] + 100
windows_application_position_y[4] = windows_application_position_y[4] - 10


windows_register_run_command("regedit")
register_desktop_icon("Registry Edit", regedit_icon, "regedit")



local function toggle_windowsvk_pos()

windows_application_position_x[0] = 350
windows_application_position_y[0] = 300

end


local function regedit_getDir(dir)

option = 1
System.clearNumberOfDirectories()
regedit_directory = regedit_directory .. dir 
regedit_listdir = System.listDirectory(regedit_directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
 
  
  
  --System.currentDirectory()
  
  end
  
    --regedit_getDir("\\System/Windows10/System32/registry/")
  
   




local function back(menu)


if windows_key_pressed() == "WINDOWS_VK_CIRCLE" then

System.sleep(1)

if regedit_logical_value >= 1 then

  if regedit_logical_value == 1 then

regedit_directory = ""
regedit_getDir("System/Windows10/System32/registry")
regedit_logical_value = regedit_logical_value - 1

end
  
  
if regedit_logical_value >= 2 then

regedit_directory = ""
regedit_getDir(snapshot_regedit_directory_registry)
regedit_logical_value = regedit_logical_value - 1

end

else

regedit = false


end

if menu == "exit" then
regedit = false


end


end

end


local function regedit_update_input(update_input)


if isDirInit == 0 then
input = update_input
else
input = "\\" .. update_input
end

end



local function regedit_create_box()

 toggle_windowsvk_pos()
local application_name = "Registry Edit"
local application_color_1 = grey
local application_color_2 = windows_highlight_color
windows_background(windows_application_position_x[4], windows_application_position_y[4], 320, 228, "box", application_color_1, application_name, 4)





if windows_box_text_input_string(windows_application_position_x[4]+10, windows_application_position_y[4]+40, 150, 20, "box", white) == "enter" then


regedit_create_name = windows_text_input_stream
windows_registry_create(regedit_create_name, "default")
regedit_create_name = ""
create_registry = false
windows_text_input_stream = ""




end
print(windows_application_position_x[4]+10, windows_application_position_y[4]+30,0.4,"Enter registry name",black)
print(windows_application_position_x[4]+10, windows_application_position_y[4]+45,0.4,windows_text_input_stream,black)


if windows_button(windows_application_position_x[4],windows_application_position_y[4]+200, 100, 20, "box", transparent, application_color_2, "", false, 4) then


  
  regedit_create_name  = ""
create_registry = false
windows_text_input_stream = ""
  
  

end
Font.fmPrint(windows_application_position_x[4],windows_application_position_y[4]+200, 0.6, " Cancel", black)



end






local function regedit_variable_box(name)

 toggle_windowsvk_pos()

local application_name = "Registry Edit"
local application_color_1 = grey
local application_color_2 = windows_highlight_color
windows_background(windows_application_position_x[4], windows_application_position_y[4], 320, 228, "box", application_color_1, application_name, 4)





if windows_box_text_input_string(windows_application_position_x[4]+10, windows_application_position_y[4]+40, 150, 20, "box", white) == "enter" then


regedit_create_variable = windows_text_input_stream
windows_registry_create(name, regedit_create_variable)
regedit_create_variable = ""
create_variable = false
windows_text_input_stream = ""




end
print(windows_application_position_x[4]+10, windows_application_position_y[4]+30,0.4,"Enter variable name",black)
print(windows_application_position_x[4]+10, windows_application_position_y[4]+45,0.4,windows_text_input_stream,black)


if windows_button(windows_application_position_x[4],windows_application_position_y[4]+200, 100, 20, "box", transparent, application_color_2, "", false, 4) then


  
  regedit_create_variable  = ""
create_variable = false
windows_text_input_stream = ""
  
  

end
Font.fmPrint(windows_application_position_x[4],windows_application_position_y[4]+200, 0.6, " Cancel", black)



end



local function regedit_edit_box(name, local_input)

 toggle_windowsvk_pos()



local application_name = "Registry Edit"
local application_color_1 = grey
local application_color_2 = windows_highlight_color
windows_background(windows_application_position_x[4], windows_application_position_y[4], 320, 228, "box", application_color_1, application_name, 4)





if windows_box_text_input_string(windows_application_position_x[4]+10, windows_application_position_y[4]+80, 150, 20, "box", white) == "enter" then


 regedit_edit_data = windows_text_input_stream
windows_registry_write(name, local_input, regedit_edit_data)
windows_registry_write(name, local_input, regedit_edit_data)
 regedit_edit_data  = ""
edit_registry = false
windows_text_input_stream = ""
regedit_logical_value = regedit_logical_value -1




end
print(windows_application_position_x[4]+10, windows_application_position_y[4]+30,0.4,"Current data value",black)
Graphics.drawRect(windows_application_position_x[4]+10, windows_application_position_y[4]+40, 150, 20, white)
print(windows_application_position_x[4]+10, windows_application_position_y[4]+45,0.4,input,black)
print(windows_application_position_x[4]+10, windows_application_position_y[4]+70,0.4,"Enter new data value",black)
print(windows_application_position_x[4]+10, windows_application_position_y[4]+85,0.4,windows_text_input_stream,black)



if windows_button(windows_application_position_x[4],windows_application_position_y[4]+200, 100, 20, "box", transparent, application_color_2, "", false, 4) then


  
  regedit_edit_data  = ""
edit_registry = false
windows_text_input_stream = ""
regedit_logical_value = regedit_logical_value -1
  
  

end
Font.fmPrint(windows_application_position_x[4],windows_application_position_y[4]+200, 0.6, " Cancel", black)




end






function regedit_ui()

local application_name = "Registry Edit"
local application_color_1 = white
local application_color_2 = windows_highlight_color



  if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+60, 180, 20, "box", transparent, application_color_2, "", false, 3) then

 option = option -speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end


if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
  
  

end
Font.fmPrint(windows_application_position_x[3]-35,windows_application_position_y[3]+60, 0.8, "         /\\", white)

  
  
   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+160, 180, 20, "box", transparent, application_color_2, "", false, 3) then

 option = option +speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end


if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
  
  

end
Font.fmPrint(windows_application_position_x[3]-35,windows_application_position_y[3]+80+160, 0.8, "         \\/", white)



 
  dir1 = regedit_listdir[option].name
  


   if edit_registry == false then
  if windows_active_highlight == "regedit_button_1" then

regedit_update_input(dir1)


end
end


   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80, 180, 20, "box", transparent, application_color_2, "regedit_button_1", true) then
   
   regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end


  
   
  
   end
   
    draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+2)
   print(windows_application_position_x[3]-35,windows_application_position_y[3]+80,0.8,dir1,black)
   

  
  
  
  if option+1 < numberOfOptions then
  
  dir2 = regedit_listdir[option+1].name
  
   if edit_registry == false then
if windows_active_highlight == "regedit_button_2" then

regedit_update_input(dir2)


end
end
  
  if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+20, 180, 20, "box", transparent, application_color_2, "regedit_button_2", true) then
   
    regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end
   
   end
    
  
  draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+20+2)
  print(windows_application_position_x[3]-35,windows_application_position_y[3]+80+20,0.8,dir2,black)
  
  end
  
  if option+2 < numberOfOptions then
  
  dir3 = regedit_listdir[option+2].name
  
   if edit_registry == false then
  if windows_active_highlight == "regedit_button_3" then

regedit_update_input(dir3)


end
end
  
   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+40, 180, 20, "box", transparent, application_color_2, "regedit_button_3", true) then
   
   
    regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end
   
   end
   
  
  
   draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+40+2)
  print(windows_application_position_x[3]-35,windows_application_position_y[3]+80+40,0.8,dir3,black)
  
  end
  
  
  
  if option+3 < numberOfOptions then
  
   dir4 = regedit_listdir[option+3].name
  
   if edit_registry == false then
  if windows_active_highlight == "regedit_button_4" then

regedit_update_input(dir4)

end
end
  
   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+60, 180, 20, "box", transparent, application_color_2, "regedit_button_4", true) then
   
    regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end
   
   end
   
  
 
  
  draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+60+2)
  print(windows_application_position_x[3]-35,windows_application_position_y[3]+80+60,0.8,dir4,black)
  
  end
  
  
  if option+4 < numberOfOptions then
  
  dir5 = regedit_listdir[option+4].name
  
   if edit_registry == false then
  if windows_active_highlight == "regedit_button_5" then

regedit_update_input(dir5)

end
end
  
   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+80, 180, 20, "box", transparent, application_color_2, "regedit_button_5", true) then
   
   
   regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end
   
   
   
   end
   
  
  
  
   draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+80+2)
  print(windows_application_position_x[3]-35,windows_application_position_y[3]+80+80,0.8,dir5,black)
  
  end
  
  
  if option+5 < numberOfOptions then
  
   dir6 = regedit_listdir[option+5].name
  
   if edit_registry == false then
  if windows_active_highlight == "regedit_button_6" then

regedit_update_input(dir6)

end
end
  
   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+100, 180, 20, "box", transparent, application_color_2, "regedit_button_6", true) then
   
    regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end
   
   end
   
  
 
  
   draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+100+2)
  print(windows_application_position_x[3]-35,windows_application_position_y[3]+80+100,0.8,dir6,black)
  
  end
  
  
  if option+6 < numberOfOptions then
  
   dir7 = regedit_listdir[option+6].name
  
   if edit_registry == false then
  if windows_active_highlight == "regedit_button_7" then

regedit_update_input(dir7)

end
end
  
   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+120, 180, 20, "box", transparent, application_color_2, "regedit_button_7", true) then
   
    regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end
   
   end
   
  
 
  
 draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+120+2)
  print(windows_application_position_x[3]-35,windows_application_position_y[3]+80+120,0.8,dir7,black)
  
  end
  
  
  
  if option+7 < numberOfOptions then

dir8 = regedit_listdir[option+7].name
  
   if edit_registry == false then
  if windows_active_highlight == "regedit_button_8" then

regedit_update_input(dir8)

end
end
  
   if windows_button(windows_application_position_x[3]-35,windows_application_position_y[3]+80+140, 180, 20, "box", transparent, application_color_2, "regedit_button_8", true) then
   
    regedit_logical_value = regedit_logical_value + 1
   
   if regedit_logical_value == 1 then
   regedit_open_registry = input
   end
   
   if regedit_logical_value == 2 then
   regedit_open_variable = input
   end
   
   if regedit_logical_value <3 then
    regedit_getDir(input)
	if regedit_logical_value == 1 then
	 snapshot_regedit_directory_registry = regedit_directory
	end
	end
	
	
	if regedit_logical_value >=3 then
	
	edit_registry = true
	
	end
   
   end
   
  
  
  
 draw_image(explorer_directory_icon,windows_application_position_x[3]-50,windows_application_position_y[3]+80+140+2)
  print(windows_application_position_x[3]-35,windows_application_position_y[3]+80+140,0.8,dir8,black)
  
  
  
  
  
  
  
  
  
    
  
  
  
  
  end
  
  
  
  
  
  
  
  
  if regedit_logical_value >= 1 then
  if windows_button(windows_application_position_x[3]-30,windows_application_position_y[3]+80+200, 180, 20, "box", transparent, application_color_2, "", true) then
  
  
  if regedit_logical_value == 1 then

regedit_directory = ""
regedit_getDir("System/Windows10/System32/registry")
regedit_logical_value = regedit_logical_value - 1

end
  
  
if regedit_logical_value >= 2 then

regedit_directory = ""
regedit_getDir(snapshot_regedit_directory_registry)
regedit_logical_value = regedit_logical_value - 1

end
  
  
  end
  
  print(windows_application_position_x[3]-30,windows_application_position_y[3]+80+200,0.8,"Back",black)
   end
  
  
  
  
  
  
  
 
  
  
  
  if windows_button(windows_application_position_x[3]-100, windows_application_position_y[3]+3, 120, 15, "box", white, application_color_2, "", true) then
create_registry = true
end
print(windows_application_position_x[3]-100, windows_application_position_y[3]+3,0.4,"Create Registry",black)


if regedit_logical_value == 1 then


if windows_button(windows_application_position_x[3]-100+150+100, windows_application_position_y[3]+3, 120-80, 15, "box", white, application_color_2, "", true) then
regedit = false




end
print(windows_application_position_x[3]-100+150+100, windows_application_position_y[3]+3,0.4,"Exit",black)


else


if windows_button(windows_application_position_x[3]-100+150, windows_application_position_y[3]+3, 120-80, 15, "box", white, application_color_2, "", true) then
regedit = false


end
print(windows_application_position_x[3]-100+150, windows_application_position_y[3]+3,0.4,"Exit",black)

end


if regedit_logical_value == 1 then
  if windows_button(windows_application_position_x[3]-100+125, windows_application_position_y[3]+3, 120, 15, "box", white, application_color_2, "", true) then
create_variable = true
end
print(windows_application_position_x[3]-100+125, windows_application_position_y[3]+3,0.4,"Create Variable",black)
end








 
  if edit_registry == true then
regedit_edit_box(regedit_open_registry, regedit_open_variable)
end

if create_registry == true then
  
  regedit_create_box()
  
  end
  
if create_variable == true then

regedit_variable_box(regedit_open_registry)

end
 
  

end



function regedit_init()


local application_name = "Registry Edit"
local application_color_1 = white
local application_color_2 = grey
application_focus_bar(windows_application_position_x[3]-20, windows_application_position_y[3]-20, 640, 17,application_name, 3)
if application_focus_button(windows_application_position_x[3]+510, windows_application_position_y[3]-20, 30, 17, "exit", 3) == true then

regedit = false



end

if application_focus_button(windows_application_position_x[3]+480, windows_application_position_y[3]-20, 30, 17, "maximize", 3) == true then

windows_application_position_x[3] = 100
windows_application_position_y[3] = 100 - 70

end

if application_focus_button(windows_application_position_x[3]+460, windows_application_position_y[3]-20, 20, 17, "minimize", 3) == true then

windows_application_position_x[3] = 1000

end
windows_background(windows_application_position_x[3]-100, windows_application_position_y[3]-1, 640, 448, "box", application_color_1, application_name, 3)




if regedit == true then

if regedit_directories_enumerated == false then

System.clearNumberOfDirectories()
regedit_getDir("\\System/Windows10/System32/registry/")
regedit_directories_enumerated = true

end

end


regedit_ui()




end




