-- All glory to God, Jesus Christ, and the Holy Spirit.



cmd = false
local option = 1
local speed = 1
local numberOfOptions = 0
local suboption = 1
local numberOfSubOptions = 7
local listdir = System.listDirectory(System.currentDirectory())
local cmd_directory = System.currentDirectory()
local dot_cycle = 0
local dot = ""
local input = ""
local type = ""
local space = ""
local numberOfDirectories = 0
local isDirInit = 1
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
local init = -1
local currentPrintPosition = 0
local cmd_text_color = white
local cmd_background_color = black
local p = 0
local syntax_invalid = false
local public_syntax = ""
local command_prompt_title = "Command Prompt"
local cmd_directories_enumerated = false

cmd_print_memory = {}

for i=1,39 do
cmd_print_memory[i] = ""
end


cmd_icon = Graphics.loadImage("System/Windows10/ProgramData/cmd/cmd_icon.jpg")
register_desktop_icon("Command Prompt", cmd_icon, "cmd")


windows_application_position_y[5] = windows_application_position_y[5] - 70







local function cmd_getDir(dir)

option = 1
System.clearNumberOfDirectories()
cmd_directory = cmd_directory .. dir 
listdir = System.listDirectory(cmd_directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories+1
 
  
  
  --System.currentDirectory()
  
  end
  

	
	
	
	
local function cmd_update_input(update_input)


if isDirInit == 0 then
input = update_input
else
input = "\\" .. update_input
end

end


local function cmd_getCurrentDirectory()


return windows_drive .. "\\Users\\" .. windows_username .. "\\" .. cmd_directory

end


local function cmd_getCommands(in_syntax)









if string.sub(in_syntax,0,4) == "echo" then

cmd_print_memory[currentPrintPosition+1] = string.sub(in_syntax,6)

public_syntax = "echo"
return "ret"
end


if string.sub(in_syntax,0,7) == "regedit" then

regedit = true
public_syntax = "regedit"
return ""
end





if string.sub(in_syntax,0,7) == "cls" then

currentPrintPosition = 1
for i=1,39 do
cmd_print_memory[i] = ""
end

public_syntax = "cls"
return ""
end


if string.sub(in_syntax,0,5) == "title" then

command_prompt_title = string.sub(in_syntax,7)
return ""
end





if string.sub(in_syntax,0,9) == "debugmode" then

if windows_root_administrator_access == true then

cmd_print_memory[currentPrintPosition+1] = "Debug mode enabled."
windows_debug_mode = true

else

cmd_print_memory[currentPrintPosition+1] = "You must enable root administrator access to enable debug mode."

end

public_syntax = "debugmode"
return "ret"
end


if string.sub(in_syntax,0,7) == "control" then

settings = true

public_syntax = "control"
return ""
end

if string.sub(in_syntax,0,5) == "about" then

settings = true
settings_menu = "system_about"

return ""
end

if string.sub(in_syntax,0,8) == "settings" then

settings = true

public_syntax = "settings"
return ""
end


if string.sub(in_syntax,0,8) == "explorer" then

explorer = true


return ""
end




if string.sub(in_syntax,0,8) == "shutdown" then

if string.sub(in_syntax,10) == "" then
System.exitToBrowser()
else

if string.sub(in_syntax,10) == "/a" then

if windows_shutdown_active == true then
cmd_print_memory[currentPrintPosition+1] = "Scheduled shutdown aborted."
else
cmd_print_memory[currentPrintPosition+1] = "Unable to abort shutdown because no shutdown was scheduled."
end

windows_shutdown_active = false



else

windows_scheduled_shutdown = tonumber(string.sub(in_syntax,10))
windows_shutdown_active = true 
cmd_print_memory[currentPrintPosition+1] = "Shutdown scheduled for " .. tonumber(string.sub(in_syntax,10)) .. " cycles."


end
end

public_syntax = "shutdown"
return "ret"
end

if string.sub(in_syntax,0,3) == "run" then

 if GetFileExtension(string.sub(in_syntax,5)) == ".elf" then
 
 loadELF(string.sub(in_syntax,5))
 
 end
 
  if GetFileExtension(string.sub(in_syntax,5)) == ".lua" then
 
 dofile(string.sub(in_syntax,5))
 
 end
 public_syntax = "run"

end

if string.sub(in_syntax,0,4) == "exit" then

cmd = false
 option = 1
 speed = 1
 numberOfOptions = 0
 suboption = 1
 numberOfSubOptions = 7
 listdir = System.listDirectory(System.currentDirectory())
 cmd_directory = System.currentDirectory()
 dot_cycle = 0
 dot = ""
 input = ""
 type = ""
 space = ""
 numberOfDirectories = 0
 isDirInit = 1
 dir1 = ""
 dir2 = ""
 dir3 = ""
 dir4 = ""
 dir5 = ""
 dir6 = ""
 dir7 = ""
 dir8 = ""
 dir9 = ""
 dir10 = ""
 dir11 = ""
 init = -1
 currentPrintPosition = 0
 
 public_syntax = "exit"
 

end


if string.sub(in_syntax,0,4) == "root" then

if string.sub(in_syntax,6) == windows_password then


cmd_print_memory[currentPrintPosition+1] = "Password authenticated. Root administrator access granted."

windows_root_administrator_access = true

else
cmd_print_memory[currentPrintPosition+1] = "Incorrect password."
end

public_syntax = "root"
return "ret"

end





if string.sub(in_syntax,0,8) == "tasklist" then


if windowsvk == true then
cmd_print_memory[currentPrintPosition+1] = "windowsvk"
currentPrintPosition = currentPrintPosition + 1
end

if explorer == true then
cmd_print_memory[currentPrintPosition+1] = "explorer"
currentPrintPosition = currentPrintPosition + 1
end

if cmd == true then
cmd_print_memory[currentPrintPosition+1] = "cmd"
currentPrintPosition = currentPrintPosition + 1
end

if regedit == true then
cmd_print_memory[currentPrintPosition+1] = "regedit"
currentPrintPosition = currentPrintPosition + 1
end

if settings == true then
cmd_print_memory[currentPrintPosition+1] = "settings"
currentPrintPosition = currentPrintPosition + 1
end

public_syntax = "tasklist"
return "ret"

end



if string.sub(in_syntax,0,8) == "taskkill" then

if string.sub(in_syntax,10) == "windowsvk" then
windowsvk = false
end

if string.sub(in_syntax,10) == "regedit" then
regedit = false
end

if string.sub(in_syntax,10) == "cmd" then
cmd = false
end

if string.sub(in_syntax,10) == "explorer" then
explorer = false
end

if string.sub(in_syntax,10) == "settings" then
settings = false
end

public_syntax = "taskkill"
return "ret"

end



if string.sub(in_syntax,0,4) == "help" then

if string.sub(in_syntax,6) == "" then


cmd_print_memory[currentPrintPosition+1] = "List of commands:"
cmd_print_memory[currentPrintPosition+2] = "echo, color, run, cd, dir, exit, tasklist, taskkill, shutdown, root, control,"
cmd_print_memory[currentPrintPosition+3] = "debugmode, regedit, cls, title, explorer, settings"
cmd_print_memory[currentPrintPosition+4] = "Enter the name of the command with syntax 'help' <command> for more info."
currentPrintPosition = currentPrintPosition + 4

end




if string.sub(in_syntax,6) == "run" then

cmd_print_memory[currentPrintPosition+1] = "run <executable>"
cmd_print_memory[currentPrintPosition+2] = "Loads either elf or lua executables."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "tasklist" then

cmd_print_memory[currentPrintPosition+1] = "tasklist"
cmd_print_memory[currentPrintPosition+2] = "Prints a list of executables running."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "taskkill" then

cmd_print_memory[currentPrintPosition+1] = "taskkill <executable>"
cmd_print_memory[currentPrintPosition+2] = "Sends a termination signal to an executable."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "shutdown" then

cmd_print_memory[currentPrintPosition+1] = "shutdown <arguments>"
cmd_print_memory[currentPrintPosition+2] = "Sends a shutdown signal. Arguments can either be cycles for schedule or '/a' to abort."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "control" then

cmd_print_memory[currentPrintPosition+1] = "control"
cmd_print_memory[currentPrintPosition+2] = "Launches Settings application."
currentPrintPosition = currentPrintPosition + 2

end

if string.sub(in_syntax,6) == "settings" then

cmd_print_memory[currentPrintPosition+1] = "settings"
cmd_print_memory[currentPrintPosition+2] = "Launches Settings application."
currentPrintPosition = currentPrintPosition + 2

end



if string.sub(in_syntax,6) == "debugmode" then

cmd_print_memory[currentPrintPosition+1] = "debugmode"
cmd_print_memory[currentPrintPosition+2] = "Enables Debug Mode. Requires root administrator access."
currentPrintPosition = currentPrintPosition + 2

end




if string.sub(in_syntax,6) == "echo" then


cmd_print_memory[currentPrintPosition+1] = "echo <string>"
cmd_print_memory[currentPrintPosition+2] = "Prints the input string."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "color" then


cmd_print_memory[currentPrintPosition+1] = "color <hex_background> <hex_text>"
cmd_print_memory[currentPrintPosition+2] = "Changes the color. Receives a hexidecimal value to change background or text."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "cd" then


cmd_print_memory[currentPrintPosition+1] = "cd <cmd_directory>"
cmd_print_memory[currentPrintPosition+2] = "Changes the cmd_directory. Input is optional. You must init 'cd' before using 'dir'"
currentPrintPosition = currentPrintPosition + 2

end



if string.sub(in_syntax,6) == "dir" then


cmd_print_memory[currentPrintPosition+1] = "dir"
cmd_print_memory[currentPrintPosition+2] = "Prints a list of directories pulled from the current cmd_directory."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "exit" then


cmd_print_memory[currentPrintPosition+1] = "exit"
cmd_print_memory[currentPrintPosition+2] = "Exits Command Prompt."
currentPrintPosition = currentPrintPosition + 2

end



if string.sub(in_syntax,6) == "root" then


cmd_print_memory[currentPrintPosition+1] = "root <password>"
cmd_print_memory[currentPrintPosition+2] = "Allows the user to access root privileges. Password must be authenticated first."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "regedit" then


cmd_print_memory[currentPrintPosition+1] = "regedit"
cmd_print_memory[currentPrintPosition+2] = "Launches Registry Edit application."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "cls" then


cmd_print_memory[currentPrintPosition+1] = "cls"
cmd_print_memory[currentPrintPosition+2] = "Clears screen."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "explorer" then


cmd_print_memory[currentPrintPosition+1] = "explorer"
cmd_print_memory[currentPrintPosition+2] = "Launches Explorer application."
currentPrintPosition = currentPrintPosition + 2

end


if string.sub(in_syntax,6) == "title" then


cmd_print_memory[currentPrintPosition+1] = "title <text>"
cmd_print_memory[currentPrintPosition+2] = "Changes the application title for Command Prompt."
currentPrintPosition = currentPrintPosition + 2

end



return ""

end





if string.sub(in_syntax,0,2) == "cd" then
cmd_getDir(string.sub(in_syntax,4))
public_syntax = "cd"


end


if string.sub(in_syntax,0,3) == "ram" then

if windows_debug_mode == true then

cmd_print_memory[currentPrintPosition+1] = "Ram set to " .. string.sub(in_syntax,5)
freevram = tonumber(string.sub(in_syntax,5))


return "ret"

else

cmd_print_memory[currentPrintPosition+1] = "You must enable debug mode before using this command."

return "ret"


end

end




if string.sub(in_syntax,0,3) == "dir" then


if numberOfDirectories >= 1 then

cmd_print_memory[currentPrintPosition+1] = listdir[1].name

end

if numberOfDirectories >= 2 then

cmd_print_memory[currentPrintPosition+2] = listdir[2].name

end


if numberOfDirectories >= 3 then

cmd_print_memory[currentPrintPosition+3] = listdir[3].name

end

if numberOfDirectories >= 4 then

cmd_print_memory[currentPrintPosition+4] = listdir[4].name

end


if numberOfDirectories >= 5 then

cmd_print_memory[currentPrintPosition+5] = listdir[5].name

end


if numberOfDirectories >= 6 then

cmd_print_memory[currentPrintPosition+6] = listdir[6].name

end


if numberOfDirectories >= 7 then

cmd_print_memory[currentPrintPosition+7] = listdir[7].name

end


if numberOfDirectories >= 8 then

cmd_print_memory[currentPrintPosition+8] = listdir[8].name

end



if numberOfDirectories >= 9 then

cmd_print_memory[currentPrintPosition+9] = listdir[9].name

end




if numberOfDirectories >= 10 then

cmd_print_memory[currentPrintPosition+10] = listdir[10].name

end

if numberOfDirectories >= 11 then

cmd_print_memory[currentPrintPosition+11] = listdir[11].name

end

if numberOfDirectories >= 12 then

cmd_print_memory[currentPrintPosition+12] = listdir[12].name

end


if numberOfDirectories >= 13 then

cmd_print_memory[currentPrintPosition+13] = listdir[13].name

end

if numberOfDirectories >= 14 then

cmd_print_memory[currentPrintPosition+14] = listdir[14].name

end


if numberOfDirectories >= 15 then

cmd_print_memory[currentPrintPosition+15] = listdir[15].name

end


if numberOfDirectories >= 16 then

cmd_print_memory[currentPrintPosition+16] = listdir[16].name

end


if numberOfDirectories >= 17 then

cmd_print_memory[currentPrintPosition+17] = listdir[17].name

end


if numberOfDirectories >= 18 then

cmd_print_memory[currentPrintPosition+18] = listdir[18].name

end



if numberOfDirectories >= 19 then

cmd_print_memory[currentPrintPosition+19] = listdir[19].name

end


if numberOfDirectories >= 20 then

cmd_print_memory[currentPrintPosition+20] = listdir[20].name

end




public_syntax = "dir"
return ""
end





if string.sub(in_syntax,0,5) == "color" then

if string.sub(in_syntax,7,7) == "0" then
cmd_background_color = black
end

if string.sub(in_syntax,7,7) == "1" then
cmd_background_color = dark_blue
end

if string.sub(in_syntax,7,7) == "2" then
cmd_background_color = dark_green
end

if string.sub(in_syntax,7,7) == "3" then
cmd_background_color = aqua
end

if string.sub(in_syntax,7,7) == "4" then
cmd_background_color = dark_red
end

if string.sub(in_syntax,7,7) == "5" then
cmd_background_color = dark_purple
end

if string.sub(in_syntax,7,7) == "6" then
cmd_background_color = dark_yellow
end

if string.sub(in_syntax,7,7) == "7" then
cmd_background_color = dark_white
end

if string.sub(in_syntax,7,7) == "8" then
cmd_background_color = grey
end

if string.sub(in_syntax,7,7) == "9" then
cmd_background_color = blue
end

if string.sub(in_syntax,7,7) == "a" then
cmd_background_color = green
end

if string.sub(in_syntax,7,7) == "b" then
cmd_background_color = blue
end

if string.sub(in_syntax,7,7) == "c" then
cmd_background_color = red
end

if string.sub(in_syntax,7,7) == "d" then
cmd_background_color = purple
end

if string.sub(in_syntax,7,7) == "e" then
cmd_background_color = bright_yellow
end

if string.sub(in_syntax,7,7) == "f" then
cmd_background_color = white
end


if string.sub(in_syntax,8) == "0" then
cmd_text_color = black
end

if string.sub(in_syntax,8) == "1" then
cmd_text_color = dark_blue
end

if string.sub(in_syntax,8) == "2" then
cmd_text_color = dark_green
end

if string.sub(in_syntax,8) == "3" then
cmd_text_color = aqua
end

if string.sub(in_syntax,8) == "4" then
cmd_text_color = dark_red
end

if string.sub(in_syntax,8) == "5" then
cmd_text_color = dark_purple
end

if string.sub(in_syntax,8) == "6" then
cmd_text_color = dark_yellow
end

if string.sub(in_syntax,8) == "7" then
cmd_text_color = dark_white
end

if string.sub(in_syntax,8) == "8" then
cmd_text_color = grey
end

if string.sub(in_syntax,8) == "9" then
cmd_text_color = blue
end

if string.sub(in_syntax,8) == "a" then
cmd_text_color = green
end

if string.sub(in_syntax,8) == "b" then
cmd_text_color = blue
end

if string.sub(in_syntax,8) == "c" then
cmd_text_color = red
end

if string.sub(in_syntax,8) == "d" then
cmd_text_color = purple
end

if string.sub(in_syntax,8) == "e" then
cmd_text_color = bright_yellow
end

if string.sub(in_syntax,8) == "f" then
cmd_text_color = white
end




public_syntax = "color"

return ""
end







if  string.sub(in_syntax,0,4) == "echo" then
else 
if  string.sub(in_syntax,0,5) == "color" then
else 
if  string.sub(in_syntax,0,8) == "settings" then
else 
if  string.sub(in_syntax,0,7) == "control" then
else 
if  string.sub(in_syntax,0,8) == "shutdown" then
else 
if  string.sub(in_syntax,0,3) == "cls" then
else 
if  string.sub(in_syntax,0,3) == "run" then
else 
if  string.sub(in_syntax,0,2) == "cd" then
else
 if  string.sub(in_syntax,0,3) == "dir" then
else 
if  string.sub(in_syntax,0,4) == "exit" then
else 
if  string.sub(in_syntax,0,8) == "tasklist" then
else 
if  string.sub(in_syntax,0,8) == "taskkill" then
else 
if  string.sub(in_syntax,0,4) == "root" then
else 
if  string.sub(in_syntax,0,9) == "debugmode" then
else 
if  string.sub(in_syntax,0,7) == "regedit" then
else 
if  string.sub(in_syntax,0,8) == "explorer" then
else 
if  string.sub(in_syntax,0,3) == "vol" then
else
 if  string.sub(in_syntax,0,5) == "title" then
 else
  if  string.sub(in_syntax,0,3) == "ram" then
  else
  if  string.sub(in_syntax,0,5) == "about" then

 
 
 -- ends else if segmentation
 else
cmd_print_memory[currentPrintPosition+1] = "'" .. in_syntax .. "' is not recognized as an internal or external command."

return "ret"

end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end








end



local function cmd_ui()

windowsvk = true
local application_name = command_prompt_title
local application_color_1 = Color.new(12,12,12)
local application_color_2 = windows_highlight_color

print(windows_application_position_x[5]-90,windows_application_position_y[5],0.45,cmd_print_memory[1],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10,0.45,cmd_print_memory[2],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*2,0.45,cmd_print_memory[3],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*3,0.45,cmd_print_memory[4],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*4,0.45,cmd_print_memory[5],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*5,0.45,cmd_print_memory[6],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*6,0.45,cmd_print_memory[7],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*7,0.45,cmd_print_memory[8],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*8,0.45,cmd_print_memory[9],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*9,0.45,cmd_print_memory[10],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*10,0.45,cmd_print_memory[11],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*11,0.45,cmd_print_memory[12],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*12,0.45,cmd_print_memory[13],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*13,0.45,cmd_print_memory[14],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*14,0.45,cmd_print_memory[15],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*15,0.45,cmd_print_memory[16],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*16,0.45,cmd_print_memory[17],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*17,0.45,cmd_print_memory[18],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*18,0.45,cmd_print_memory[19],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*19,0.45,cmd_print_memory[20],cmd_text_color)




print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*20,0.45,cmd_print_memory[21],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*21,0.45,cmd_print_memory[22],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*22,0.45,cmd_print_memory[23],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*23,0.45,cmd_print_memory[24],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*24,0.45,cmd_print_memory[25],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*25,0.45,cmd_print_memory[26],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*26,0.45,cmd_print_memory[27],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*27,0.45,cmd_print_memory[28],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*28,0.45,cmd_print_memory[29],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*29,0.45,cmd_print_memory[30],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*30,0.45,cmd_print_memory[31],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*31,0.45,cmd_print_memory[32],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*32,0.45,cmd_print_memory[33],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*33,0.45,cmd_print_memory[34],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*34,0.45,cmd_print_memory[35],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*35,0.45,cmd_print_memory[36],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*36,0.45,cmd_print_memory[37],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*37,0.45,cmd_print_memory[38],cmd_text_color)

