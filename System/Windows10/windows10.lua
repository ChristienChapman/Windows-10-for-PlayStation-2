-- All glory to God, Jesus Christ, and the Holy Spirit

Font.fmLoad()
pad = Pads.get()


os_running = false
start_menu_active = false
action_center_active = false
boot_screen = true
login_screen = false
windows_build = "release-build-51"
windows_crash_status = false
setup_assistant = false
setup_menu = ""
setup_progress = 0
local setup_assistant_r = math.random(1,256)
local setup_assistant_g = math.random(1,256)
local setup_assistant_b = math.random(1,256)
local setup_assistant_alpha = 0
local screensaver_r = math.random(1,256)
local screensaver_g = math.random(1,256)
local screensaver_b = math.random(1,256)
local screensaver_alpha = 0
local setup_rot_cycles = 0
local setup_play_cycle = true
local setup_assistant_write_stack = false
local force_setup = false
local setup_password_authenticated = false
local stack_get_colors = true
local setup_input_delay = false
focus_assist = true
windows_full_screen = false
windows_update_application_positions = false
local windows_graphical_memory_logic = 0
local magic_gate_credential = "0x" .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9).. math.random(1,9)



windows_crash_message = "null"
windows_username = ""
windows_password = ""


windows_available_ram = System.getFreeMemory()
windows_hardware_processor = ""
windows_system_origin = System.currentDirectory()
windows_drive = System.currentDirectory()
if string.sub(windows_system_origin,0,5) == "host:" then
windows_system_origin = "PCSX2 Emulator"
windows_hardware_processor = "Virtual CPU"
else
windows_system_origin = "PlayStation 2"
windows_hardware_processor = "MIPS III R5900-based " .. '"' .. "Emotion Engine" .. '"'

end


windows_right_bar = false
windows_right_bar_x = 0
windows_right_bar_y = 0

windows_taskbar_draw_type = "bottom"

windows_government_classification_status = 0




red = Color.new(204, 0, 0)
red_cursor_patch = Color.new(204, 0, 0, 255)
green = Color.new(0, 204, 0)
blue = Color.new(41, 199, 239)
blue_cursor_patch = Color.new(41, 199, 239, 255)
dark_blue = Color.new(2, 0, 194)
dark_blue_cursor_patch = Color.new(2, 0, 194, 255)
dark_green = Color.new(0, 74, 14)
dark_red = Color.new(127, 0, 0)
aqua = Color.new(56, 97, 209)
cyan = Color.new(0, 255, 255)
purple = Color.new(127, 0, 255)
dark_purple = Color.new(78, 39, 124)
dark_white = Color.new(168, 168, 168)
dark_yellow = Color.new(127, 106, 0)
bright_yellow = Color.new(255,233,127)
pink = Color.new(255, 0, 255)
pink_cursor_patch = Color.new(255, 0, 255, 255)
white = Color.new(255, 255, 255)
black = Color.new(0, 0, 0)
grey = Color.new(90, 90, 90)
grey_cursor_patch = Color.new(90, 90, 90,255)
yellow = Color.new(255,216,0)
yellow_cursor_patch = Color.new(255,216,0, 255)
brown = Color.new(127, 51, 0)
dark_grey = Color.new(33, 33, 33)
dark_grey_cursor_patch = Color.new(33, 33, 33, 255)
transparent = Color.new(0, 0, 0, 0)
transparent_blue = Color.new(0, 255, 255, 50)
transparent_purple = Color.new(127, 0, 255, 50)
transparent_grey = Color.new(90, 90, 90, 50)
transparent_red = Color.new(204, 0, 0, 50)
transparent_green = Color.new(0, 204, 0, 50)
transparent_dark_blue = Color.new(2, 0, 194, 50)
transparent_dark_green = Color.new(0, 74, 14, 50)
transparent_dark_red = Color.new(127, 0, 0, 50)
transparent_aqua = Color.new(56, 97, 209, 50)
transparent_cyan = Color.new(0, 255, 255, 50)
transparent_purple = Color.new(127, 0, 255, 50)
transparent_dark_purple = Color.new(78, 39, 124, 50)
transparent_dark_white = Color.new(168, 168, 168, 50)
transparent_dark_yellow = Color.new(127, 106, 0, 50)
transparent_bright_yellow = Color.new(255,233,127, 50)
transparent_pink = Color.new(255, 0, 255, 50)
transparent_white = Color.new(255, 255, 255, 50)
transparent_black = Color.new(0, 0, 0, 50)
transparent_grey = Color.new(90, 90, 90, 50)
transparent_dark_grey = Color.new(33, 33, 33, 50)
windows_setup_assistant_background = Color.new(setup_assistant_r, setup_assistant_g, setup_assistant_b, setup_assistant_alpha)
night_light_color = Color.new(168,97,21,15)
windows_cursor_color = Color.new(0,0,0,0)



windows_custom_cursor = false

freevram = System.getFreeMemory()




windows_highlight_color = blue
windows_box_color = grey
windows_background_color = dark_grey
windows_user_color = dark_blue
windows_taskbar_color = Color.new(25, 25, 25)





taskbar_background = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_background.png")
taskbar_search = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_search.png")
taskbar_windows_logo = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_windows_logo.png")
taskbar_windows_logo_active = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_windows_logo_active.png")
taskbar_edges = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_edges.png")
start_menu = Graphics.loadImage("System/Windows10/System32/graphics/start_menu.jpg")
logo = Graphics.loadImage("System/Windows10/System32/boot/logo.png")
loading_dot = Graphics.loadImage("System/Windows10/System32/graphics/loading_dot.png")
desktop = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
login_screen_background = Graphics.loadImage("System/Windows10/System32/graphics/login_screen.png")
user_icon = Graphics.loadImage("System/Windows10/System32/graphics/user.png")
login_bar = Graphics.loadImage("System/Windows10/System32/graphics/login_bar.jpg")
windows_cursor = Graphics.loadImage("System/Windows10/System32/graphics/cursor.png")
windows_cursor_text = Graphics.loadImage("System/Windows10/System32/graphics/cursor_text.png")
windows_cursor_move = Graphics.loadImage("System/Windows10/System32/graphics/cursor_move.png")
windows_cursor_action = Graphics.loadImage("System/Windows10/System32/graphics/cursor_action.png")
application_focus = Graphics.loadImage("System/Windows10/System32/graphics/application_focus.jpg")
settings_icon = Graphics.loadImage("System/Windows10/System32/graphics/settings_icon.png")
windows_setup_assistant_gradient = Graphics.loadImage("System/Windows10/System32/graphics/setup_assistant_background.png")
power_button = Graphics.loadImage("System/Windows10/System32/graphics/power_button.png")
settings_icon_st = Graphics.loadImage("System/Windows10/System32/graphics/settings_icon_st.png")
taskbar_audio_enabled = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_audio_enabled.png")
taskbar_audio_disabled = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_audio_disabled.png")
taskbar_notification = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_notification.png")




windows_loading_dot_cycle = 0
windows_loading_dot_progress = 0
windows_cursor_x = 300
windows_cursor_y = 250
windows_cursor_selection = ""
windows_cursor_movement_speed_x = 4
windows_cursor_movement_speed_y = 4


windows_focus = {}
windows_application_position_x = {}
windows_application_position_y = {}
windows_run_command = {}
windows_text_input_stream = ""
windows_activity = ""
windows_show_desktop = false

windows_processes = 0
windows_current_focus = 0

parse_processIDs = 0
parse_processes_for_debug = 0
parse_processes = 0



windows_debug_mode = false


wd_loading_time = math.random(1,4)


windows_input_stream = ""
windows_public_key = ""
windows_selected_char = ""
windows_number_of_chars_in_input_stream = 0
windows_active_highlight = ""
windows_screensaver_active = false
windows_run_tab_active = false
windows_inactivity_cycles = 0
windows_security_return = 0
windows_registered_commands = 0
windows_root_administrator_access = false
windows_keyboard_inactivity_cycles = 0


windows_frequency = 44100
windows_audio_enabled = true

windows_scheduled_shutdown = 0
windows_shutdown_cycles = 0
windows_shutdown_active = false

windows_taskbar_items = {}


windows_screensaver_type = "psr"
windows_screensaver_message = ""
windows_screensaver_image = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_screensaver_posx = 0
windows_screensaver_posy = 0
windows_screensaver_update_x = 1
windows_screensaver_update_y = 1


System32 = "System/Windows10/System32/"


windows_keyboard_access = Keyboard.Init()


for i = 0,10000 do

windows_focus[i] = "open_memory"

end

for j = 0,10000 do

windows_application_position_x[j] = 100

end

for k = 0,10000 do

windows_application_position_y[k] = 100

end

for i = 0,10000 do

windows_run_command[i] = "open_memory"

end


for z = 0,12 do

windows_taskbar_items[z] = "open_memory"

end


--listPrograms = System.listDirectory("System/Windows10/System32/programs")
--numberOfPrograms = System.getNumberOfDirectories()
--System.clearNumberOfDirectories()

windows_desktop_icon = {}
windows_desktop_directory = {}
windows_desktop_name = {}

for n=0,10000 do

windows_desktop_icon[n] = "empty"
windows_desktop_directory[n] = "empty"
windows_desktop_name[n] = "empty"

end






windows_lock_cursor = false



windows_vk_global_copy = false
windows_vk_global_paste = false
windows_vk_global_cut = false
windows_vk_global_desktop = false
windows_vk_global_enter = false
windows_vk_global_backspace = false
windows_vk_global_cross = false
windows_vk_global_circle = false
windows_vk_global_triangle = false
windows_vk_global_square = false
windows_vk_global_start = false
windows_vk_global_r1 = false
windows_vk_global_l1 = false
windows_vk_global_l2 = false
windows_vk_global_r2 = false
windows_vk_global_left = false
windows_vk_global_right = false
windows_vk_global_up = false
windows_vk_global_down = false
windows_vk_global_select = false
windows_taskbar_active = true

windows_desktop_registered_icons = 0


local keyboard_notification = 0



windows_copy_memory = ""
windows_char_copy_memory = 0

windows_current_focus_id = 0


windows_bootup_message = ""

if windows_debug_mode == true then
windows_bootup_message = windows_build
end

windows_usb_keyboard_active = false

windows_play_wav = false





function switch(compare,val)
if compare == val then
return true
end
end



function windows_request_write_permissions(request)

if request == "settings232493424575321291243" then

windows_root_administrator_access = true

end

end


function windows_close_write_permissions()


windows_root_administrator_access = false


end



function print(posx, posy, scale, text, color)

Font.fmPrint(posx, posy, scale, text, color)

end



function windows_crash(message)

windows_crash_message = message
windows_crash_status = true

end



local day = ""
local year = ""
local month = 0
local date = 0
local hour = 0
local minute = ""
local time_convention = ""
local checkdd = ""
local checkfd = ""
local checkmd = ""
local checkhd = ""
checkhour = 0

function windows_system_date(posx, posy, scale, color, getDay)

checkfd = string.sub(Timer.systemTime(),0,3)
local length = string.len(Timer.systemTime())


if checkfd == "Mon" then
day = "Sunday"
if length == 32 then
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),29,32)
else
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),30,33)

end
end

if checkfd == "Tue" then
day = "Monday"
if length == 33 then
checkmd = string.sub(Timer.systemTime(),13+1,15+1)
checkdd = string.sub(Timer.systemTime(),17+1,18+1)
year = string.sub(Timer.systemTime(),30,33+1)
else
checkmd = string.sub(Timer.systemTime(),13+1,15+1)
checkdd = string.sub(Timer.systemTime(),17+1,18+1)
year = string.sub(Timer.systemTime(),31,34)
end
end

if checkfd == "Wed" then
day = "Tuesday"
if length == 35 then
checkmd = string.sub(Timer.systemTime(),13+3,15+3)
checkdd = string.sub(Timer.systemTime(),17+3,18+3)
year = string.sub(Timer.systemTime(),32,33+3)
else
checkmd = string.sub(Timer.systemTime(),13+3,15+3)
checkdd = string.sub(Timer.systemTime(),17+3,18+3)
year = string.sub(Timer.systemTime(),31,35)
end

end

if checkfd == "Thu" then
day = "Wednesday"
if length == 34 then
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),31,35)
else
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),30+2,33+2)
end
end

if checkfd == "Fri" then
day = "Thursday"
if length == 32 then
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),29,32)
else
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),30,33)

end
end

if checkfd == "Sat" then
day = "Friday"

if length == 34 then
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),31,35)
else
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),30+2,33+2)
end





end

if checkfd == "Sun" then
day = "Saturday"
if length == 32 then
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),29,32)
else
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),30,33)

end
end







if checkmd == "Dec" then

month = 12
end


if checkmd == "Jan" then

month = 1
end


if checkmd == "Feb" then

month = 2
end


if checkmd == "Mar" then

month = 3
end



if checkmd == "Apr" then

month = 4
end



if checkmd == "May" then

month = 5
end


if checkmd == "Jun" then

month = 6
end




if checkmd == "Jul" then

month = 7
end



if checkmd == "Aug" then

month = 8
end



