-- All glory to God, Jesus Christ, and the Holy Spirit


notepad = false
notepad_windows_app = false
notepad_edit_background_color = Color.new(41,49,52)
notepad_menu = "home"
notepad_syntax = ""
notepad_new_application = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_application.png")
notepad_new_lua = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_LUA.png")
notepad_new_document = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_document.png")
notepad_new_c = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_c.png")
notepad_new_java = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_java.png")
notepad_pixel = Graphics.loadImage("System/Windows10/ProgramData/notepad/notepad_pixel.jpg")
notepad_text = ""
notepad_chars = 0
notepad_graphical_memory_logic = 0

notepad_home_message = ""
notepad_home_title = ""



windows_application_position_y[7] = windows_application_position_y[7] - 70







local function notepad_GraphicalMemoryHandlingLogic(check)


if check == false then

if notepad_graphical_memory_logic == 0 then
notepad_file_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
notepad_new_application = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
notepad_new_lua = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
notepad_new_document = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
notepad_new_c = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
notepad_new_java = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
notepad_pixel = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
notepad_graphical_memory_logic = 1
end







end



if check == true then



if notepad_graphical_memory_logic == 1 then
notepad_new_application = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_application.png")
notepad_new_lua = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_LUA.png")
notepad_new_document = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_document.png")
notepad_new_c = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_c.png")
notepad_new_java = Graphics.loadImage("System/Windows10/ProgramData/notepad/new_java.png")
notepad_pixel = Graphics.loadImage("System/Windows10/ProgramData/notepad/notepad_pixel.jpg")

notepad_graphical_memory_logic = 0
end

end




end




function notepad_home()

local application_name = "Notepad"
local application_color_1 = transparent
local application_color_2 = windows_highlight_color


if windows_button(windows_application_position_x[7]-65, windows_application_position_y[7]+100, 90, 90, "image", notepad_new_document, transparent, "nts_home_0", false, 7) then

	notepad_syntax = "none"
	notepad_menu = "text_ed"
	notepad_windows_app = false
  
  
end

if windows_button(windows_application_position_x[7]-65+115, windows_application_position_y[7]+100, 90, 90, "image", notepad_new_application, transparent, "nts_home_1", false, 7) then

	
  notepad_syntax = "lua"
  notepad_menu = "text_ed"
  notepad_windows_app = true
  
end


if windows_button(windows_application_position_x[7]-65+115*2, windows_application_position_y[7]+100, 90, 90, "image", notepad_new_lua, transparent, "nts_home_2", false, 7) then

	
  notepad_syntax = "lua"
  notepad_menu = "text_ed"
  notepad_windows_app = false
  
end


if windows_button(windows_application_position_x[7]-65+115*3, windows_application_position_y[7]+100, 90, 90, "image", notepad_new_c, transparent, "nts_home_3", false, 7) then

	notepad_syntax = "c"
	notepad_menu = "text_ed"
	notepad_windows_app = false
  
  
end


if windows_button(windows_application_position_x[7]-65+115*4, windows_application_position_y[7]+100, 90, 90, "image", notepad_new_java, transparent, "nts_home_4", false, 7) then

	
  notepad_syntax = "java"
  notepad_menu = "text_ed"
	notepad_windows_app = false
  
end


if windows_active_highlight == "nts_home_0" then
notepad_home_title = "New Document"
notepad_home_message = "Create a basic text document for general writing purposes."
end

if windows_active_highlight == "nts_home_1" then
notepad_home_title = "New Application"
notepad_home_message = "Create a Windows 10 for PlayStation 2 application.        	"
end

if windows_active_highlight == "nts_home_2" then
notepad_home_title = "New Lua File"
notepad_home_message = "Create a file for use in the Lua programming language.    	"
end

if windows_active_highlight == "nts_home_3" then
notepad_home_title = "New C File"
notepad_home_message = "Create a file for use in the C programming language.    	"
end

if windows_active_highlight == "nts_home_4" then
notepad_home_title = "New Java File"
notepad_home_message = "Create a file for use in the Java programming language.    	"
end

draw_image_scale(notepad_pixel, windows_application_position_x[7]-100, windows_application_position_y[7]+360, 640, 3)
print(windows_application_position_x[7]-85, windows_application_position_y[7]+370,0.9,notepad_home_title,grey)
print(windows_application_position_x[7]-85, windows_application_position_y[7]+395,0.5,notepad_home_message,grey)




end









function notepad_text_editor_basic()

print(windows_application_position_x[7]-85, windows_application_position_y[7]+10,0.4,notepad_text,grey)



if windows_vk_global_enter == true then
notepad_text = notepad_text .. "\n"
notepad_chars = notepad_chars + 1
windows_vk_global_enter = false
end

if windows_vk_global_backspace == true then

notepad_text = string.sub(notepad_text,0,notepad_chars-1)
notepad_chars = notepad_chars -1
windows_vk_global_backspace = false
end


if windows_text_input_stream == "" then

else

notepad_text = notepad_text .. windows_text_input_stream
notepad_chars = notepad_chars + 1
windows_text_input_stream = ""


end



end




function notepad_text_editor_lua()

print(windows_application_position_x[7]-85, windows_application_position_y[7]+10,0.4,notepad_text,grey)



if windows_vk_global_enter == true then
notepad_text = notepad_text .. "\n"
notepad_chars = notepad_chars + 1
windows_vk_global_enter = false
end

if windows_vk_global_backspace == true then

notepad_text = string.sub(notepad_text,0,notepad_chars-1)
notepad_chars = notepad_chars -1
windows_vk_global_backspace = false
end


if windows_text_input_stream == "" then

else

notepad_text = notepad_text .. windows_text_input_stream
notepad_chars = notepad_chars + 1
windows_text_input_stream = ""


end


if string.find(notepad_text,"if") then

print(windows_application_position_x[7]-85+notepad_chars+0.4, windows_application_position_y[7]+10,0.4,"if",green)

end



end







function notepad_init()



local application_name = "Notepad"
local application_color_1 = windows_background_color
local application_color_2 = windows_highlight_color




application_focus_bar(windows_application_position_x[7]-70, windows_application_position_y[7]-70, 640, 17,application_name, 7)

if application_focus_button(windows_application_position_x[7]+510, windows_application_position_y[7]-70, 30, 17, "exit", 7) == true then

notepad = false
windows_application_position_x[7] = 100
windows_application_position_y[7] = 100 - 70

end

if application_focus_button(windows_application_position_x[7]+480, windows_application_position_y[7]-70, 30, 17, "maximize", 7) == true then

windows_application_position_x[7] = 100
windows_application_position_y[7] = 100 - 70

end

if application_focus_button(windows_application_position_x[7]+460, windows_application_position_y[7]-70, 70, 17, "minimize", 7) == true then

windows_application_position_x[7] = 1000

end

if notepad_menu == "home" then
windows_background(windows_application_position_x[7]-100, windows_application_position_y[7]-1, 640,448, "box", application_color_1, application_name, 7)
else
windows_background(windows_application_position_x[7]-100, windows_application_position_y[7]-1, 640,448, "box", notepad_edit_background_color, application_name, 7)

end


if notepad_menu == "home" then

notepad_home()

end


if notepad_menu == "text_ed" then

if notepad_syntax == "none" then

notepad_text_editor_basic()

end

if notepad_syntax == "lua" then

notepad_text_editor_lua()

end





end


notepad_GraphicalMemoryHandlingLogic(notepad)

end
