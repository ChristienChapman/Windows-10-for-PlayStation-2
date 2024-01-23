-- All glory to God, Jesus Christ, and the Holy Spirit.


explorer = false
explorer_active_explorer_directory = ""
snapshot_explorer_explorer_directory = {}
snapshot_explorer_count = 0
explorer_directories_enumerated = false
explorer_selection = ""
explorer_selection_id = 0
explorer_selection_made = false





local get_keyboard_vk_process = false


local function back(menu)


if windows_key_pressed() == "WINDOWS_VK_CIRCLE" then

if menu == "exit" then
--load_drive_cycles = 0
--explorer = false
else
snapshot_explorer_count = snapshot_explorer_count -1
explorer_active_explorer_directory = snapshot_explorer_explorer_directory[snapshot_explorer_count]

end

end

end





windows_application_position_y[2] = windows_application_position_y[2] - 70


System.clearNumberOfDirectories()
local option = 1
local speed = 1
local numberOfOptions = 0
local suboption = 1
local numberOfSubOptions = 7
local listdir = System.listDirectory_NoUpdate(System.currentDirectory())
local explorer_directory = System.currentDirectory()
local dot_cycle = 0
local dot = ""
local input = ""
local type = ""
local space = ""
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
local imageViewer = nil
local imageMode = false
local musicMode = false
local loadMode = false
local musicProc = 0
local loadProc = 0
local public_elf = ""
local load_image = Graphics.loadImage("System/buffer.png")
local load_image_cycle = 0
local image_refresh_rate = 0
local load_drive_cycles = 0
local explorer_random_song = 0
local explorer_graphical_memory_logic = 0
enceladus_os = "System/system.lua"


if explorer_directory == "mass:" then
explorer_directory = "mass:\\"
end




explorer_directory_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/directory.png")
explorer_file_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/file.png")
explorer_image_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/image.png")
explorer_music_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/music.png")
explorer_usb_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/usb.png")
explorer_documents_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/documents.png")
explorer_music_dir_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/music_dir.png")
explorer_pictures_dir_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/pictures_dir.png")
explorer_shuffle = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/shuffle.png")



register_desktop_icon("Explorer", explorer_directory_icon, "explorer")


local function explorer_GraphicalMemoryHandlingLogic(check)


if check == false then

if explorer_graphical_memory_logic == 0 then
explorer_file_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_image_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_music_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_usb_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_documents_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_music_dir_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_pictures_dir_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_shuffle = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
explorer_graphical_memory_logic = 1
end







end



if check == true then



if explorer_graphical_memory_logic == 1 then
explorer_file_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/file.png")
explorer_image_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/image.png")
explorer_music_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/music.png")
explorer_usb_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/usb.png")
explorer_documents_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/documents.png")
explorer_music_dir_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/music_dir.png")
explorer_pictures_dir_icon = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/pictures_dir.png")
explorer_shuffle = Graphics.loadImage("System/Windows10/ProgramData/explorer/general_icons/shuffle.png")

explorer_graphical_memory_logic = 0
end

end




end



local function explorer_getFileIcon(source, posx, posy)


if string.lower(GetFileExtension(source)) == "." .. string.lower(source) then

draw_image(explorer_directory_icon, windows_application_position_x[2]-posx, windows_application_position_y[2]+posy)

else

if string.lower(GetFileExtension(source)) == ".png" then

draw_image(explorer_image_icon, windows_application_position_x[2]-posx, windows_application_position_y[2]+posy)


else

if string.lower(GetFileExtension(source)) == ".jpg" then

draw_image(explorer_image_icon, windows_application_position_x[2]-posx, windows_application_position_y[2]+posy)


else

if string.lower(GetFileExtension(source)) == ".wav" then

draw_image(explorer_music_icon, windows_application_position_x[2]-posx, windows_application_position_y[2]+posy)


else

draw_image(explorer_file_icon, windows_application_position_x[2]-posx, windows_application_position_y[2]+posy)


end
end
end
end



end

local function explorer_update_input(update_input)


if isDirInit == 0 then
input = update_input
else
input = "\\" .. update_input
end

end