if checkmd == "Sep" then

month = 9
end


if checkmd == "Oct" then

month = 10
end



if checkmd == "Nov" then

month = 11
end

date = tonumber(checkdd)-1
if date == 0 then
month = month - 1
date = 31
end

if month == 0 then
year = year - 1
month = 12
end

if checkhour == 18 then

date = date + 1


end

if time_convention == "AM" then

date = date + 1

end

if date == 32 then

date = 1
month = month + 1

end

if month == 13 then

month = 1

end




if getDay == true then
print(posx, posy, scale, day .. " " .. month .. "/" .. date .. "/" .. year, color)
else
print(posx, posy, scale, month .. "/" .. date .. "/" .. year, color)
end

end





function windows_system_date_ret(getDay)

checkfd = string.sub(Timer.systemTime(),0,3)
local length = string.len(Timer.systemTime())


if checkfd == "Mon" then
day = "Sunday"
if length == 32 then
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),29,32)
else
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),30,33)

end
end

if checkfd == "Tue" then
day = "Monday"
if length == 33 then
checkmd = string.sub(Timer.systemTime(),13+1,15+1)
checkdd = string.sub(Timer.systemTime(),17+1,18+1)
year = string.sub(Timer.systemTime(),30,33+1)
else
checkmd = string.sub(Timer.systemTime(),13+1,15+1)
checkdd = string.sub(Timer.systemTime(),17+1,18+1)
year = string.sub(Timer.systemTime(),31,34)
end
end

if checkfd == "Wed" then
day = "Tuesday"
if length == 35 then
checkmd = string.sub(Timer.systemTime(),13+3,15+3)
checkdd = string.sub(Timer.systemTime(),17+3,18+3)
year = string.sub(Timer.systemTime(),32,33+3)
else
checkmd = string.sub(Timer.systemTime(),13+3,15+3)
checkdd = string.sub(Timer.systemTime(),17+3,18+3)
year = string.sub(Timer.systemTime(),31,35)
end

end

if checkfd == "Thu" then
day = "Wednesday"
if length == 34 then
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),31,35)
else
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),30+2,33+2)
end
end

if checkfd == "Fri" then
day = "Thursday"
if length == 32 then
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),29,32)
else
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),30,33)

end
end

if checkfd == "Sat" then
day = "Friday"

if length == 34 then
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),31,35)
else
checkmd = string.sub(Timer.systemTime(),13+2,15+2)
checkdd = string.sub(Timer.systemTime(),17+2,18+2)
year = string.sub(Timer.systemTime(),30+2,33+2)
end





end

if checkfd == "Sun" then
day = "Saturday"
if length == 32 then
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),29,32)
else
checkmd = string.sub(Timer.systemTime(),13,15)
checkdd = string.sub(Timer.systemTime(),17,18)
year = string.sub(Timer.systemTime(),30,33)

end
end







if checkmd == "Dec" then

month = 12
end


if checkmd == "Jan" then

month = 1
end


if checkmd == "Feb" then

month = 2
end


if checkmd == "Mar" then

month = 3
end



if checkmd == "Apr" then

month = 4
end



if checkmd == "May" then

month = 5
end


if checkmd == "Jun" then

month = 6
end




if checkmd == "Jul" then

month = 7
end



if checkmd == "Aug" then

month = 8
end



if checkmd == "Sep" then

month = 9
end


if checkmd == "Oct" then

month = 10
end



if checkmd == "Nov" then

month = 11
end

date = tonumber(checkdd)-1
if date == 0 then
month = month - 1
date = 31
end

if month == 0 then
year = year - 1
month = 12
end

if checkhour == 18 then

date = date + 1


end

if time_convention == "AM" then

date = date + 1

end

if date == 32 then

date = 1
month = month + 1

end

if month == 13 then

month = 1

end




if getDay == true then
return day .. " " .. month .. "/" .. date .. "/" .. year
else
return month .. "/" .. date .. "/" .. year
end

end






function windows_system_time(posx, posy, scale, color)

checkfd = string.sub(Timer.systemTime(),0,3)
local length = string.len(Timer.systemTime())


if checkfd == "Mon" then
if length == 32 then

checkhd = string.sub(Timer.systemTime(),19,21)
minute = string.sub(Timer.systemTime(),23,24)
else
checkhd = string.sub(Timer.systemTime(),19,22)
minute = string.sub(Timer.systemTime(),24,25)
end
end

if checkfd == "Tue" then
if length == 33 then
checkhd = string.sub(Timer.systemTime(),20,22)
minute = string.sub(Timer.systemTime(),24,25)
else
checkhd = string.sub(Timer.systemTime(),21,23)
minute = string.sub(Timer.systemTime(),25,26)
end

end

if checkfd == "Wed" then
if length == 35 then

checkhd = string.sub(Timer.systemTime(),22,24)
minute = string.sub(Timer.systemTime(),26,27)
else
checkhd = string.sub(Timer.systemTime(),23,25)
minute = string.sub(Timer.systemTime(),27,28)
end
end

if checkfd == "Thu" then
if length == 34 then
checkhd = string.sub(Timer.systemTime(),21,23)
minute = string.sub(Timer.systemTime(),25,26)
else
checkhd = string.sub(Timer.systemTime(),22,24)
minute = string.sub(Timer.systemTime(),26,27)
end
end

if checkfd == "Fri" then
if length == 32 then

checkhd = string.sub(Timer.systemTime(),19,21)
minute = string.sub(Timer.systemTime(),23,24)
else
checkhd = string.sub(Timer.systemTime(),19,22)
minute = string.sub(Timer.systemTime(),24,25)
end
end

if checkfd == "Sat" then

if length == 34 then
checkhd = string.sub(Timer.systemTime(),21,23)
minute = string.sub(Timer.systemTime(),25,26)
else
checkhd = string.sub(Timer.systemTime(),22,24)
minute = string.sub(Timer.systemTime(),26,27)
end

end

if checkfd == "Sun" then
if length == 32 then

checkhd = string.sub(Timer.systemTime(),20,21)
minute = string.sub(Timer.systemTime(),23,24)
else
checkhd = string.sub(Timer.systemTime(),19,22)
minute = string.sub(Timer.systemTime(),24,25)
end
end






checkhour = tonumber(checkhd)

if checkhour == -4 then

hour = 2
time_convention = "PM"

end

if checkhour == -3 then

hour = 3
time_convention = "PM"

end

if checkhour == -2 then

hour = 4
time_convention = "PM"

end

if checkhour == -1 then

hour = 5
time_convention = "PM"

end

if checkhour == 0 then

hour = 6
time_convention = "PM"

end


if checkhour == 1 then

hour = 7
time_convention = "PM"

end

if checkhour == 2 then

hour = 8
time_convention = "PM"

end

if checkhour == 3 then

hour = 9
time_convention = "PM"

end

if checkhour == 4 then

hour = 10
time_convention = "PM"

end

if checkhour == 5 then

hour = 11
time_convention = "PM"

end

if checkhour == 6 then

hour = 12
time_convention = "AM"

end

if checkhour == 7 then

hour = 1
time_convention = "AM"

end

if checkhour == 8 then

hour = 2
time_convention = "AM"

end

if checkhour == 9 then

hour = 3
time_convention = "AM"

end

if checkhour == 10 then

hour = 4
time_convention = "AM"

end

if checkhour == 11 then

hour = 5
time_convention = "AM"

end

if checkhour == 12 then

hour = 6
time_convention = "AM"

end

if checkhour == 13 then

hour = 7
time_convention = "AM"

end

if checkhour == 14 then

hour = 8
time_convention = "AM"

end

if checkhour == 15 then

hour = 9
time_convention = "AM"

end

if checkhour == 16 then

hour = 10
time_convention = "AM"

end

if checkhour == 17 then

hour = 11
time_convention = "AM"

end

if checkhour == 18 then

hour = 12
date = date + 1
time_convention = "PM"

end

if checkhour == -5 then

hour = 1
time_convention = "PM"

end

if date == 32 then
date = 1
month = month + 1
end


if windows_system_origin == "PlayStation 2" then

hour = hour + 1

if hour == 13 then


hour = 1

end

end

--if string.sub(hour,0,1) == "-" then
--time_convention = "PM"
--checkhd = string.sub(hour,2,2)
--hour = tonumber(checkhd)
--else
--hour = tonumber(checkhd)
--time_convention = "AM"
--end

if windows_debug_mode == true then
print(100, 100, 0.45, Timer.systemTime(), red)
end
print(posx, posy, scale, hour .. ":" .. minute .. " " .. time_convention, color)



end




local windows_notification_1_subject = ""
local windows_notification_2_subject = ""
local windows_notification_3_subject = ""
local windows_notification_1_date = ""
local windows_notification_2_date = ""
local windows_notification_3_date = ""
local windows_notification_1_notif = ""
local windows_notification_2_notif = ""
local windows_notification_3_notif = ""
local windows_notification_1 = 0
local windows_notification_2 = 0
local windows_notification_3 = 0

function windows_get_notification()

local posx = 412
local posy = 336

if focus_assist == false then

if windows_notification_1_notif == "" then 
windows_notification_1 = 0
else

windows_notification_1 = windows_notification_1 + 1

if windows_notification_1 == 20 then

playWav_nc("System/Windows10/System32/sounds/notif.wav", 44100)

end

if windows_notification_1 < 300 then

Graphics.drawRect(posx-10,posy-10,220,90,dark_grey)
print(posx,posy,0.6,windows_notification_1_subject, white)
print(posx,posy+20,0.5,windows_notification_1_date, white)
print(posx,posy+40,0.4,windows_notification_1_notif, white)


end

if windows_notification_1 > 300 then

windows_notification_1 = 301

end

end



if windows_notification_2_notif == "" then 
windows_notification_2 = 0
else

windows_notification_2 = windows_notification_2 + 2

if windows_notification_2 == 20 then

playWav("System/Windows20/System32/sounds/notif.wav", 44100)

end

if windows_notification_2 < 300 then

Graphics.drawRect(posx-20,posy-20,220,90,dark_grey)
print(posx,posy,0.6,windows_notification_2_subject, white)
print(posx,posy+20,0.5,windows_notification_2_date, white)
print(posx,posy+40,0.4,windows_notification_2_notif, white)


end

if windows_notification_2 > 300 then

windows_notification_2 = 302

end

end







if windows_notification_3_notif == "" then 
windows_notification_3 = 0
else

windows_notification_3 = windows_notification_3 + 3

if windows_notification_3 == 20 then

playWav("System/Windows30/System32/sounds/notif.wav", 44100)

end

if windows_notification_3 < 300 then

Graphics.drawRect(posx-30,posy-30,220,90,dark_grey)
print(posx,posy,0.6,windows_notification_3_subject, white)
print(posx,posy+20,0.5,windows_notification_3_date, white)
print(posx,posy+40,0.4,windows_notification_3_notif, white)


end

if windows_notification_3 > 300 then

windows_notification_3 = 303

end

end

end


end

function windows_push_notification(subject, notification)


if windows_notification_1_notif == "" then

windows_notification_1_date = windows_system_date_ret(false)
windows_notification_1_subject = subject
windows_notification_1_notif = notification
else

if windows_notification_2_notif == "" then

windows_notification_2_date = windows_system_date_ret(false)
windows_notification_2_subject = subject
windows_notification_2_notif = notification

else

if windows_notification_3_notif == "" then


windows_notification_3_date = windows_system_date_ret(false)
windows_notification_3_subject = subject
windows_notification_3_notif = notification

else

windows_notification_1_date = windows_system_date_ret(false)
windows_notification_1_subject = subject
windows_notification_1_notif = notification

end


end

end


end









function debugMode()


if windows_debug_mode == true then

print(0,100,0.8,windows_cursor_x .. " " .. windows_cursor_y, transparent_blue)
print(0,130,0.8,windows_current_focus, transparent_purple)
print(0,380,0.8,windows_text_input_stream, green)
print(100,420,0.8,"RAM: " .. freevram .. "/" .. windows_available_ram, transparent_blue)
print(100,100,0.8,windows_taskbar_items[1], transparent_blue)
print(100,200,0.8,windows_taskbar_items[2], transparent_blue)
print(100,300,0.8,windows_taskbar_items[3], transparent_blue)







Graphics.drawRect(0, 0, 640, 13, green)
print(235,0,0.5,"WINDOWS 10 DEBUG MODE", black)
end


if windows_government_classification_status == 1 then

Graphics.drawRect(0, 0, 640, 13, green)
print(257,0,0.5,"UNCLASSIFIED", black)

end


if windows_government_classification_status == 2 then

Graphics.drawRect(0, 0, 640, 13, red)
print(263,0,0.5,"CLASSIFIED", black)

end



end


function addProcess(process) 
windows_processes = windows_processes + 1
for checkOpenMem = 0,100 do
if windows_focus[checkOpenMem] == "open_memory" then
parse_processIDs = checkOpenMem
end
end

windows_focus[parse_processIDs] = process
windows_application_position_x[parse_processIDs] = 100
windows_application_position_y[parse_processIDs] = 100


end


function debug_getProcesses()