print(windows_application_position_x[5]-90,windows_application_position_y[5]+10*38,0.45,cmd_print_memory[39],cmd_text_color)






end





function cmd_init()

local application_name = command_prompt_title
local application_color_1 = Color.new(12,12,12)
local application_color_2 = windows_highlight_color


application_focus_bar(windows_application_position_x[5]-20, windows_application_position_y[5]-20, 640, 17,application_name, 5)

if application_focus_button(windows_application_position_x[5]+510, windows_application_position_y[5]-20, 30, 17, "exit", 5) == true then

cmd = false
windows_application_position_x[5] = 100
windows_application_position_y[5] = 100 - 70
cmd_directories_enumerated = false

end

if application_focus_button(windows_application_position_x[5]+480, windows_application_position_y[5]-20, 30, 17, "maximize", 5) == true then

windows_application_position_x[5] = 100
windows_application_position_y[5] = 100 - 70

end

if application_focus_button(windows_application_position_x[5]+460, windows_application_position_y[5]-20, 20, 17, "minimize", 5) == true then

windows_application_position_x[5] = 1000

end

windows_background(windows_application_position_x[5]-100, windows_application_position_y[5]-1, 640, 448, "box", cmd_background_color, application_name, 5)




if init == -1 then

cmd_print_memory[1] = "Microsoft Windows [Version " .. windows_build .. "]"
cmd_print_memory[2] = "(c) Microsoft Corporation. All rights reserved."
cmd_print_memory[3] = ""
cmd_print_memory[4] = cmd_getCurrentDirectory()