local function explorer_getDir(dir)
snapshot_explorer_count = snapshot_explorer_count+1
snapshot_explorer_explorer_directory[snapshot_explorer_count] = explorer_directory
option = 1
System.clearNumberOfDirectories()
explorer_directory = explorer_directory .. dir 
listdir = System.listDirectory(explorer_directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
 
  
  
  --System.currentDirectory()
  
  end
  
  
  
local function explorer_previousDir(dir)
snapshot_explorer_count = snapshot_explorer_count-1
option = 1
System.clearNumberOfDirectories()
explorer_directory = dir
listdir = System.listDirectory(explorer_directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
 
  
  
  --System.currentDirectory()
  
  end
  
  
  
  local function explorer_display(image)

imageMode = true
load_image = Graphics.loadImage(image)


end






local function explorer_update_display()

Screen.clear()





draw_image_scale(load_image, 0,0,640,448)

end









local function explorer_image(image, posx, posy)

Graphics.drawImage(image, posx, posy)


end



function explorer_play_wav(wav)

getAlbumCover(public_wav,true)






end




local function explorer_getFileSystemFunctions(local_input)

if windows_debug_mode == true then
Font.fmPrint(windows_application_position_x[2]-100, 350, 0.8,  GetFileExtension(string.lower(local_input)), blue)
end

if GetFileExtension(string.lower(local_input)) == ".elf" then

if GetFileName(string.lower(local_input)) == "swbfront.elf" then

windows_taskbar_active = false
load_image = Graphics.loadImage("System/Windows10/ProgramData/explorer/watermarks/SWBFRONT.jpg")
public_elf = explorer_directory .. input
loadMode = true

end

if GetFileName(string.lower(local_input)) == "swbfrnt2.elf" then

windows_taskbar_active = false
load_image = Graphics.loadImage("System/Windows10/ProgramData/explorer/watermarks/SWBFRNT2.jpg")
public_elf = explorer_directory .. input
loadMode = true

end

if loadMode == false then

loadELF(explorer_directory .. input)

end



end

if GetFileExtension(string.lower(local_input)) == ".exe" then

dofile(explorer_directory .. input)

end

if GetFileExtension(string.lower(local_input)) == ".lua" then

dofile(explorer_directory .. input)

end

if GetFileExtension(string.lower(local_input)) == ".cmd" then

dofile(explorer_directory .. input)

end

if GetFileExtension(string.lower(local_input)) == ".bat" then

dofile(explorer_directory .. input)

end

if GetFileExtension(string.lower(local_input)) == ".png" then

explorer_display(explorer_directory .. input)
imageMode = true

end



if GetFileExtension(string.lower(local_input)) == ".jpg" then

explorer_display(explorer_directory .. input)
imageMode = true

end



if GetFileExtension(string.lower(local_input)) == ".wav" then

public_wav = explorer_directory .. input
explorer_play_wav(explorer_directory .. input)


end

if GetFileExtension(string.lower(local_input)) == "." .. string.lower(local_input) then

explorer_getDir(input)

end

end








local function explorer_play_sound(wav)

Sound.playWav(System.currentDirectory() .. "System/sounds/" .. wav .. ".wav")
Sound.playWav(System.currentDirectory() .. "System/sounds/" .. "dummy" .. ".wav")

end






Font.fmLoad()


function explorer_ui()

local application_color_1 = windows_background_color
local application_color_2 = grey
local application_x_pos = -180
local application_y_pos = 10
-- OS functions always running
if windows_debug_mode == true then
Font.fmPrint(windows_application_position_x[2]+170, 350, 0.8, "explorer_directory " .. explorer_directory, blue)
Font.fmPrint(windows_application_position_x[2]+170, 380, 0.8, "input " .. input, red)
Font.fmPrint(windows_application_position_x[2]+170, 400, 0.8, "option " .. option .. "/" .. numberOfOptions, green)

end

if imageMode == false or songMode == false then


  
  numberOfDirectories = System.getNumberOfDirectories()
  numberOfOptions = numberOfDirectories+1
  dot_cycle = dot_cycle + 1 / 8

  
  
  if dot_cycle == 1 then
  
  dot = ""
  space = " "
  end
  
  if dot_cycle == 2 then
  
  dot = "_"
  space = ""
  end
  
  if dot_cycle == 3 then
  
  dot = ""
  space = " "
  end
  
  if dot_cycle == 4 then
  
  dot = ""
  space = " "
  end
  
  if dot_cycle > 6 then
  
  dot_cycle = 0
  end
  
  
  if suboption == 1 then
  type = "loadLua"
  end
  
   if suboption == 2 then
  type = "loadPXBE"
  end
  
   if suboption == 3 then
  type = "loadELF"
  end
  
  if suboption == 4 then
  type = "loadImage"
  end
  
   if suboption == 5 then
  type = "loadWav"
  end
  
  if suboption == 6 then
  type = "loadDirectory"
  end
  
  
  
  
  
  
 
 






back("exit")







if windows_button(windows_application_position_x[2]-application_x_pos+180, windows_application_position_y[2]+application_y_pos+20, 20, 20, "box", application_color_1, application_color_2, "", false, 2) then


if snapshot_explorer_count == 0 then

else
explorer_previousDir(snapshot_explorer_explorer_directory[snapshot_explorer_count])
end

end

Font.fmPrint(windows_application_position_x[2]-application_x_pos+180, windows_application_position_y[2]+application_y_pos+20, 0.45, "<-", white)





if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+20, 180, 20, "box", application_color_1, application_color_2, "", false, 2) then

 option = option -speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end




if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
  
  

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+20, 0.45, "         /\\", white)