parse_processes_for_debug = parse_processes_for_debug + 1
print(0,0,0.8,windows_focus[parse_processes_for_debug] .. " " .. parse_processes_for_debug, green)

if parse_processes_for_debug == 100 then
parse_processes_for_debug = 1
end

end



function windows_register_run_command(syntax)

windows_registered_commands = windows_registered_commands + 1
windows_run_command[windows_registered_commands] = syntax


end


function windows_get_registered_run_command(syntax)

for i=1,windows_registered_commands do

if windows_run_command[i] == syntax then
return true
end

end

end














function draw_image(image, posx, posy)

Graphics.drawImage(image, posx, posy)

end

function load_image(memory_address, directory)

memory_address = Graphics.loadImage(directory)

end

function clear_image(memory_address)

memory_address = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")

end

function free_image(memory_address)

Graphics.freeImage(memory_address)
end




function draw_image_scale(s, pos1, pos2, sc1, sc2)

Graphics.drawScaleImage(s, pos1, pos2, sc1, sc2)
end




function draw_image_color(image, posx, posy, color)

Graphics.drawImage(image, posx, posy, color)

end


function draw_image_scale_color(s, pos1, pos2, sc1, sc2, color)

Graphics.drawScaleImage(s, pos1, pos2, sc1, sc2, color)
end









function getApplication()
parse_processes = parse_processes + 1
if parse_processes == 101 then
parse_processes = 1
end

draw_image(application_focus,windows_application_position_x[parse_processes], windows_application_position_y[parse_processes])

end




function register_desktop_icon(name, icon, directory)

windows_desktop_registered_icons = windows_desktop_registered_icons + 1
windows_desktop_icon[windows_desktop_registered_icons] = icon
windows_desktop_directory[windows_desktop_registered_icons] = directory
windows_desktop_name[windows_desktop_registered_icons] = name



end





function getDesktop()


draw_image_scale(desktop, 0, 0, 640, 448)


end





function get_range(compare,min,max)

if compare >= min then

if compare <= max then

return true

end


end
end



function windows_wav_cycle()

if windows_play_wav == true then
windows_play_wav = false
else
if windows_play_wav == false then
windows_play_wav = true
end
end

end


function windows_cancel_sleep()

windows_screensaver_active = false
windows_inactivity_cycles = 0

end


function windows_key_pressed()

pad = Pads.get()

if Pads.check(pad, PAD_R1) then

if Pads.check(pad, PAD_START) then

if Pads.check(pad, PAD_SELECT) then

windows_cancel_sleep()
return "WINDOWS_VK_RUN"
end
end

end

if Pads.check(pad, PAD_START) then

if Pads.check(pad, PAD_SELECT) then
windows_cancel_sleep()
return "WINDOWS_VK_START"
end

end




if Pads.check(pad, PAD_CROSS) then

if Pads.check(pad, PAD_LEFT) then


windows_cancel_sleep()
return "WINDOWS_VK_DRAG_LEFT"

end
end



if Pads.check(pad, PAD_CROSS) then

if Pads.check(pad, PAD_RIGHT) then


windows_cancel_sleep()
return "WINDOWS_VK_DRAG_RIGHT"

end
end


if Pads.check(pad, PAD_CROSS) then

if Pads.check(pad, PAD_DOWN) then


windows_cancel_sleep()
return "WINDOWS_VK_DRAG_DOWN"

end
end


if Pads.check(pad, PAD_CROSS) then

if Pads.check(pad, PAD_UP) then


windows_cancel_sleep()
return "WINDOWS_VK_DRAG_UP"

end
end

if windows_vk_global_up == true then

windows_vk_global_up = false
windows_cancel_sleep()
return "WINDOWS_VK_UP"

end

if windows_vk_global_down == true then

windows_vk_global_down = false
windows_cancel_sleep()
return "WINDOWS_VK_DOWN"

end

if windows_vk_global_left == true then

windows_vk_global_left = false
windows_cancel_sleep()
return "WINDOWS_VK_LEFT"

end

if windows_vk_global_right == true then

windows_vk_global_right = false
windows_cancel_sleep()
return "WINDOWS_VK_RIGHT"

end

if Pads.check(pad, PAD_UP) then


windows_cancel_sleep()
return "WINDOWS_VK_UP"

end


if Pads.check(pad, PAD_DOWN) then


windows_cancel_sleep()
return "WINDOWS_VK_DOWN"

end


if Pads.check(pad, PAD_R1) then


windows_cancel_sleep()
return "WINDOWS_VK_R1"

end


if Pads.check(pad, PAD_R2) then


windows_cancel_sleep()
return "WINDOWS_VK_R2"

end



if Pads.check(pad, PAD_L1) then


windows_cancel_sleep()
return "WINDOWS_VK_L1"

end


if Pads.check(pad, PAD_L2) then


windows_cancel_sleep()
return "WINDOWS_VK_L2"

end




if Pads.check(pad, PAD_RIGHT) then


windows_cancel_sleep()
return "WINDOWS_VK_RIGHT"

end


if Pads.check(pad, PAD_LEFT) then


windows_cancel_sleep()
return "WINDOWS_VK_LEFT"

end


if boot_screen == true then
if setup_play_cycle == false then
if Pads.check(pad, PAD_CROSS) then

if windows_selected_char == "ESC" then
windows_cancel_sleep()
return "WINDOWS_VK_ESC"

end

windows_cancel_sleep()
return "WINDOWS_VK_CROSS"

end
end
end





if boot_screen == false then
if Pads.check(pad, PAD_CROSS) then

if windows_selected_char == "ESC" then
windows_cancel_sleep()
return "WINDOWS_VK_ESC"

end

windows_cancel_sleep()
return "WINDOWS_VK_CROSS"

end

end


if Pads.check(pad, PAD_TRIANGLE) then


windows_cancel_sleep()
return "WINDOWS_VK_TRIANGLE"

end


if Pads.check(pad, PAD_CIRCLE) then


windows_cancel_sleep()
return "WINDOWS_VK_CIRCLE"

end


if Pads.check(pad, PAD_SQUARE) then


windows_cancel_sleep()
return "WINDOWS_VK_SQUARE"

end





if Pads.check(pad, PAD_START) then

windows_cancel_sleep()
return "WINDOWS_VK_ENTER"


end






end



function getCursor()

if windows_lock_cursor == false then

if windows_cursor_selection == "text" then
if windows_custom_cursor == true then
draw_image_color(windows_cursor_text, windows_cursor_x, windows_cursor_y, windows_cursor_color)
else

draw_image(windows_cursor_text, windows_cursor_x, windows_cursor_y)
end
else
if windows_cursor_selection == "action" then
if windows_custom_cursor == true then
draw_image_color(windows_cursor_action, windows_cursor_x, windows_cursor_y, windows_cursor_color)
else

draw_image(windows_cursor_action, windows_cursor_x, windows_cursor_y)

end
else
if windows_cursor_selection == "move" then
if windows_custom_cursor == true then
draw_image_color(windows_cursor_move, windows_cursor_x, windows_cursor_y, windows_cursor_color)

else

draw_image(windows_cursor_move, windows_cursor_x, windows_cursor_y)

end
else

if windows_custom_cursor == true then
draw_image_color(windows_cursor, windows_cursor_x, windows_cursor_y, windows_cursor_color)

else

draw_image(windows_cursor, windows_cursor_x, windows_cursor_y)

end
end
end
end

if windows_cursor_x <= 0 then
windows_cursor_x = 1
end

if windows_cursor_x >= 633 then
windows_cursor_x = 632
end

if windows_cursor_y <= 0 then
windows_cursor_y = 1
end

if windows_cursor_y >= 432 then
windows_cursor_y = 431
end


if windows_key_pressed() == "WINDOWS_VK_LEFT" then

windows_cursor_x = windows_cursor_x - windows_cursor_movement_speed_x

end

if windows_key_pressed() == "WINDOWS_VK_RIGHT" then

windows_cursor_x = windows_cursor_x + windows_cursor_movement_speed_x

end


if windows_key_pressed() == "WINDOWS_VK_UP" then

windows_cursor_y = windows_cursor_y - windows_cursor_movement_speed_y

end

if windows_key_pressed() == "WINDOWS_VK_DOWN" then

windows_cursor_y = windows_cursor_y + windows_cursor_movement_speed_y

end


end
end


local function windows_clear_graphical_memory()

taskbar_background = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_search = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_windows_logo = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_windows_logo_active = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_edges = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
start_menu = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
logo = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
loading_dot = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
desktop = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
login_screen_background = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
user_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
login_bar = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_cursor = Graphics.loadImage("System/Windows10/System32/graphics/cursor.png")
windows_cursor_text = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_cursor_move = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_cursor_action = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
application_focus = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
settings_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_setup_assistant_gradient = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
power_button = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
settings_icon_st = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_audio_enabled = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_audio_disabled = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_notification = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")


end



local function windows_graphical_memory_handling_logic(check)


if check == false then

if windows_graphical_memory_logic == 0 then

taskbar_background = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_search = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_windows_logo = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_windows_logo_active = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_edges = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
start_menu = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
logo = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
loading_dot = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
desktop = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
login_screen_background = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
user_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
login_bar = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_cursor = Graphics.loadImage("System/Windows10/System32/graphics/cursor.png")
windows_cursor_text = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_cursor_move = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_cursor_action = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
application_focus = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
settings_icon = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
windows_setup_assistant_gradient = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
power_button = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
settings_icon_st = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_audio_enabled = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_audio_disabled = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")
taskbar_notification = Graphics.loadImage("System/Windows10/System32/graphics/windows_graphical_memory_buffer.png")


windows_graphical_memory_logic = 1
end







end



if check == true then



if windows_graphical_memory_logic == 1 then
taskbar_background = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_background.png")
taskbar_search = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_search.png")
taskbar_windows_logo = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_windows_logo.png")
taskbar_windows_logo_active = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_windows_logo_active.png")
taskbar_edges = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_edges.png")
start_menu = Graphics.loadImage("System/Windows10/System32/graphics/start_menu.jpg")
logo = Graphics.loadImage("System/Windows10/System32/boot/logo.png")
loading_dot = Graphics.loadImage("System/Windows10/System32/graphics/loading_dot.png")
desktop = Graphics.loadImage("System/Windows10/UserData/Pictures/" .. windows_registry_get("windows", "win_desktop"))
login_screen_background = Graphics.loadImage("System/Windows10/UserData/Pictures/" .. windows_registry_get("windows", "win_desktop"))
user_icon = Graphics.loadImage("System/Windows10/System32/graphics/user.png")
login_bar = Graphics.loadImage("System/Windows10/System32/graphics/login_bar.jpg")
windows_cursor = Graphics.loadImage("System/Windows10/System32/graphics/cursor.png")
windows_cursor_text = Graphics.loadImage("System/Windows10/System32/graphics/cursor_text.png")
windows_cursor_move = Graphics.loadImage("System/Windows10/System32/graphics/cursor_move.png")
windows_cursor_action = Graphics.loadImage("System/Windows10/System32/graphics/cursor_action.png")
application_focus = Graphics.loadImage("System/Windows10/System32/graphics/application_focus.jpg")
settings_icon = Graphics.loadImage("System/Windows10/System32/graphics/settings_icon.png")
windows_setup_assistant_gradient = Graphics.loadImage("System/Windows10/System32/graphics/setup_assistant_background.png")
power_button = Graphics.loadImage("System/Windows10/System32/graphics/power_button.png")
settings_icon_st = Graphics.loadImage("System/Windows10/System32/graphics/settings_icon_st.png")
taskbar_audio_enabled = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_audio_enabled.png")
taskbar_audio_disabled = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_audio_disabled.png")
taskbar_notification = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_notification.png")

windows_graphical_memory_logic = 0
end

end




end






function get_loading_dot(posx, posy, cycles)


if windows_loading_dot_cycle >= 302 then

windows_loading_dot_progress = windows_loading_dot_progress + 1
windows_loading_dot_cycle = 0

end

if windows_loading_dot_progress < cycles then


windows_loading_dot_cycle = windows_loading_dot_cycle + 2

if get_range(windows_loading_dot_cycle,0,20) then

draw_image(loading_dot, posx+2, posy)

end

if get_range(windows_loading_dot_cycle,20,40) then

draw_image(loading_dot, posx+2, posy)
draw_image(loading_dot, posx-4, posy-8)

end

if get_range(windows_loading_dot_cycle,40,60) then

draw_image(loading_dot, posx+2, posy)
draw_image(loading_dot, posx-4, posy-8)
draw_image(loading_dot, posx-6, posy-16)

end

if get_range(windows_loading_dot_cycle,60,80) then

draw_image(loading_dot, posx+2, posy)
draw_image(loading_dot, posx-4, posy-8)
draw_image(loading_dot, posx-6, posy-16)
draw_image(loading_dot, posx, posy-22)
end


if get_range(windows_loading_dot_cycle,80,100) then

draw_image(loading_dot, posx+2, posy)
draw_image(loading_dot, posx-4, posy-8)
draw_image(loading_dot, posx-6, posy-16)
draw_image(loading_dot, posx, posy-22)
draw_image(loading_dot, posx+8, posy-26)
end