currentPrintPosition = 4

end

cmd_print_memory[currentPrintPosition] = windows_text_input_stream


if cmd == true then

if cmd_directories_enumerated == false then

System.clearNumberOfDirectories()
cmd_getDir("")
cmd_directories_enumerated = true

end

end

cmd_ui()
windows_vk_init()


if currentPrintPosition >= 40 then

currentPrintPositon = 1
cmd_print_memory[1] = ""
cmd_print_memory[2] = ""
cmd_print_memory[3] = ""
cmd_print_memory[4] = ""
cmd_print_memory[5] = ""
cmd_print_memory[6] = ""
cmd_print_memory[7] = ""
cmd_print_memory[8] = ""
cmd_print_memory[9] = ""
cmd_print_memory[10] = ""
cmd_print_memory[11] = ""
cmd_print_memory[12] = ""
cmd_print_memory[13] = ""
cmd_print_memory[14] = ""
cmd_print_memory[15] = ""
cmd_print_memory[16] = ""
cmd_print_memory[17] = ""
cmd_print_memory[18] = ""
cmd_print_memory[19] = ""
cmd_print_memory[20] = ""
cmd_print_memory[21] = ""
cmd_print_memory[22] = ""
cmd_print_memory[23] = ""
cmd_print_memory[24] = ""
cmd_print_memory[25] = ""
cmd_print_memory[26] = ""
cmd_print_memory[27] = ""
cmd_print_memory[28] = ""
cmd_print_memory[29] = ""
cmd_print_memory[30] = ""
cmd_print_memory[31] = ""
cmd_print_memory[32] = ""
cmd_print_memory[33] = ""
cmd_print_memory[34] = ""
cmd_print_memory[35] = ""
cmd_print_memory[36] = ""
cmd_print_memory[37] = ""
cmd_print_memory[38] = ""
cmd_print_memory[39] = ""



end

if windows_key_pressed() == "WINDOWS_VK_L1"
or windows_vk_global_enter == true then
System.sleep(1)
if currentPrintPosition <= 39 then

init = init + 1

if cmd_getCommands(cmd_print_memory[currentPrintPosition]) == "ret" then
currentPrintPosition = currentPrintPosition + 2
else
currentPrintPosition = currentPrintPosition + 1
end
cmd_print_memory[currentPrintPosition] = windows_text_input_stream


windows_text_input_stream = ""

else

currentPrintPosition = 1

end
end







end
  