dir1 = listdir[option].name

explorer_getFileIcon(dir1, -165, application_y_pos+40)

if windows_active_highlight == "explorer_id_0" then

explorer_update_input(dir1)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+40, 180, 20, "box", application_color_1, application_color_2, "explorer_id_0", true, 2) then




explorer_getFileSystemFunctions(dir1)


end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+40, 0.45, dir1, white)

if option+1 < numberOfOptions then



dir2 = listdir[option+1].name

explorer_getFileIcon(dir2, -165, application_y_pos+60)

if windows_active_highlight == "explorer_id_1" then

explorer_update_input(dir2)


end



if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+60, 180, 20, "box", application_color_1, application_color_2, "explorer_id_1", true, 2) then


explorer_getFileSystemFunctions(dir2)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+60, 0.45, dir2, white)
end

if option+2 < numberOfOptions then
dir3 = listdir[option+2].name

explorer_getFileIcon(dir3, -165, application_y_pos+80)

if windows_active_highlight == "explorer_id_2" then

explorer_update_input(dir3)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+80, 180, 20, "box", application_color_1, application_color_2, "explorer_id_2", true, 2) then


explorer_getFileSystemFunctions(dir3)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+80, 0.45, dir3, white)
end

if option+3 < numberOfOptions then
dir4 = listdir[option+3].name

explorer_getFileIcon(dir4, -165, application_y_pos+100)

if windows_active_highlight == "explorer_id_3" then

explorer_update_input(dir4)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+100, 180, 20, "box", application_color_1, application_color_2, "explorer_id_3", true, 2) then


explorer_getFileSystemFunctions(dir4)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+100, 0.45, dir4, white)
end

if option+4 < numberOfOptions then
dir5 = listdir[option+4].name

explorer_getFileIcon(dir5, -165, application_y_pos+120)

if windows_active_highlight == "explorer_id_4" then

explorer_update_input(dir5)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+120, 180, 20, "box", application_color_1, application_color_2, "explorer_id_4", true, 2) then


explorer_getFileSystemFunctions(dir5)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+120, 0.45, dir5, white)
end

if option+5 < numberOfOptions then
dir6 = listdir[option+5].name

explorer_getFileIcon(dir6, -165, application_y_pos+140)

if windows_active_highlight == "explorer_id_5" then

explorer_update_input(dir6)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+140, 180, 20, "box", application_color_1, application_color_2, "explorer_id_5", true, 2) then


explorer_getFileSystemFunctions(dir6)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+140, 0.45, dir6, white)
end

if option+6 < numberOfOptions then
dir7 = listdir[option+6].name

explorer_getFileIcon(dir7, -165, application_y_pos+160)

if windows_active_highlight == "explorer_id_6" then

explorer_update_input(dir7)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+160, 180, 20, "box", application_color_1, application_color_2, "explorer_id_6", true, 2) then


explorer_getFileSystemFunctions(dir7)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+160, 0.45, dir7, white)
end

if option+7 < numberOfOptions then
dir8 = listdir[option+7].name

explorer_getFileIcon(dir8, -165, application_y_pos+180)

if windows_active_highlight == "explorer_id_7" then

explorer_update_input(dir8)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+180, 180, 20, "box", application_color_1, application_color_2, "explorer_id_7", true, 2) then