if get_range(windows_loading_dot_cycle,100,120) then

draw_image(loading_dot, posx-4, posy-8)
draw_image(loading_dot, posx-6, posy-16)
draw_image(loading_dot, posx, posy-22)
draw_image(loading_dot, posx+8, posy-26)
draw_image(loading_dot, posx+16, posy-22)
end


if get_range(windows_loading_dot_cycle,120,140) then

draw_image(loading_dot, posx-6, posy-16)
draw_image(loading_dot, posx, posy-22)
draw_image(loading_dot, posx+8, posy-26)
draw_image(loading_dot, posx+16, posy-22)
draw_image(loading_dot, posx+24, posy-16)
end



if get_range(windows_loading_dot_cycle,140,160) then

draw_image(loading_dot, posx, posy-22)
draw_image(loading_dot, posx+8, posy-26)
draw_image(loading_dot, posx+16, posy-22)
draw_image(loading_dot, posx+24, posy-16)
draw_image(loading_dot, posx+28, posy-8)
end


if get_range(windows_loading_dot_cycle,160,180) then

draw_image(loading_dot, posx+8, posy-26)
draw_image(loading_dot, posx+16, posy-22)
draw_image(loading_dot, posx+24, posy-16)
draw_image(loading_dot, posx+28, posy-8)
draw_image(loading_dot, posx+24, posy)
end


if get_range(windows_loading_dot_cycle,180,200) then

draw_image(loading_dot, posx+16, posy-22)
draw_image(loading_dot, posx+24, posy-16)
draw_image(loading_dot, posx+28, posy-8)
draw_image(loading_dot, posx+24, posy)
draw_image(loading_dot, posx+16, posy+6)
end

if get_range(windows_loading_dot_cycle,200,220) then

draw_image(loading_dot, posx+24, posy-16)
draw_image(loading_dot, posx+28, posy-8)
draw_image(loading_dot, posx+24, posy)
draw_image(loading_dot, posx+16, posy+6)
end

if get_range(windows_loading_dot_cycle,220,240) then

draw_image(loading_dot, posx+28, posy-8)
draw_image(loading_dot, posx+24, posy)
draw_image(loading_dot, posx+16, posy+6)
end


if get_range(windows_loading_dot_cycle,240,260) then

draw_image(loading_dot, posx+24, posy)
draw_image(loading_dot, posx+16, posy+6)
end


if get_range(windows_loading_dot_cycle,260,280) then

draw_image(loading_dot, posx+16, posy+6)
end


if get_range(windows_loading_dot_cycle,280,300) then


end

else

return true



end










end





function windows_security_check(path)


if windows_root_administrator_access == true then


return true

end



if windows_root_administrator_access == false then

if GetFileName(path) == "System32" then
return false
end

if GetFileName(path) == "win_audio_frequency" then
return false
end


if GetFileName(path) == "win_desktop" then
return false
end

if GetFileName(path) == "win_password" then
return false
end


if GetFileName(path) == "settings_background_b" then
return false
end


if GetFileName(path) == "settings_background_g" then
return false
end

if GetFileName(path) == "settings_background_r" then
return false
end

if GetFileName(path) == "settings_highlight_r" then
return false
end

if GetFileName(path) == "settings_highlight_g" then
return false
end

if GetFileName(path) == "settings_highlight_b" then
return false
end

if GetFileName(path) == "settings_taskbar_r" then
return false
end

if GetFileName(path) == "settings_taskbar_g" then
return false
end

if GetFileName(path) == "settings_taskbar_b" then
return false
end

if GetFileName(path) == "taskbar_draw_type" then
return false
end

if GetFileName(path) == "win_username" then
return false
end

end



end




dofile("System/Windows10/System32/os_functions.lua")
dofile("System/Windows10/System32/registry.lua")
dofile("System/Windows10/System32/album_covers.lua")

windows_registry_create("windows", "win_username")
windows_registry_create("windows", "win_password")
windows_registry_create("windows", "settings_highlight_r")

windows_registry_create("windows", "settings_highlight_g")

windows_registry_create("windows", "settings_highlight_b")

windows_registry_create("windows", "settings_taskbar_r")

windows_registry_create("windows", "settings_taskbar_g")

windows_registry_create("windows", "settings_taskbar_b")

windows_registry_create("windows", "settings_background_r")

windows_registry_create("windows", "settings_background_g")

windows_registry_create("windows", "settings_background_b")

windows_registry_create("windows", "win_desktop")

windows_registry_create("windows", "win_audio")

windows_registry_create("windows", "win_audio_frequency")

windows_registry_create("windows", "taskbar_draw_type")

windows_registry_create("windows", "win_cursor_speed")

windows_registry_create("windows", "win_focus_assist")

windows_registry_create("windows", "win_cursor_color")

windows_registry_create("windows", "win_screensaver")

windows_registry_create("windows", "win_MagicGate_mc02")















--windows_registry_create("test", "variable")






function windows_draw_right_bar()

if windows_right_bar == false then
windows_right_bar_x = windows_cursor_x
windows_right_bar_y = windows_cursor_y

end


if windows_right_bar == true then
Graphics.drawRect(windows_right_bar_x, windows_right_bar_y, 160, 240, dark_grey)
end


end



















function windows_box_text_input(posx, posy, xlength, ylength, resource_type, resource, action_code)

if get_range(windows_cursor_x,posx,posx+xlength) and
get_range(windows_cursor_y,posy,posy+ylength) then

if windows_key_pressed() == "WINDOWS_VK_CROSS" then
windows_text_input_stream = ""
windows_vk = true
end

if windows_key_pressed() == "WINDOWS_VK_ENTER" then
windows_cursor_selection = ""
if string.sub(action_code,0,7) == "compare" then

if windows_text_input_stream == string.sub(action_code,9) then
return true
else
return false
end




end




if windows_vk_global_enter == true then
windows_cursor_selection = ""
if string.sub(action_code,0,7) == "compare" then

if windows_text_input_stream == string.sub(action_code,9) then
return true
else
return false
end


end




end


end

windows_cursor_selection = "text"
else
windows_cursor_selection = ""




end


if resource_type == "image" then
draw_image_scale(resource, posx, posy, xlength, ylength)
end


if resource_type == "box" then
Graphics.drawRect(posx, posy, xlength, ylength, resource)
end







end








function windows_box_text_input_string(posx, posy, xlength, ylength, resource_type, resource)

if get_range(windows_cursor_x,posx,posx+xlength) and
get_range(windows_cursor_y,posy,posy+ylength) then

if windows_key_pressed() == "WINDOWS_VK_CROSS" then
windows_text_input_stream = ""
windows_vk = true
end

if windows_key_pressed() == "WINDOWS_VK_ENTER" then
windows_cursor_selection = ""
return "enter"

end

windows_cursor_selection = "text"
else
windows_cursor_selection = ""




end


if resource_type == "image" then
draw_image_scale(resource, posx, posy, xlength, ylength)
end


if resource_type == "box" then
Graphics.drawRect(posx, posy, xlength, ylength, resource)
end







end











function windows_button(posx, posy, xlength, ylength, resource_type, resource, highlight, active_code, sleep, id)

if get_range(windows_cursor_x,posx,posx+xlength) and
get_range(windows_cursor_y,posy,posy+ylength) then

windows_cursor_selection = "action"
--if windows_current_focus_id == id then

if windows_key_pressed() == "WINDOWS_VK_CROSS" then
windows_cursor_selection = ""
if sleep == true then
System.sleep(1)
end
return true
end
--end





if highlight == "" then
if resource_type == "image" then
draw_image_scale(resource, posx, posy, xlength, ylength)
end


if resource_type == "box" then
Graphics.drawRect(posx, posy, xlength, ylength, resource)
end

if resource_type == "text_box" then
Graphics.drawRect(posx, posy, xlength, ylength, resource)
--print(posx, posy,0.5,white)
end

else

if resource_type == "image" then
Graphics.drawRect(posx, posy, xlength, ylength, highlight)
draw_image_scale(resource, posx, posy, xlength, ylength)
windows_active_highlight = active_code
end


if resource_type == "box" then
Graphics.drawRect(posx, posy, xlength, ylength, highlight)
windows_active_highlight = active_code
end

if resource_type == "text_box" then
Graphics.drawRect(posx, posy, xlength, ylength, highlight)
windows_active_highlight = active_code
--print(posx, posy,0.8,resource, white)
end

end

else

if resource_type == "image" then
draw_image_scale(resource, posx, posy, xlength, ylength)
end


if resource_type == "box" then
Graphics.drawRect(posx, posy, xlength, ylength, resource)
end












end











end


function actionCenter()

if action_center_active == true then

Graphics.drawRect(400,100,300,350,windows_taskbar_color)
print(420,120,0.3,windows_notification_1_subject .. " " .. windows_notification_1_date,white)
print(420,130,0.3,windows_notification_2_subject .. " " .. windows_notification_2_date,white)
print(420,140,0.3,windows_notification_3_subject .. " " .. windows_notification_3_date,white)
windows_button(420,120,200,10,"box",transparent,transparent,"p0681_",false)
windows_button(420,130,200,10,"box",transparent,transparent,"p0682_",false)
windows_button(420,140,200,10,"box",transparent,transparent,"p0683_",false)


if windows_button(420,200,44,44,"box",grey,windows_highlight_color,"",false) == true then

settings = true

end

if windows_button(420+54,200,44,44,"box",grey,windows_highlight_color,"",false) == true then

if focus_assist == false then

focus_assist = true
else

focus_assist = false
end

end

if windows_button(420+54+54,200,44,44,"box",grey,windows_highlight_color,"",false) == true then

if night_light == false then
night_light = true
else
night_light = false
end

end

print(420,200+35,0.3,"Settings",white)
print(420+54,200+25,0.3,"Focus\nAssist",white)
print(420+54+54,200+25,0.3,"Night\nLight",white)



if windows_active_highlight == "p0681_" then

print(420,160,0.3,windows_notification_1_notif,white)

end

if windows_active_highlight == "p0682_" then

print(420,160,0.3,windows_notification_2_notif,white)

end

if windows_active_highlight == "p0683_" then

print(420,160,0.3,windows_notification_3_notif,white)

end


end

end


function startMenu()

if start_menu_active == true then

if windows_taskbar_draw_type == "bottom" then
local pos_st_ind = 90
Graphics.drawRect(0,0,185,450,windows_taskbar_color)
if windows_button(10, 380-pos_st_ind, 15, 18, "image", power_button, windows_highlight_color, "start_menu_p1", false) then
windows_right_bar_status()
end
if windows_button(10, 350-pos_st_ind, 16, 16, "image", settings_icon_st, windows_highlight_color, "start_menu_p2", false) then
settings = true
settings_menu = ""
start_menu_active = false
end





if windows_active_highlight == "start_menu_p1" then

print(10+20,380-pos_st_ind,0.5,"Power",white)


end

if windows_active_highlight == "start_menu_p2" then

print(10+20,350-pos_st_ind,0.5,"Settings",white)

end

if windows_active_highlight == "start_menu_p3" then

print(10+20,320-pos_st_ind,0.5,windows_username,white)

end


windows_draw_right_bar()
if windows_draw_right_bar_button("Sleep", 10) == true then
windows_inactivity_cycles = 5000
windows_screensaver_active = true
System.sleep(1)
windows_right_bar_status()
end
if windows_draw_right_bar_button("Restart", 40) == true then
boot_screen = true
windows_right_bar_status()
end
if windows_draw_right_bar_button("Shutdown", 70) == true then
System.exitToBrowser()
windows_right_bar_status()
end




end




if windows_taskbar_draw_type == "top" then
local pos_st_ind = 90
Graphics.drawRect(0,0,185,450,windows_taskbar_color)
if windows_button(10, 380-pos_st_ind, 15, 18, "image", power_button, windows_highlight_color, "start_menu_p1", false) then
windows_right_bar_status()
end
if windows_button(10, 350-pos_st_ind, 16, 16, "image", settings_icon_st, windows_highlight_color, "start_menu_p2", false) then
settings = true
settings_menu = ""
start_menu_active = false
end





if windows_active_highlight == "start_menu_p1" then

print(10+20,380-pos_st_ind,0.5,"Power",white)


end

if windows_active_highlight == "start_menu_p2" then

print(10+20,350-pos_st_ind,0.5,"Settings",white)

end

if windows_active_highlight == "start_menu_p3" then

print(10+20,320-pos_st_ind,0.5,windows_username,white)

end


windows_draw_right_bar()
if windows_draw_right_bar_button("Sleep", 10) == true then
windows_inactivity_cycles = 5000
windows_screensaver_active = true
System.sleep(1)
windows_right_bar_status()
end
if windows_draw_right_bar_button("Restart", 40) == true then
boot_screen = true
windows_right_bar_status()
end
if windows_draw_right_bar_button("Shutdown", 70) == true then
System.exitToBrowser()
windows_right_bar_status()
end


end