explorer_getFileSystemFunctions(dir8)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+180, 0.45, dir8, white)
end

if option+8 < numberOfOptions then
dir9 = listdir[option+8].name

explorer_getFileIcon(dir9, -165, application_y_pos+200)

if windows_active_highlight == "explorer_id_8" then

explorer_update_input(dir9)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+200, 180, 20, "box", application_color_1, application_color_2, "explorer_id_8", true, 2) then


explorer_getFileSystemFunctions(dir9)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+200, 0.45, dir9, white)
end

if option+9 < numberOfOptions then
dir10 = listdir[option+9].name

explorer_getFileIcon(dir10, -165, application_y_pos+220)

if windows_active_highlight == "explorer_id_9" then

explorer_update_input(dir10)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+220, 180, 20, "box", application_color_1, application_color_2, "explorer_id_9", true, 2) then


explorer_getFileSystemFunctions(dir10)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+220, 0.45, dir10, white)
end

if option+10 < numberOfOptions then
dir11 = listdir[option+10].name

explorer_getFileIcon(dir11, -165, application_y_pos+240)

if windows_active_highlight == "explorer_id_10" then

explorer_update_input(dir11)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+240, 180, 20, "box", application_color_1, application_color_2, "explorer_id_10", true, 2) then


explorer_getFileSystemFunctions(dir11)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+240, 0.45, dir11, white)
end

if option+11 < numberOfOptions then
dir12 = listdir[option+11].name

explorer_getFileIcon(dir12, -165, application_y_pos+260)

if windows_active_highlight == "explorer_id_11" then

explorer_update_input(dir12)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+260, 180, 20, "box", application_color_1, application_color_2, "explorer_id_11", true, 2) then


explorer_getFileSystemFunctions(dir12)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+260, 0.45, dir12, white)
end

if option+12 < numberOfOptions then
dir13 = listdir[option+12].name

explorer_getFileIcon(dir13, -165, application_y_pos+280)

if windows_active_highlight == "explorer_id_12" then

explorer_update_input(dir13)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+280, 180, 20, "box", application_color_1, application_color_2, "explorer_id_12", true, 2) then


explorer_getFileSystemFunctions(dir13)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+280, 0.45, dir13, white)
end

if option+13 < numberOfOptions then
dir14 = listdir[option+13].name

explorer_getFileIcon(dir14, -165, application_y_pos+300)

if windows_active_highlight == "explorer_id_13" then

explorer_update_input(dir14)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+300, 180, 20, "box", application_color_1, application_color_2, "explorer_id_13", true, 2) then


explorer_getFileSystemFunctions(dir4)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+300, 0.45, dir14, white)
end

if option+14 < numberOfOptions then
dir15 = listdir[option+14].name

explorer_getFileIcon(dir15, -165, application_y_pos+320)

if windows_active_highlight == "explorer_id_14" then

explorer_update_input(dir15)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+320, 180, 20, "box", application_color_1, application_color_2, "explorer_id_14", true, 2) then


explorer_getFileSystemFunctions(dir15)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+320, 0.45, dir15, white)
end

if option+15 < numberOfOptions then
dir16 = listdir[option+15].name

explorer_getFileIcon(dir16, -165, application_y_pos+340)

if windows_active_highlight == "explorer_id_15" then

explorer_update_input(dir16)


end

if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+340, 180, 20, "box", application_color_1, application_color_2, "explorer_id_15", true, 2) then


explorer_getFileSystemFunctions(dir16)

end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+340, 0.45, dir16, white)
end




if windows_button(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+360, 180, 20, "box", application_color_1, application_color_2, "explorer_id_16", false) then

  option = option +speed
  
  if option <= 0 then
    
    option = 1
  
  
end



if option >= numberOfOptions then
  
  option = 1
  
end




end
Font.fmPrint(windows_application_position_x[2]-application_x_pos, windows_application_position_y[2]+application_y_pos+360, 0.45, "         \\/", white)





-- side bar
windows_background(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos-10, 260, 448, "box", black, "explorer", 2)

if windows_button(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos+40, 180, 20, "box", black, application_color_2, "", true, 2) then


option = 1
System.clearNumberOfDirectories()
explorer_directory = System.currentDirectory()
listdir = System.listDirectory(System.currentDirectory())
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""

end

draw_image(explorer_usb_icon, windows_application_position_x[2]-100, windows_application_position_y[2]+application_y_pos+40)
Font.fmPrint(windows_application_position_x[2]-100+20, windows_application_position_y[2]+application_y_pos+40, 0.45, "Mass USB Drive", white)

CDCheck = System.checkDiscTray()
if CDCheck == 0 then

if windows_button(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos+60, 180, 20, "box", black, application_color_2, "", true, 2) then


option = 1
System.clearNumberOfDirectories()
explorer_directory = "cdfs:/"
listdir = System.listDirectory("cdfs:/")
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""

end

draw_image(explorer_usb_icon, windows_application_position_x[2]-100, windows_application_position_y[2]+application_y_pos+60)
Font.fmPrint(windows_application_position_x[2]-100+20, windows_application_position_y[2]+application_y_pos+60, 0.45, "CDFS CD Drive", white)

end

if load_drive_cycles <= 100 then

load_drive_cycles = load_drive_cycles + 1

end

if load_drive_cycles >= 30 then
if windows_button(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos+80, 180, 20, "box", black, application_color_2, "", true, 2) then


option = 1
System.clearNumberOfDirectories()
explorer_directory = "mc0:/"
listdir = System.listDirectory("mc0:/")
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""

end

draw_image(explorer_usb_icon, windows_application_position_x[2]-100, windows_application_position_y[2]+application_y_pos+80)
Font.fmPrint(windows_application_position_x[2]-100+20, windows_application_position_y[2]+application_y_pos+80, 0.45, "Memory Card Slot 1", white)
end



if load_drive_cycles >= 60 then
if windows_button(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos+100, 180, 20, "box", black, application_color_2, "", true, 2) then


option = 1
System.clearNumberOfDirectories()
explorer_directory = "mc1:/"
listdir = System.listDirectory("mc1:/")
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""

end

draw_image(explorer_usb_icon, windows_application_position_x[2]-100, windows_application_position_y[2]+application_y_pos+100)
Font.fmPrint(windows_application_position_x[2]-100+20, windows_application_position_y[2]+application_y_pos+100, 0.45, "Memory Card Slot 2", white)
end


if load_drive_cycles >= 65 then
if windows_button(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos+120, 180, 20, "box", black, application_color_2, "", true, 2) then


option = 1
System.clearNumberOfDirectories()
explorer_directory = "System/Windows10/UserData/Pictures"
listdir = System.listDirectory("System/Windows10/UserData/Pictures")
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""

end

draw_image(explorer_pictures_dir_icon, windows_application_position_x[2]-100, windows_application_position_y[2]+application_y_pos+120)
Font.fmPrint(windows_application_position_x[2]-100+20, windows_application_position_y[2]+application_y_pos+120, 0.45, "Pictures", white)
end




if load_drive_cycles >= 70 then
if windows_button(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos+140, 180, 20, "box", black, application_color_2, "", true, 2) then


option = 1
System.clearNumberOfDirectories()
explorer_directory = "System/Windows10/UserData/Music"
listdir = System.listDirectory("System/Windows10/UserData/Music")
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""

end

draw_image(explorer_music_dir_icon, windows_application_position_x[2]-100, windows_application_position_y[2]+application_y_pos+140)
Font.fmPrint(windows_application_position_x[2]-100+20, windows_application_position_y[2]+application_y_pos+140, 0.45, "Music", white)
end



if load_drive_cycles >= 75 then
if windows_button(windows_application_position_x[2]-application_x_pos-280, windows_application_position_y[2]+application_y_pos+160, 180, 20, "box", black, application_color_2, "", true, 2) then


option = 1
System.clearNumberOfDirectories()
explorer_directory = "System/Windows10/UserData/Documents"
listdir = System.listDirectory("System/Windows10/UserData/Documents")
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""

end

draw_image(explorer_documents_icon, windows_application_position_x[2]-100, windows_application_position_y[2]+application_y_pos+160)
Font.fmPrint(windows_application_position_x[2]-100+20, windows_application_position_y[2]+application_y_pos+160, 0.45, "Documents", white)
end










if GetFileName(explorer_directory) == "Pictures" then
image_refresh_rate = image_refresh_rate + 1

if image_refresh_rate == 50 then
load_image_cycle = 0
image_refresh_rate = 0


end




if GetFileName(explorer_directory) == "System32" then

windows_security_return = 1


end


if windows_active_highlight == "" then

else
if load_image_cycle == 0 then