if windows_taskbar_draw_type == "left" then
local pos_st_ind = 90
local pos_st_lnd = 45
Graphics.drawRect(0+pos_st_lnd,0,185,450,windows_taskbar_color)
if windows_button(10+pos_st_lnd, 380-pos_st_ind, 15, 18, "image", power_button, windows_highlight_color, "start_menu_p1", false) then
windows_right_bar_status()
end
if windows_button(10+pos_st_lnd, 350-pos_st_ind, 16, 16, "image", settings_icon_st, windows_highlight_color, "start_menu_p2", false) then
settings = true
settings_menu = ""
start_menu_active = false
end




if windows_active_highlight == "start_menu_p1" then

print(10+20+pos_st_lnd,380-pos_st_ind,0.5,"Power",white)


end

if windows_active_highlight == "start_menu_p2" then

print(10+20+pos_st_lnd,350-pos_st_ind,0.5,"Settings",white)

end

if windows_active_highlight == "start_menu_p3" then

print(10+20+pos_st_lnd,320-pos_st_ind,0.5,windows_username,white)

end


windows_draw_right_bar()
if windows_draw_right_bar_button("Sleep", 10) == true then
windows_inactivity_cycles = 5000
windows_screensaver_active = true
System.sleep(1)
windows_right_bar_status()
end
if windows_draw_right_bar_button("Restart", 40) == true then
boot_screen = true
windows_right_bar_status()
end
if windows_draw_right_bar_button("Shutdown", 70) == true then
System.exitToBrowser()
windows_right_bar_status()
end


end






if windows_taskbar_draw_type == "right" then
local pos_st_ind = 90
local pos_st_rds = 410
Graphics.drawRect(0+pos_st_rds,0,185,450,windows_taskbar_color)
if windows_button(10+pos_st_rds, 380-pos_st_ind, 15, 18, "image", power_button, windows_highlight_color, "start_menu_p1", false) then
windows_right_bar_status()
end
if windows_button(10+pos_st_rds, 350-pos_st_ind, 16, 16, "image", settings_icon_st, windows_highlight_color, "start_menu_p2", false) then
settings = true
settings_menu = ""
start_menu_active = false
end





if windows_active_highlight == "start_menu_p1" then

print(10+20+pos_st_rds,380-pos_st_ind,0.5,"Power",white)


end

if windows_active_highlight == "start_menu_p2" then

print(10+20+pos_st_rds,350-pos_st_ind,0.5,"Settings",white)

end

if windows_active_highlight == "start_menu_p3" then

print(10+20+pos_st_rds,320-pos_st_ind,0.5,windows_username,white)

end


windows_draw_right_bar()
if windows_draw_right_bar_button("Sleep", 10) == true then
windows_inactivity_cycles = 5000
windows_screensaver_active = true
System.sleep(1)
windows_right_bar_status()
end
if windows_draw_right_bar_button("Restart", 40) == true then
boot_screen = true
windows_right_bar_status()
end
if windows_draw_right_bar_button("Shutdown", 70) == true then
System.exitToBrowser()
windows_right_bar_status()
end


end
















end

end





function windows_background(posx, posy, xlength, ylength, resource_type, resource, name, id)

if get_range(windows_cursor_x,posx,posx+xlength) and
get_range(windows_cursor_y,posy,posy+ylength) then
windows_current_focus = name
windows_current_focus_id = id
end

if resource_type == "image" then
draw_image_scale(resource, posx, posy, xlength, ylength)
end


if resource_type == "box" then
Graphics.drawRect(posx, posy, xlength, ylength, resource)
end




end









function application_focus_bar(posx, posy, xlength, ylength, name, id)





if get_range(windows_cursor_x,posx,posx+xlength) and
get_range(windows_cursor_y,posy,posy+ylength) then
windows_cursor_selection = "move"

if windows_key_pressed() == "WINDOWS_VK_DRAG_LEFT" then
windows_application_position_x[id] = windows_application_position_x[id] -1
windows_cursor_x = windows_cursor_x - 1
windows_current_focus = name

end

if windows_key_pressed() == "WINDOWS_VK_DRAG_RIGHT" then
windows_application_position_x[id] = windows_application_position_x[id] +1
windows_cursor_x = windows_cursor_x + 1
windows_current_focus = name

end

if windows_key_pressed() == "WINDOWS_VK_DRAG_DOWN" then
windows_application_position_y[id] = windows_application_position_y[id] +1
windows_cursor_y = windows_cursor_y + 1
windows_current_focus = name

end

if windows_key_pressed() == "WINDOWS_VK_DRAG_UP" then
windows_application_position_y[id] = windows_application_position_y[id] -1
windows_cursor_y = windows_cursor_y - 1
windows_current_focus = name

end


end


draw_image_scale(application_focus,windows_application_position_x[id]-100,windows_application_position_y[id]-18, xlength, ylength)
print(windows_application_position_x[id]-100+20,windows_application_position_y[id]-18+4,0.35,name,black)

end




function application_focus_button(posx, posy, xlength, ylength, type, id)





if get_range(windows_cursor_x,posx,posx+xlength) and
get_range(windows_cursor_y,posy,posy+ylength) then
windows_cursor_selection = "action"

if type == "exit" then
Graphics.drawRect(posx,windows_application_position_y[id]-18, xlength, ylength, transparent_red)
end

if type == "maximize" or
type == "minimize" then
Graphics.drawRect(posx,windows_application_position_y[id]-18, xlength, ylength, transparent_grey)
end




if windows_key_pressed() == "WINDOWS_VK_CROSS" then
return true

end


end





end









function windows_right_bar_status()


if windows_right_bar == false then
windows_right_bar = true
else
windows_right_bar = false
end

end
function windows_draw_right_bar_button(text, offset)

if windows_right_bar == false then
windows_right_bar_x = windows_cursor_x
windows_right_bar_y = windows_cursor_y

end


if windows_right_bar == true then
if windows_button(windows_right_bar_x, windows_right_bar_y+offset, 160, 26, "box", grey, windows_highlight_color, "", false, 9732) == true then

return true
end
print(windows_right_bar_x+3,windows_right_bar_y+offset,0.5,text,white)
end


end






















dofile("System/Windows10/System32/get_programs.lua")




function findRunCommand(syntax)


if syntax == "mcps2" then


dofile("mcps2/init.lua")
windows_clear_graphical_memory()

end

if syntax == "calc" then

calc = true

end


if syntax == "regedit" then

regedit = true

end

if syntax == "settings" then

settings = true

end

if syntax == "control" then

settings = true

end


if syntax == "explorer" then

explorer = true

end


if syntax == "cmd" then

cmd = true

end

if syntax == "notepad" then

notepad = true

end

if syntax == "starcraft" then

starcraft = true

end

if syntax == "mspaint" or
syntax == "paint" then

paint = true

end





end








function findTaskbarItem(program)

if windows_taskbar_items[1] == program then
return 1
end

if windows_taskbar_items[2] == program then
return 2
end

if windows_taskbar_items[3] == program then
return 3
end

if windows_taskbar_items[4] == program then
return 4
end

if windows_taskbar_items[5] == program then
return 5
end

if windows_taskbar_items[6] == program then
return 6
end

if windows_taskbar_items[7] == program then
return 7
end

if windows_taskbar_items[8] == program then
return 8
end

if windows_taskbar_items[9] == program then
return 9
end

if windows_taskbar_items[10] == program then
return 10
end

if windows_taskbar_items[11] == program then
return 11
end

if windows_taskbar_items[12] == program then
return 12
end

end


function findOpenTaskbarItem()

if windows_taskbar_items[1] == "open_memory" then
return 1
end

if windows_taskbar_items[2] == "open_memory" then
return 2
end

if windows_taskbar_items[3] == "open_memory" then
return 3
end

if windows_taskbar_items[4] == "open_memory" then
return 4
end

if windows_taskbar_items[5] == "open_memory" then
return 5
end

if windows_taskbar_items[6] == "open_memory" then
return 6
end

if windows_taskbar_items[7] == "open_memory" then
return 7
end

if windows_taskbar_items[8] == "open_memory" then
return 8
end

if windows_taskbar_items[9] == "open_memory" then
return 9
end

if windows_taskbar_items[10] == "open_memory" then
return 10
end

if windows_taskbar_items[11] == "open_memory" then
return 11
end

if windows_taskbar_items[12] == "open_memory" then
return 12
end

end


function updateTaskbar(program)

local itemop = findOpenTaskbarItem()
windows_taskbar_items[itemop] = program


end


function closeTaskbar(program)

local itemop = findTaskbarItem(program)

if windows_taskbar_items[itemop] == program then
windows_taskbar_items[itemop] = "open_memory"


end

end

function checkTaskbar(program)

local itemop = findTaskbarItem(program)

if windows_taskbar_items[itemop] == program then
return true
else
return false
end

end






function getTaskbar()

 if windows_taskbar_active == true then
 
 
 if windows_taskbar_draw_type == "bottom" then
 Graphics.drawRect(0, 418, 650, 50, windows_taskbar_color)
 windows_system_date(542,435,0.3,white)
windows_system_time(550,425,0.3,white)

if windows_audio_enabled == true then
if windows_button(-7+522, 427, 17, 13, "image", taskbar_audio_enabled, windows_highlight_color, "", false, 9732) == true then

windows_audio_enabled = false

end

else

if windows_button(-7+522, 427, 17, 13, "image", taskbar_audio_disabled, windows_highlight_color, "", false, 9732) == true then

windows_audio_enabled = true
end



end


if checkTaskbar("settings") == true then
if windows_button(-7+61, 421, 26, 25, "image", settings_icon, windows_highlight_color, "", false, 9732) == true then


end




end








end



end

 if windows_taskbar_draw_type == "left" then
 Graphics.drawRect(0, 0, 45, 455, windows_taskbar_color)
 windows_system_date(1,435-15,0.25,white)
windows_system_time(1,425-15,0.3,white)

if windows_update_application_positions == false then

windows_update_application_positions = true

for upi=0,10000 do

windows_application_position_x[upi] = windows_application_position_x[upi] + 45

end

end

end
 if windows_taskbar_draw_type == "right" then
 Graphics.drawRect(590, 0, 50, 450, windows_taskbar_color)
 windows_system_date(600,435-15,0.25,white)
windows_system_time(600,425-15,0.3,white)



if windows_update_application_positions == false then

windows_update_application_positions = true

for upi=0,10000 do

windows_application_position_x[upi] = windows_application_position_x[upi] - 45

end

end



end
 if windows_taskbar_draw_type == "top" then
 Graphics.drawRect(0, 0, 650, 40, windows_taskbar_color)
 windows_system_date(542,17+10,0.3,white)
windows_system_time(550,17,0.3,white)

if windows_update_application_positions == false then

windows_update_application_positions = true

for upi=0,10000 do

windows_application_position_y[upi] = windows_application_position_y[upi] + 33

end

end

end



if start_menu_active == true then
 if windows_taskbar_draw_type == "bottom" then
if windows_button(-7, 413, 41, 40, "image", taskbar_windows_logo_active, transparent, "windows_start_button", false) == true then
start_menu_active = false
end
end
 if windows_taskbar_draw_type == "left" then
if windows_button(-2, 3, 41, 40, "image", taskbar_windows_logo_active, transparent, "", false, 9732) == true then
start_menu_active = false
end
end
 if windows_taskbar_draw_type == "right" then
if windows_button(590-2, 3, 41, 40, "image", taskbar_windows_logo_active, transparent, "", false, 9732) == true then
start_menu_active = false
end
end
 if windows_taskbar_draw_type == "top" then
if windows_button(-7, 0, 41, 40, "image", taskbar_windows_logo_active, transparent, "", false, 9732) == true then
start_menu_active = false
end

end


else



if windows_taskbar_draw_type == "bottom" then


if windows_button(-7, 413, 41, 40, "image", taskbar_windows_logo, transparent, "", false, 9732) == true then
start_menu_active = true
end
end
 if windows_taskbar_draw_type == "left" then
if windows_button(-2, 3, 41, 40, "image", taskbar_windows_logo, transparent, "", false, 9732) == true then
start_menu_active = true
end
end
 if windows_taskbar_draw_type == "right" then
if windows_button(590-2, 3, 41, 40, "image", taskbar_windows_logo, transparent, "", false, 9732) == true then
start_menu_active = true
end
end
 if windows_taskbar_draw_type == "top" then
if windows_button(-7, 0, 41, 40, "image", taskbar_windows_logo, transparent, "", false, 9732) == true then
start_menu_active = true
end
end



end


if windows_taskbar_draw_type == "bottom" then

if windows_button(618, 427, 15, 15, "image", taskbar_notification, transparent, "", false, 9732) == true then
if action_center_active == false then

action_center_active = true

else

action_center_active = false

end

end

end

if windows_taskbar_draw_type == "left" then

if windows_button(15, 429, 15, 15, "image", taskbar_notification, transparent, "", false, 9732) == true then
if action_center_active == false then

action_center_active = true

else

action_center_active = false

end
end

end

if windows_taskbar_draw_type == "right" then

if windows_button(610, 429, 15, 15, "image", taskbar_notification, transparent, "", false, 9732) == true then
if action_center_active == false then

action_center_active = true