if windows_active_highlight == "explorer_id_0" then

if GetFileExtension(dir1) == ".png" or GetFileExtension(dir1) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir1)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_1" then

if GetFileExtension(dir2) == ".png" or GetFileExtension(dir2) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir2)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_2" then

if GetFileExtension(dir3) == ".png" or GetFileExtension(dir3) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir3)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_3" then

if GetFileExtension(dir4) == ".png" or GetFileExtension(dir4) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir4)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_4" then

if GetFileExtension(dir5) == ".png" or GetFileExtension(dir5) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir5)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_5" then

if GetFileExtension(dir6) == ".png" or GetFileExtension(dir6) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir6)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_6" then

if GetFileExtension(dir7) == ".png" or GetFileExtension(dir7) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir7)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_7" then

if GetFileExtension(dir8) == ".png" or GetFileExtension(dir8) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir8)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_8" then

if GetFileExtension(dir9) == ".png" or GetFileExtension(dir9) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir9)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_9" then

if GetFileExtension(dir10) == ".png" or GetFileExtension(dir10) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir10)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_10" then

if GetFileExtension(dir11) == ".png" or GetFileExtension(dir11) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir11)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_11" then

if GetFileExtension(dir12) == ".png" or GetFileExtension(dir12) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir12)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_12" then

if GetFileExtension(dir13) == ".png" or GetFileExtension(dir13) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir13)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_13" then

if GetFileExtension(dir14) == ".png" or GetFileExtension(dir14) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir14)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_14" then

if GetFileExtension(dir15) == ".png" or GetFileExtension(dir15) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir15)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_15" then

if GetFileExtension(dir16) == ".png" or GetFileExtension(dir16) == ".jpg" then
load_image = Graphics.loadImage(explorer_directory .. "\\" .. dir16)
load_image_cycle = 1
end
end




end
end


draw_image_scale(load_image,windows_application_position_x[2]-50, windows_application_position_y[2]+200,150,150)



end











if GetFileName(explorer_directory) == "Music" then

--print(windows_application_position_x[2]-100, windows_application_position_y[2]+340,0.6,"Music controls",white)


image_refresh_rate = image_refresh_rate + 1

if image_refresh_rate == 50 then
load_image_cycle = 0
image_refresh_rate = 0


end







if windows_active_highlight == "" then

else
if load_image_cycle == 0 then