else

action_center_active = false

end
end

end

if windows_taskbar_draw_type == "top" then

if windows_button(618, 19, 15, 15, "image", taskbar_notification, transparent, "", false, 9732) == true then
if action_center_active == false then

action_center_active = true

else

action_center_active = false

end
end

end








end















function runTab()

if windows_run_tab_active == true then


Graphics.drawRect(20,290,240,120,white)
Font.fmPrint(30,290,0.5,"Run",black)
if windows_box_text_input_string(30, 320, 200,30, "box", grey) == "enter" then

findRunCommand(string.lower(windows_text_input_stream))
windows_run_tab_active = false
windows_vk = false
windows_text_input_stream = ""


end
Font.fmPrint(30,320,0.7,windows_text_input_stream,black)



if windows_button(160, 390, 85, 20, "box", transparent, windows_highlight_color, "", false, 9732) == true then
windows_run_tab_active = false

end

Font.fmPrint(160,390,0.7,"Cancel",black)





end



end








function getDesktopIcons()

if windows_button(30, -30+1*50, 30, 30, "image", windows_desktop_icon[1], windows_highlight_color, "", false, 9732) == true then



settings = true


end

if windows_button(30, -30+2*50, 30, 30, "image", windows_desktop_icon[2], windows_highlight_color, "", false, 9732) == true then



explorer = true


end

if windows_button(30, -30+3*50, 30, 30, "image", windows_desktop_icon[3], windows_highlight_color, "", false, 9732) == true then



regedit = true


end

if windows_button(30, -30+4*50, 30, 30, "image", windows_desktop_icon[4], windows_highlight_color, "", false, 9732) == true then



cmd = true


end

if windows_button(30, -30+5*50, 30, 30, "image", windows_desktop_icon[5], windows_highlight_color, "", false, 9732) == true then



calc = true


end



print(10, 0+1*50, 0.3, windows_desktop_name[1], white)
print(10, 0+2*50, 0.3, windows_desktop_name[2], white)
print(10, 0+3*50, 0.3, windows_desktop_name[3], white)
print(10, 0+4*50, 0.3, windows_desktop_name[4], white)
print(10, 0+5*50, 0.3, windows_desktop_name[5], white)


end




function windows_get_key(keyboard_stream, hexidecimal, string)

if keyboard_stream == hexidecimal then
windows_text_input_stream = windows_text_input_stream .. string
windows_public_key = hexidecimal
windows_cancel_sleep()
if keyboard_stream == 0 then
else
windows_usb_keyboard_active = true
windows_keyboard_inactivity_cycles = 0

end
end

end



function windows_keyboard_input()


key = Keyboard.GetKey()




windows_get_key(key,113,"q")
windows_get_key(key,81,"Q")
windows_get_key(key,119,"w")
windows_get_key(key,87,"W")
windows_get_key(key,101,"e")
windows_get_key(key,69,"E")
windows_get_key(key,114,"r")
windows_get_key(key,82,"R")
windows_get_key(key,116,"t")
windows_get_key(key,84,"T")
windows_get_key(key,121,"y")
windows_get_key(key,89,"Y")
windows_get_key(key,117,"u")
windows_get_key(key,85,"U")
windows_get_key(key,105,"i")
windows_get_key(key,73,"I")
windows_get_key(key,111,"o")
windows_get_key(key,79,"O")
windows_get_key(key,112,"p")
windows_get_key(key,80,"P")
windows_get_key(key,97,"a")
windows_get_key(key,65,"A")
windows_get_key(key,115,"s")
windows_get_key(key,83,"S")
windows_get_key(key,100,"d")
windows_get_key(key,68,"D")
windows_get_key(key,102,"f")
windows_get_key(key,70,"F")
windows_get_key(key,103,"g")
windows_get_key(key,71,"G")
windows_get_key(key,104,"h")
windows_get_key(key,72,"H")
windows_get_key(key,106,"j")
windows_get_key(key,74,"J")
windows_get_key(key,107,"k")
windows_get_key(key,75,"K")
windows_get_key(key,108,"l")
windows_get_key(key,76,"L")
windows_get_key(key,122,"z")
windows_get_key(key,90,"Z")
windows_get_key(key,120,"x")
windows_get_key(key,88,"X")
windows_get_key(key,99,"c")
windows_get_key(key,67,"C")
windows_get_key(key,118,"v")
windows_get_key(key,86,"V")
windows_get_key(key,98,"b")
windows_get_key(key,66,"B")
windows_get_key(key,110,"n")
windows_get_key(key,78,"N")
windows_get_key(key,109,"m")
windows_get_key(key,77,"M")
windows_get_key(key,32," ")
windows_get_key(key,48,"0")
windows_get_key(key,50,"2")
windows_get_key(key,51,"3")
windows_get_key(key,52,"4")
windows_get_key(key,53,"5")
windows_get_key(key,54,"6")
windows_get_key(key,55,"7")
windows_get_key(key,56,"8")
windows_get_key(key,57,"9")
windows_get_key(key,33,"!")
windows_get_key(key,64,"@")
windows_get_key(key,35,"#")
windows_get_key(key,36,"$")
windows_get_key(key,37,"%")
windows_get_key(key,94,"^")
windows_get_key(key,38,"&")
windows_get_key(key,42,"*")
windows_get_key(key,40,"(")
windows_get_key(key,41,")")
windows_get_key(key,45,"-")
windows_get_key(key,95,"_")
windows_get_key(key,61,"=")
windows_get_key(key,43,"+")
windows_get_key(key,9,"    ")
windows_get_key(key,123,"{")
windows_get_key(key,91,"[")
windows_get_key(key,125,"}")
windows_get_key(key,93,"]")
windows_get_key(key,124,"|")
windows_get_key(key,92,"\\")
windows_get_key(key,59,";")
windows_get_key(key,58,":")
windows_get_key(key,39,"'")
windows_get_key(key,34,'"')
windows_get_key(key,44,",")
windows_get_key(key,60,"<")
windows_get_key(key,46,".")
windows_get_key(key,62,">")
windows_get_key(key,63,"?")
windows_get_key(key,47,"/")
windows_get_key(key,49,"1")



if windows_vk_global_enter == true then

windows_vk_global_enter = false

end

if windows_vk_global_backspace == true then

windows_vk_global_backspace = false

end

if windows_vk_global_copy == true then

windows_vk_global_copy = false

end

if windows_vk_global_paste == true then

windows_vk_global_paste = false

end


if windows_vk_global_cut == true then

windows_vk_global_cut = false

end



if key == 1 then

windows_vk_global_copy = true

end

if key == 2 then

windows_vk_global_paste = true

end

if key == 3 then

windows_vk_global_cut = true

end

if key == 4 then

if windows_show_desktop == false then
for r=0,10000 do

windows_application_position_x[r] = windows_application_position_x[r] - 1000
windows_application_position_y[r] = windows_application_position_y[r] - 1000

end
windows_show_desktop = true
else
for r=0,10000 do

windows_application_position_x[r] = windows_application_position_x[r] + 1000
windows_application_position_y[r] = windows_application_position_y[r] + 1000

end
windows_show_desktop = false

end

end


if key == 11 then

windows_run_tab_active = true

end


if key == 12 then

if start_menu_active == false then
start_menu_active = true
else
start_menu_active = false
end

end



if key == 10 then

windows_vk_global_enter = true


end


if key == 7 then

windows_vk_global_backspace = true

end



end



windows_inactivity_cycles = 4999
function getScreensaver()

if windows_screensaver_type == "psr" then
Graphics.drawRect(0,0,640,448,black)

end

if windows_screensaver_type == "off" then
System.exitToBrowser()

end

if windows_screensaver_type == "msg" then
windows_screensaver_posx = windows_screensaver_posx + windows_screensaver_update_x
windows_screensaver_posy = windows_screensaver_posy + windows_screensaver_update_y

if windows_screensaver_posy == 0 then

windows_screensaver_update_y = 1

end

if windows_screensaver_posy == 438 then

windows_screensaver_update_y = -1

end

if windows_screensaver_posx == 0 then

windows_screensaver_update_x = 1

end

if windows_screensaver_posx == 500 then

windows_screensaver_update_x = -1

end

Graphics.drawRect(0,0,640,448,black)
print(windows_screensaver_posx, windows_screensaver_posy, 0.7, windows_screensaver_message,Color.new(screensaver_r, screensaver_g, screensaver_b, screensaver_alpha))
if screensaver_alpha <= 255 then
screensaver_alpha = screensaver_alpha + 1
end

if screensaver_alpha == 256 then
screensaver_alpha = 20
screensaver_r = screensaver_r + 10
screensaver_g = screensaver_g + 10
screensaver_b = screensaver_b + 10
end

if screensaver_r == 256 then
screensaver_r = math.random(0,256)
end

if screensaver_g == 256 then
screensaver_g = math.random(0,256)
end

if screensaver_b == 256 then
screensaver_b = math.random(0,256)
end



end


if windows_screensaver_type == "img" then

draw_image_scale(windows_screensaver_image,0,0,640,448)


end


end








while boot_screen == true do


windows_keyboard_input()

pad = Pads.get()

if setup_assistant == false then

if windows_key_pressed() == "WINDOWS_VK_START" then
setup_assistant = true
force_setup = true

else
if windows_registry_get("windows", "win_username") == "empty" then
setup_assistant = true
else
windows_username = windows_registry_get("windows", "win_username")
windows_password = windows_registry_get("windows", "win_password")
end







Screen.clear()

print(0, 245, 0.8, windows_bootup_message, white)
draw_image(logo, 258, 56)
if get_loading_dot(310,300,wd_loading_time) then
Screen.clear()
login_screen = true
boot_screen = false
end


end

else









windows_root_administrator_access = true






-- SETUP ASSSISTANT

Screen.clear()



if setup_play_cycle == true then

setup_rot_cycles = setup_rot_cycles + 1
setup_assistant_alpha = setup_assistant_alpha +1
 windows_lock_cursor = true

if setup_rot_cycles == 255 then
setup_play_cycle = false
 windows_lock_cursor = false
setup_rot_cycles = 0
end

end

windows_setup_assistant_background = Color.new(setup_assistant_r, setup_assistant_g, setup_assistant_b, setup_assistant_alpha)


Graphics.drawRect(0, 0, 640, 448, windows_setup_assistant_background)
draw_image_scale(windows_setup_assistant_gradient,0,0,640,448)


Graphics.drawRect(0, 0, 640, 13, windows_setup_assistant_background)
print(210,0,0.5,"Windows 10 Setup Assistant", white)




if setup_menu == "" then


if force_setup == false then
if fileOperation == 0 then
windows_registry_write("windows", "settings_highlight_r", "41")
end
if fileOperation == 1 then
windows_registry_write("windows", "settings_highlight_g", "199")
end
if fileOperation == 2 then
windows_registry_write("windows", "settings_highlight_b", "239")
end
end

if force_setup == false then
if windows_button(40, 100, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then

if fileOperation == 3 then
windows_registry_write("windows", "win_audio", "enable")
end
if fileOperation == 4 then
windows_registry_write("windows", "settings_taskbar_r", "25")
end
if fileOperation == 5 then
windows_registry_write("windows", "win_cursor_speed", "2")
end

setup_menu = "install"
setup_progress = 40
setup_play_cycle = true
end
print(40,100,0.8,"Install",white)
end

if force_setup == true then
if windows_button(40, 180, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
setup_menu = "recovery"
setup_play_cycle = true
end
print(40,180,0.8,"Recovery",white)
end



--if force_setup == true then
--if windows_button(40, 260, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
--setup_menu = "MagicGate_home"
--end
--print(40,260,0.8,"MagicGate",white)
--end

if force_setup == true then
if windows_button(40, 260, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
setup_assistant = false
setup_play_cycle = true
end
print(40,260,0.8,"Exit",white)
end




Graphics.drawRect(0, 435, 640, 13, black)
Graphics.drawRect(0, 435, setup_progress, 13, windows_setup_assistant_background)
end


if setup_menu == "MagicGate_home" then


print(windows_application_position_x[1]+75-80, windows_application_position_y[1]+65,0.7, "Automatic Login", white)
print(windows_application_position_x[1]+75-90, windows_application_position_y[1]+90,0.45, "Windows 10 for PlayStation 2 can automatically login to\nyour account by utilizing a MagicGate memory card present\nin memory card slot 2. You will not be required\nto authenticate your password once your\ncredentials have been stored on the card.", white)

if windows_button(40, 210, 320, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then

setup_menu = "MagicGate_setup"

--windows_registry_write("windows", "win_MagicGate_mc02", "enable")
--windows_registry_magic_gate_write("windows", "usr", windows_username)
--windows_registry_magic_gate_write("windows", "password", windows_password)
--windows_registry_magic_gate_write("windows", "usr", windows_username)
--windows_registry_magic_gate_write("windows", "password", windows_password)
end
print(40,210,0.6,"Create MagicGate Credentials",white)




if windows_button(40, 280, 320, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
setup_assistant = false
setup_play_cycle = true
end
print(40,280,0.6,"Clear MagicGate Credentials",white)


end



if setup_menu == "MagicGate_setup" then


if setup_password_authenticated == false then

print(40,100+15,0.8,"Authenticate your current password.",white)

if windows_box_text_input(40,100+45, 315, 35, "box", windows_setup_assistant_background, "compare " .. windows_registry_get("windows", "win_password")) == true then
setup_password_authenticated = true
windows_text_input_stream = ""


end

if windows_text_input_stream == "" then
print(40,100+45,0.8,"Enter Current Password",white)
else
print(40,100+45,0.8,windows_text_input_stream,white)

end



else

if setup_progress >= 500 then

print(40,100+15,0.8,"Default settings restored.",white)
else
print(40,100+15,0.8,"Restoring default settings...",white)
end


if setup_progress == 11111 then

setup_password_authenticated = false
setup_menu = "recovery"
setup_progress = 0

end
setup_progress = setup_progress + 1


if setup_progress == 100 then

if fileOperation == 0 then
windows_registry_magic_gate_create(magic_gate_credential)

end


end


if setup_progress == 300 then


end


if setup_progress == 400 then

if fileOperation == 0 then
windows_registry_write("windows","win_MagicGate_mc02",magic_gate_credential)
end
end

end



Graphics.drawRect(0, 435, 640, 13, black)
Graphics.drawRect(0, 435, setup_progress, 13, windows_setup_assistant_background)


end



if setup_menu == "install" then
if force_setup == false then
if fileOperation == 6 then
windows_registry_write("windows", "settings_taskbar_g", "25")
end
if fileOperation == 7 then
windows_registry_write("windows", "settings_taskbar_b", "25")
end
if fileOperation == 8 then
windows_registry_write("windows", "win_audio_frequency", "44100")
end
end

print(40,100,0.5,"The Setup Assistant will proceed to install Windows 10.\nYou will need to enter a username and a password which will\nbe used to login to your operating system.\nWith this operating system you can run multiple applications at\nonce. All of the necessary utilities are included in this\ninstallation such as: Explorer, System Settings, and more!",white)
if windows_button(40, 300, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
if fileOperation == 9 then
windows_registry_write("windows", "settings_background_r", "33")
end
if fileOperation == 10 then
windows_registry_write("windows", "win_cursor_color", "default")
end
if fileOperation == 11 then
windows_registry_write("windows", "win_screensaver", "psr")
end
setup_menu = "account_creation"
setup_progress = setup_progress + 100
setup_play_cycle = true
end
print(40,300,0.8,"Continue",white)



if windows_button(40, 380, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
setup_menu = ""
setup_progress = setup_progress - 100
setup_play_cycle = true
end
print(40,380,0.8,"Go Back",white)




Graphics.drawRect(0, 435, 640, 13, black)
Graphics.drawRect(0, 435, setup_progress, 13, windows_setup_assistant_background)
end






if setup_menu == "account_creation" then

if force_setup == false then
if fileOperation == 12 then
windows_registry_write("windows", "settings_background_g", "33")
end
if fileOperation == 13 then
windows_registry_write("windows", "settings_background_b", "33")
end
if fileOperation == 14 then
windows_registry_write("windows", "taskbar_draw_type", "bottom")
end
end


if windows_username == "" then
if windows_box_text_input_string(40, 100, 255, 35, "box", windows_setup_assistant_background) == "enter" then
windows_username = windows_text_input_stream
windows_text_input_stream = ""
setup_progress = setup_progress + 50
if fileOperation == 15 then
windows_registry_write("windows", "win_focus_assist", "false")
end
    
end
print(40,100,0.8,"Enter a Username:",white)
if windows_username == "" then
print(40, 120, 0.5, windows_text_input_stream, grey)
else
print(40, 120, 0.5, windows_username, grey)

end
else
print(40, 120, 0.5, windows_username, grey)
end

if windows_password == "" then
if windows_box_text_input_string(40, 180, 255, 35, "box", windows_setup_assistant_background) == "enter" then
windows_password = windows_text_input_stream
windows_text_input_stream = ""
setup_progress = setup_progress + 50
end
print(40,180,0.8,"Enter a Password:",white)
if windows_password == "" then
print(40, 200, 0.5, windows_text_input_stream, grey)
else
print(40, 200, 0.5, windows_password, grey)

end
else
print(40, 200, 0.5, windows_password, grey)
end

if windows_username == "" then

else
if windows_password == "" then
else
setup_menu = "setup"
end
end



if windows_button(40, 380, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
setup_menu = ""
setup_progress = setup_progress - 100
setup_play_cycle = true
end
print(40,380,0.8,"Go Back",white)




Graphics.drawRect(0, 435, 640, 13, black)
Graphics.drawRect(0, 435, setup_progress, 13, windows_setup_assistant_background)
end


if setup_menu == "setup" then

if setup_progress <= 679 then
setup_progress = setup_progress + 1
end


if setup_progress < 679 then
print(200,100,0.5,"Installing Windows 10...", white)
Graphics.drawRect(0, 435, 640, 13, black)
Graphics.drawRect(0, 435, setup_progress, 13, windows_setup_assistant_background)
end

if setup_progress >= 679 then

print(195,100,0.5,"Installation complete, rebooting...", white)
Graphics.drawRect(0, 435, 640, 13, black)
Graphics.drawRect(0, 435, 640, 13, windows_setup_assistant_background)


end


if setup_progress == 680 then

Screen.clear()
setup_assistant_write_stack = true
setup_assistant = false
boot_screen = false
login_screen = true
setup_progress = 0
end







end





if setup_menu == "change_password" then

if setup_password_authenticated == false then
print(40,100+15,0.8,"Authenticate your current password.",white)

if windows_box_text_input(40,100+45, 315+20, 35, "box", windows_setup_assistant_background, "compare " .. windows_registry_get("windows", "win_password")) == true then
setup_password_authenticated = true
windows_text_input_stream = ""


end

if windows_text_input_stream == "" then
print(40,100+45,0.8,"Enter Current Password",white)
else
print(40,100+45,0.8,windows_text_input_stream,white)

end


else




if windows_box_text_input_string(40,100+45+45, 315, 35, "box", windows_setup_assistant_background) == "enter" then


setup_password_authenticated = false
windows_password = windows_text_input_stream
windows_text_input_stream = ""
windows_registry_write("windows","win_password",windows_password)
windows_registry_write("windows","win_password",windows_password)
setup_menu = "recovery"


end

if windows_text_input_stream == "" then
print(40,100+45+45,0.8,"Enter New Password",white)
else
print(40,100+45+45,0.8,windows_text_input_stream,white)

end



end



end




if setup_menu == "restore_defaults" then


if setup_password_authenticated == false then

print(40,100+15,0.8,"Authenticate your current password.",white)

if windows_box_text_input(40,100+45, 315+20, 35, "box", windows_setup_assistant_background, "compare " .. windows_registry_get("windows", "win_password")) == true then
setup_password_authenticated = true
windows_text_input_stream = ""


end

if windows_text_input_stream == "" then
print(40,100+45,0.8,"Enter Current Password",white)
else
print(40,100+45,0.8,windows_text_input_stream,white)

end



else

if setup_progress >= 500 then

print(40,100+15,0.8,"Default settings restored.",white)
else
print(40,100+15,0.8,"Restoring default settings...",white)
end


if setup_progress == 679 then

setup_password_authenticated = false
setup_menu = "recovery"
setup_progress = 0

end
setup_progress = setup_progress + 1


if setup_progress == 10 then

if fileOperation == 0 then
windows_registry_write("windows", "settings_highlight_r", "41")
windows_registry_write("windows", "settings_highlight_r", "41")
end
if fileOperation == 2 then
windows_registry_write("windows", "settings_highlight_g", "199")
windows_registry_write("windows", "settings_highlight_g", "199")
end
if fileOperation == 4 then
windows_registry_write("windows", "settings_highlight_b", "239")
windows_registry_write("windows", "settings_highlight_b", "239")
end


end


if setup_progress == 60 then


if fileOperation == 6 then
windows_registry_write("windows", "win_audio", "enable")
windows_registry_write("windows", "win_audio", "enable")
end
if fileOperation == 8 then
windows_registry_write("windows", "settings_taskbar_r", "25")
windows_registry_write("windows", "settings_taskbar_r", "25")
end
if fileOperation == 10 then
windows_registry_write("windows", "win_cursor_speed", "2")
windows_registry_write("windows", "win_cursor_speed", "2")
fileOperation = 0
end
end


if setup_progress == 160 then


if fileOperation == 0 then
windows_registry_write("windows", "settings_taskbar_g", "25")
windows_registry_write("windows", "settings_taskbar_g", "25")
end
if fileOperation == 2 then
windows_registry_write("windows", "settings_taskbar_b", "25")
windows_registry_write("windows", "settings_taskbar_b", "25")
end
if fileOperation == 4 then
windows_registry_write("windows", "win_audio_frequency", "44100")
windows_registry_write("windows", "win_audio_frequency", "44100")
end

else





if setup_progress == 310 then


if fileOperation == 6 then
windows_registry_write("windows", "settings_background_r", "33")
windows_registry_write("windows", "settings_background_r", "33")
end
if fileOperation == 8 then
windows_registry_write("windows", "win_cursor_color", "default")
windows_registry_write("windows", "win_cursor_color", "default")
end
if fileOperation == 10 then
windows_registry_write("windows", "win_screensaver", "psr")
windows_registry_write("windows", "win_screensaver", "psr")
end
end




if setup_progress == 360 then



if fileOperation == 12 then
windows_registry_write("windows", "settings_background_g", "33")
windows_registry_write("windows", "settings_background_g", "33")
end
if fileOperation == 14 then
windows_registry_write("windows", "settings_background_b", "33")
windows_registry_write("windows", "settings_background_b", "33")
end
if fileOperation == 16 then
windows_registry_write("windows", "taskbar_draw_type", "bottom")
windows_registry_write("windows", "taskbar_draw_type", "bottom")
fileOperation = 0
end

end




end







end



Graphics.drawRect(0, 435, 640, 13, black)
Graphics.drawRect(0, 435, setup_progress, 13, windows_setup_assistant_background)


end









if setup_menu == "clear_registry" then


if setup_password_authenticated == false then

print(40,100+15,0.8,"Authenticate your current password.",white)

if windows_box_text_input(40,100+45, 315+20, 35, "box", windows_setup_assistant_background, "compare " .. windows_registry_get("windows", "win_password")) == true then
setup_password_authenticated = true
windows_text_input_stream = ""


end

if windows_text_input_stream == "" then
print(40,100+45,0.8,"Enter Current Password",white)
else
print(40,100+45,0.8,windows_text_input_stream,white)

end



else



Screen.clear()
print(0,0,0.7,"clearing registry...",white)





if setup_progress == 679 then

setup_password_authenticated = false
setup_menu = ""

end
setup_progress = setup_progress + 1


if setup_progress == 10 then

if deleteOperation == 0 then
windows_registry_delete("windows", "settings_highlight_r", "41")
windows_registry_delete("windows", "settings_highlight_r", "41")
end
if deleteOperation == 2 then
windows_registry_delete("windows", "settings_highlight_g", "199")
windows_registry_delete("windows", "settings_highlight_g", "199")
end
if deleteOperation == 4 then
windows_registry_delete("windows", "settings_highlight_b", "239")
windows_registry_delete("windows", "settings_highlight_b", "239")
end


end


if setup_progress == 60 then


if deleteOperation == 6 then
windows_registry_delete("windows", "win_audio", "enable")
windows_registry_delete("windows", "win_audio", "enable")
end
if deleteOperation == 8 then
windows_registry_delete("windows", "settings_taskbar_r", "25")
windows_registry_delete("windows", "settings_taskbar_r", "25")
end
if deleteOperation == 10 then
windows_registry_delete("windows", "win_cursor_speed", "2")
windows_registry_delete("windows", "win_cursor_speed", "2")
deleteOperation = 0
end
end


if setup_progress == 160 then


if deleteOperation == 0 then
windows_registry_delete("windows", "settings_taskbar_g", "25")
windows_registry_delete("windows", "settings_taskbar_g", "25")
end
if deleteOperation == 2 then
windows_registry_delete("windows", "settings_taskbar_b", "25")
windows_registry_delete("windows", "settings_taskbar_b", "25")
end
if deleteOperation == 4 then
windows_registry_delete("windows", "win_audio_frequency", "44100")
windows_registry_delete("windows", "win_audio_frequency", "44100")
end

else





if setup_progress == 310 then


if deleteOperation == 6 then
windows_registry_delete("windows", "settings_background_r", "33")
windows_registry_delete("windows", "settings_background_r", "33")
end
if deleteOperation == 8 then
windows_registry_delete("windows", "win_cursor_color", "default")
windows_registry_delete("windows", "win_cursor_color", "default")
end
if deleteOperation == 10 then
windows_registry_delete("windows", "win_screensaver", "psr")
windows_registry_delete("windows", "win_screensaver", "psr")
end
end




if setup_progress == 360 then



if deleteOperation == 12 then
windows_registry_delete("windows", "settings_background_g", "33")
windows_registry_delete("windows", "settings_background_g", "33")
end
if deleteOperation == 14 then
windows_registry_delete("windows", "settings_background_b", "33")
windows_registry_delete("windows", "settings_background_b", "33")
end
if deleteOperation == 16 then
windows_registry_delete("windows", "taskbar_draw_type", "bottom")
windows_registry_delete("windows", "taskbar_draw_type", "bottom")
deleteOperation = 0
end

end









end


end

end










if setup_menu == "recovery" then

if windows_button(40, 100, 285, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then

setup_menu = "change_password"
setup_play_cycle = true

end
print(40,100,0.8,"Change Password",white)



if windows_button(40, 100+45, 285, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then

setup_menu = "restore_defaults"
setup_play_cycle = true

end
print(40,100+45,0.8,"Restore Defaults",white)


--if windows_button(40, 100+45*2, 285, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then

--setup_menu = "clear_registry"
--setup_play_cycle = true

--end
--print(40,100+45*2,0.8,"Clear Registry",white)


if windows_button(40, 100+45*2, 285, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then

setup_menu = "cmd"
setup_play_cycle = true

end
print(40,100+45*2,0.8,"Open Command Prompt",white)



if windows_button(40, 100+45*3, 285, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then

setup_menu = "regedit"
setup_play_cycle = true

end
print(40,100+45*3,0.8,"Open Registry Edit",white)






if windows_button(40, 380, 180, 35, "box", windows_setup_assistant_background, transparent_grey, "", false, 9732) == true then
setup_menu = ""
setup_progress = setup_progress - 100
end
print(40,380,0.8,"Go Back",white)

end




if setup_menu == "cmd" then


if setup_password_authenticated == false then
print(40,100+15,0.8,"Authenticate your current password.",white)

if windows_box_text_input(40,100+45, 315+20, 35, "box", windows_setup_assistant_background, "compare " .. windows_registry_get("windows", "win_password")) == true then
setup_password_authenticated = true
windows_text_input_stream = ""


end

if windows_text_input_stream == "" then
print(40,100+45,0.8,"Enter Current Password",white)
else
print(40,100+45,0.8,windows_text_input_stream,white)

end


else
windows_root_administrator_access = true
cmd = true
end

end





if setup_menu == "regedit" then


if setup_password_authenticated == false then
print(40,100+15,0.8,"Authenticate your current password.",white)

if windows_box_text_input(40,100+45, 315+20, 35, "box", windows_setup_assistant_background, "compare " .. windows_registry_get("windows", "win_password")) == true then
setup_password_authenticated = true
windows_text_input_stream = ""


end

if windows_text_input_stream == "" then
print(40,100+45,0.8,"Enter Current Password",white)
else
print(40,100+45,0.8,windows_text_input_stream,white)

end


else
windows_root_administrator_access = true
regedit = true
end

end







  

getPrograms()
 getCursor()
















if windows_crash_status == true then
Screen.clear(dark_blue)
print(10,10,1.4,":(",white)
print(10,80,0.9,"An error has occured: ",white)
print(10,120,0.4,windows_crash_message,white)

if windows_key_pressed() == "WINDOWS_VK_CROSS" then

boot_screen = true
os_running = false
windows_crash_status = false
end
end












end



Screen.flip()
Screen.waitVblankStart()

end




function get_login_screen()

--if windows_registry_get("windows", "win_MagicGate_mc02") == "empty" then

--else

--if windows_registry_get("windows", "win_MagicGate_mc02") == windows_registry_magic_gate_get() then

--login_screen = false
--os_running = true

--end


--end


Screen.clear()
windows_keyboard_input()
pad = Pads.get()

draw_image_scale(desktop, 0, 0, 640, 448)
draw_image_scale(login_screen_background, 0, 0, 640, 448)
draw_image_scale(user_icon, 250, 100, 147, 136)
print(230, 245, 0.8, windows_username, white)



if windows_box_text_input(225, 270, 193, 24, "image", login_bar, "compare " .. windows_password) then
login_screen = false
os_running = true
end

--debug_getProcesses()
if windows_text_input_stream == "" then
print(225, 277, 0.4, "Password", grey)
else
print(225, 277, 0.4, windows_text_input_stream, grey)
end


getPrograms()

getCursor()
debugMode()




if windows_security_return == 1 then

Screen.clear(red)
print(10,10,1.4,"!",white)
print(10,80,0.9,"Unauthorized file operation detected",white)

end

if windows_crash_status == true then
Screen.clear(dark_blue)
print(10,10,1.4,":(",white)
print(10,80,0.9,"An error has occured: ",white)
print(10,120,0.4,windows_crash_message,white)

if windows_key_pressed() == "WINDOWS_VK_CROSS" then

boot_screen = true
login_screen = false
os_running = false
windows_crash_status = false
end
end


Screen.flip()
Screen.waitVblankStart()


end


while login_screen == true do


if force_setup == false then
if setup_assistant_write_stack == true then

if fileOperation == 16 then
windows_registry_write("windows", "win_password", windows_password)
end

if fileOperation == 17 then
windows_registry_write("windows", "win_username", windows_username)
end

if fileOperation == 18 then
windows_registry_write("windows", "win_desktop", "desktop.jpg")
fileOperation = fileOperation + 1
end
end





end

if fileOperation == 19 then

windows_root_administrator_access = false
if stack_get_colors == true then
windows_highlight_color = Color.new(tonumber(windows_registry_get("windows", "settings_highlight_r")),tonumber(windows_registry_get("windows", "settings_highlight_g")),tonumber(windows_registry_get("windows", "settings_highlight_b")))
windows_taskbar_color = Color.new(tonumber(windows_registry_get("windows", "settings_taskbar_r")),tonumber(windows_registry_get("windows", "settings_taskbar_g")),tonumber(windows_registry_get("windows", "settings_taskbar_b")))
windows_background_color = Color.new(tonumber(windows_registry_get("windows", "settings_background_r")),tonumber(windows_registry_get("windows", "settings_background_g")),tonumber(windows_registry_get("windows", "settings_background_b")))
desktop = Graphics.loadImage("System/Windows10/UserData/Pictures/" .. windows_registry_get("windows", "win_desktop"))


stack_get_colors = false
end

get_login_screen()
end


if username == "" then


else

if stack_get_colors == true then
windows_highlight_color = Color.new(tonumber(windows_registry_get("windows", "settings_highlight_r")),tonumber(windows_registry_get("windows", "settings_highlight_g")),tonumber(windows_registry_get("windows", "settings_highlight_b")))
windows_taskbar_color = Color.new(tonumber(windows_registry_get("windows", "settings_taskbar_r")),tonumber(windows_registry_get("windows", "settings_taskbar_g")),tonumber(windows_registry_get("windows", "settings_taskbar_b")))
windows_background_color = Color.new(tonumber(windows_registry_get("windows", "settings_background_r")),tonumber(windows_registry_get("windows", "settings_background_g")),tonumber(windows_registry_get("windows", "settings_background_b")))
desktop = Graphics.loadImage("System/Windows10/UserData/Pictures/" .. windows_registry_get("windows", "win_desktop"))
windows_taskbar_draw_type = windows_registry_get("windows", "taskbar_draw_type")
windows_cursor_movement_speed_x = tonumber(windows_registry_get("windows", "win_cursor_speed"))
windows_cursor_movement_speed_y = windows_cursor_movement_speed_x
if windows_registry_get("windows", "win_audio") == "enable" then

windows_audio_enabled = true

else

if windows_registry_get("windows", "win_audio") == "disable" then
windows_audio_enabled = false

else

windows_crash("Invalid expression called in registry:windows variable:audio data:" .. windows_registry_get("windows", "win_audio") .. "\n\nExpected expression is either enable or disable")

end





end


if windows_registry_get("windows", "win_cursor_color") == "default" then
windows_custom_cursor = false

else

local checkColor = windows_registry_get("windows", "win_cursor_color")
windows_custom_cursor = true

if checkColor == "green" then

windows_cursor_color = green
else

if checkColor == "red" then

windows_cursor_color = red_cursor_patch
else

if checkColor == "blue" then

windows_cursor_color = blue_cursor_patch
else

if checkColor == "dark_blue" then

windows_cursor_color = dark_blue_cursor_patch
else

if checkColor == "pink" then

windows_cursor_color = pink_cursor_patch
else

if checkColor == "purple" then

windows_cursor_color = purple
else

if checkColor == "dark_grey" then

windows_cursor_color = dark_grey_cursor_patch
else

if checkColor == "grey" then

windows_cursor_color = grey_cursor_patch
else



if checkColor == "black" then

windows_cursor_color = black
else

if checkColor == "yellow" then

windows_cursor_color = yellow_cursor_patch
else

if checkColor == "brown" then

windows_cursor_color = brown
else


windows_crash("Invalid expression called in registry:windows variable:win_cursor_color data:" .. windows_registry_get("windows", "win_cursor_color") .. "\n\nExpected color not found")


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



windows_frequency = tonumber(windows_registry_get("windows", "win_audio_frequency"))

local checkscv = string.sub(windows_registry_get("windows", "win_screensaver"),0,3)

if checkscv == "psr" then

windows_screensaver_type = "psr"

end

if checkscv == "off" then

windows_screensaver_type = "off"

end

if checkscv == "msg" then

windows_screensaver_type = "msg"

windows_screensaver_message = string.sub(windows_registry_get("windows", "win_screensaver"),5)

end

if checkscv == "img" then

windows_screensaver_type = "img"

local lui = string.sub(windows_registry_get("windows", "win_screensaver"),5)
windows_screensaver_image = Graphics.loadImage("System/Windows10/UserData/Pictures/" .. lui)

end

if checkscv == "ran" then

windows_screensaver_type = "ran"

end

if checkscv == "nop" then

windows_screensaver_type = "nop"

end

if checkscv == "nop" or
checkscv == "psr" or
checkscv == "img" or
checkscv == "msg" or
checkscv == "off"
then

else

windows_crash("Invalid expression called in registry:windows variable:win_screensaver data:" .. windows_registry_get("windows", "win_screensaver") .. "\n\nExpected expressions: nop, off, msg, img, ran")

end



if windows_registry_get("windows", "win_focus_assist") == "false" then

focus_assist = false

end

if windows_registry_get("windows", "win_focus_assist") == "true" then

focus_assist = true

end


stack_get_colors = false

end




get_login_screen()
end




end





while os_running == true do

windows_keyboard_input()
windows_cursor_selection = ""

windows_background(0, 0, 640, 448, "box", transparent, "WINDOWS SYSTEM", 9732)

if windows_full_screen == false then

if windows_inactivity_cycles <= 5000 then
windows_inactivity_cycles = windows_inactivity_cycles + 1
end

if windows_keyboard_inactivity_cycles <= 2000 then

windows_keyboard_inactivity_cycles = windows_keyboard_inactivity_cycles + 1

end

if windows_shutdown_active == true then

windows_shutdown_cycles = windows_shutdown_cycles + 1

if windows_shutdown_cycles == windows_scheduled_shutdown then

System.exitToBrowser()

end
end

--comeback
if windows_inactivity_cycles == 5000 then

windows_screensaver_active = true

end

if windows_keyboard_inactivity_cycles == 2000 then

windows_usb_keyboard_active = false


end

end


pad = Pads.get()
freevram = System.getFreeMemory()


if freevram <= 100 then

windows_crash("The system has run out of memory.")

end



if windows_security_return == 1 then

Screen.clear(red)
print(10,10,1.4,"!",white)
print(10,80,0.9,"Unauthorized file operation detected",white)

end

if windows_crash_status == true then
Screen.clear(dark_blue)
print(10,10,1.4,":(",white)
print(10,80,0.9,"An error has occured: ",white)
print(10,120,0.4,windows_crash_message,white)

if windows_key_pressed() == "WINDOWS_VK_CROSS" then

System.exitToBrowser()
end
end


if windows_full_screen == true then
getPrograms()
getCursor()
end


if windows_crash_status == false and windows_security_return == 0 and windows_full_screen == false then
getDesktop()
getDesktopIcons()
getPrograms()
startMenu()
actionCenter()
runTab()
getTaskbar()
windows_get_notification()
getCursor()
debugMode()
end

 

if windows_screensaver_active == true then

getScreensaver()

end






if windows_key_pressed() == "WINDOWS_VK_START" then

if start_menu_active == false then
start_menu_active = true
else
start_menu_active = false
end
end



if windows_key_pressed() == "WINDOWS_VK_RUN" then


windows_run_tab_active = true

end


 


if keyboard_notification == 0 then
if windows_usb_keyboard_active == true then
windows_push_notification("USB Keyboard Active", "You can now use your \nUSB keyboard for\ntyping and interaction.")
keyboard_notification = 1
end

end




if windows_audio_enabled == false then

if windows_play_wav == true then
windows_play_wav = false
windows_push_notification("Audio Disabled", "Audio could not be played\nbecause audio is disabled.")

end

end


if night_light == true then
Graphics.drawRect(0,0,640,448,night_light_color)
end

windows_graphical_memory_handling_logic(os_running) 

Screen.flip()
Screen.waitVblankStart()




end