if windows_active_highlight == "explorer_id_0" then
if GetFileExtension(dir1) == ".wav" then
getAlbumCover(dir1,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_1" then

if GetFileExtension(dir2) == ".wav" then
getAlbumCover(dir2,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_2" then

if GetFileExtension(dir3) == ".wav" then
getAlbumCover(dir3,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_3" then

if GetFileExtension(dir4) == ".wav" then
getAlbumCover(dir4,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_4" then

if GetFileExtension(dir5) == ".wav" then
getAlbumCover(dir5,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_5" then

if GetFileExtension(dir6) == ".wav" then
getAlbumCover(dir6,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_6" then

if GetFileExtension(dir7) == ".wav" then
getAlbumCover(dir7,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_7" then

if GetFileExtension(dir8) == ".wav" then
getAlbumCover(dir8,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_8" then

if GetFileExtension(dir9) == ".wav" then
getAlbumCover(dir9,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_9" then

if GetFileExtension(dir10) == ".wav" then
getAlbumCover(dir10,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_10" then

if GetFileExtension(dir11) == ".wav" then
getAlbumCover(dir11,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_11" then

if GetFileExtension(dir12) == ".wav" then
getAlbumCover(dir12,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_12" then

if GetFileExtension(dir13) == ".wav" then
getAlbumCover(dir13,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_13" then

if GetFileExtension(dir14) == ".wav" then
getAlbumCover(dir14,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_14" then

if GetFileExtension(dir15) == ".wav" then
getAlbumCover(dir15,false)
load_image_cycle = 1
end
end

if windows_active_highlight == "explorer_id_15" then

if GetFileExtension(dir16) == ".wav" then
getAlbumCover(dir16,false)
load_image_cycle = 1
end
end








end
end


--if windows_button(windows_application_position_x[2]-100, windows_application_position_y[2]+360, 20, 20, "image", explorer_shuffle, application_color_2, "", true, 2) then
--explorer_random_song = math.random(1,16)



--end


if explorer_random_song == 1 then
public_wav = dir1
explorer_play_wav(dir1)
explorer_random_song = 0
end

if explorer_random_song == 2 then
public_wav = dir2
explorer_play_wav(dir2)
explorer_random_song = 0
end

if explorer_random_song == 3 then
public_wav = dir3
explorer_play_wav(dir3)
explorer_random_song = 0
end

if explorer_random_song == 4 then
public_wav = dir4
explorer_play_wav(dir4)
explorer_random_song = 0
end

if explorer_random_song == 5 then
public_wav = dir5
explorer_play_wav(dir5)
explorer_random_song = 0
end

if explorer_random_song == 6 then
public_wav = dir6
explorer_play_wav(dir6)
explorer_random_song = 0
end

if explorer_random_song == 7 then
public_wav = dir7
explorer_play_wav(dir7)
explorer_random_song = 0
end


if explorer_random_song == 8 then
public_wav = dir8
explorer_play_wav(dir8)
explorer_random_song = 0
end


if explorer_random_song == 9 then
public_wav = dir9
explorer_play_wav(dir9)
explorer_random_song = 0
end


if explorer_random_song == 10 then
public_wav = dir10
explorer_play_wav(dir10)
explorer_random_song = 0
end


if explorer_random_song == 11 then
public_wav = dir11
explorer_play_wav(dir11)
explorer_random_song = 0
end



if explorer_random_song == 12 then
public_wav = dir12
explorer_play_wav(dir12)
explorer_random_song = 0
end



if explorer_random_song == 13 then
public_wav = dir13
explorer_play_wav(dir13)
explorer_random_song = 0
end



if explorer_random_song == 14 then
public_wav = dir14
explorer_play_wav(dir14)
explorer_random_song = 0
end

if explorer_random_song == 15 then
public_wav = dir15
explorer_play_wav(dir15)
explorer_random_song = 0
end



if explorer_random_song == 16 then
public_wav = dir16
explorer_play_wav(dir16)
explorer_random_song = 0
end


draw_image_scale(load_album_cover,windows_application_position_x[2]-50, windows_application_position_y[2]+200,150,150)



end









end


if songMode == true then

musicProc = musicProc + 1
song_title_found = false

draw_image_scale(load_album_cover, 0,0,640,448)
draw_image_scale(login_screen_background, 0,0,640,448)
Graphics.drawImage(load_album_cover, 360,171)
print(20,340,0.6,public_song_name,white)
print(20,360,0.6,public_artist,white)


if musicProc == 2 then
playWav(public_wav,windows_frequency)
musicProc = 0
songMode = false
end

end


if loadMode == true then

loadProc = loadProc + 1

Screen.clear()
Graphics.drawImage(load_image, 0,0)


if loadProc == 100 then
loadELF(public_elf)
end

end





if imageMode == true then



explorer_update_display()


if windows_key_pressed("WINDOWS_VK_CIRCLE") then
System.sleep(1)


imageMode = false


explorer_play_sound("exit")


end
end




end



local function check_windows_vk_status()

if get_keyboard_vk_process == true then

get_keyboard_vk_process = false
else
get_keyboard_vk_process = true

end

end



function explorer_init()



local application_name = "Explorer"
local application_color_1 = windows_background_color
local application_color_2 = windows_highlight_color








application_focus_bar(windows_application_position_x[2]-20, windows_application_position_y[2]-20, 640, 17,application_name, 2)

if application_focus_button(windows_application_position_x[2]+510, windows_application_position_y[2]-20, 30, 17, "exit", 2) == true then

explorer = false
explorer_directories_enumerated = false
windows_application_position_x[2] = 100
windows_application_position_y[2] = 100 - 70

end

if application_focus_button(windows_application_position_x[2]+480, windows_application_position_y[2]-20, 30, 17, "maximize", 2) == true then

windows_application_position_x[2] = 100
windows_application_position_y[2] = 100 - 70

end

if application_focus_button(windows_application_position_x[2]+460, windows_application_position_y[2]-20, 20, 17, "minimize", 2) == true then

windows_application_position_x[2] = 1000

end

windows_background(windows_application_position_x[2]-100, windows_application_position_y[2]-1, 640, 448, "box", application_color_1, application_name, 2)



if explorer == true then

if explorer_directories_enumerated == false then

System.clearNumberOfDirectories()
explorer_getDir("")
explorer_directories_enumerated = true

end

end


explorer_ui()
windows_draw_right_bar()
if explorer_selection_made == false then
if windows_draw_right_bar_button("New Folder", 10) == true then
createDirectory(explorer_directory .. "/New Folder")
option = 1
System.clearNumberOfDirectories()
listdir = System.listDirectory(explorer_directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""
end
end

if explorer_selection_made == true then
if windows_draw_right_bar_button("Rename", 10) == true then

renameDirectory(explorer_directory .. input, explorer_directory .. "/" .. windows_text_input_stream)
option = 1
System.clearNumberOfDirectories()
listdir = System.listDirectory(explorer_directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
input = ""








end


if windows_draw_right_bar_button("Delete", 40) == true then
removeDirectory(explorer_directory .. input)
end
end

if windows_key_pressed() == "WINDOWS_VK_R1" then


 windows_right_bar_status()



end


if windows_key_pressed() == "WINDOWS_VK_CIRCLE" then

if snapshot_explorer_count == 0 then

else
explorer_previousDir(snapshot_explorer_explorer_directory[snapshot_explorer_count])
end

end


if windows_key_pressed() == "WINDOWS_VK_SQUARE" then



if windows_active_highlight == "explorer_id_0" then

explorer_selection = explorer_directory .. "/" .. dir1
explorer_selection_made = true
explorer_selection_id = 1

end

if windows_active_highlight == "explorer_id_1" then
explorer_selection = explorer_directory .. "/" .. dir2
explorer_selection_made = true
explorer_selection_id = 2
end

if windows_active_highlight == "explorer_id_2" then

explorer_selection = explorer_directory .. "/" .. dir3
explorer_selection_made = true
explorer_selection_id = 3
end

if windows_active_highlight == "explorer_id_3" then

explorer_selection = explorer_directory .. "/" .. dir4
explorer_selection_made = true
explorer_selection_id = 4

end

if windows_active_highlight == "explorer_id_4" then

explorer_selection = explorer_directory .. "/" .. dir5
explorer_selection_made = true
explorer_selection_id = 5
end

if windows_active_highlight == "explorer_id_5" then

explorer_selection = explorer_directory .. "/" .. dir6
explorer_selection_made = true
explorer_selection_id = 6
end

if windows_active_highlight == "explorer_id_6" then

explorer_selection = explorer_directory .. "/" .. dir7
explorer_selection_made = true
explorer_selection_id = 7
end

if windows_active_highlight == "explorer_id_7" then

explorer_selection = explorer_directory .. "/" .. dir8
explorer_selection_made = true
explorer_selection_id = 8
end

if windows_active_highlight == "explorer_id_8" then

explorer_selection = explorer_directory .. "/" .. dir9
explorer_selection_made = true
explorer_selection_id = 9
end

if windows_active_highlight == "explorer_id_9" then

explorer_selection = explorer_directory .. "/" .. dir10
explorer_selection_made = true
explorer_selection_id = 10
end

if windows_active_highlight == "explorer_id_10" then

explorer_selection = explorer_directory .. "/" .. dir11
explorer_selection_made = true
explorer_selection_id = 11
end

if windows_active_highlight == "explorer_id_11" then

explorer_selection = explorer_directory .. "/" .. dir12
explorer_selection_made = true
explorer_selection_id = 12
end

if windows_active_highlight == "explorer_id_12" then

explorer_selection = explorer_directory .. "/" .. dir13
explorer_selection_made = true
explorer_selection_id = 13
end

if windows_active_highlight == "explorer_id_13" then

explorer_selection = explorer_directory .. "/" .. dir14
explorer_selection_made = true
explorer_selection_id = 14
end

if windows_active_highlight == "explorer_id_14" then

explorer_selection = explorer_directory .. "/" .. dir15
explorer_selection_made = true
explorer_selection_id = 15
end

if windows_active_highlight == "explorer_id_15" then

explorer_selection = explorer_directory .. "/" .. dir16
explorer_selection_made = true
explorer_selection_id = 16
end


end


if explorer_selection_id == 1 then

Graphics.drawRect(windows_application_position_x[2]-180, windows_application_position_y[2]+10+40, 180, 20, transparent_grey)


end


if get_keyboard_vk_process == true then

windows_vk_init()
end






explorer_GraphicalMemoryHandlingLogic(explorer)




end






