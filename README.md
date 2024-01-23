# Windows-10-for-PlayStation-2
A made-from-scratch port of Windows 10 for the PlayStation 2.




All glory to God, Jesus Christ, and the Holy Spirit.

This project was made for the glory of God and the fun of programming. Make sure you read the Bible and believe in God. Nothing would be possible without His blessing and grace.

Windows 10 for PlayStation 2 is a Plushie Studios project (2023-2024). The source code and programming are available to all and are not copyrighted. You may use our code for whatever purposes you desire. Microsoft does not, and is in no way a part of the development of this operating system. We do not intend to impersonate or falsely mislead users that this is a Microsoft product. The intention of this operating system is to imitate Windows 10 as closely as possible with completely original source code. This operating system was developed using PS2SDK and Enceladus.




# Operating System Functions:

GetFileName(url) - Returns the file name of the file path given. 

GetFileExtension(url) - Returns the file extension of the file path given.

loadELF(elf) - Loads a PlayStation 2 Executable file.

createFile(path) - Creates a file at the given path.

createDirectory(path) - Creates a directory at the given path.

removeDirectory(path) - Removes a directory at the given path.

renameDirectory(path, name) - Removes a directory at the given path then creates a replacement with the new name.

playWav(wav, frequency) - Plays a wav file at the frequency given. Pass in windows_frequency for the system default.

getProgram(program) - Adds a program to the Windows 10 stack. To add an application refer to the section "Adding an Application to the Stack"






# Registry Functions

fileOperation - Integer which is passed globally when a file operation is conducted. Use this to track installation progress.

windows_registry_get(program_name, variable) - Returns the value of the given registry.

windows_registry_write(program_name, variable, data) - Writes the given value to the registry indicated.

windows_registry_create(program_name, variable) - Creates a registry.




# Built-in Colors


The following types have already been initialized and can be used without additional work:

red, red_cursor_patch, green, blue, blue_cursor_patch, dark_blue, dark_blue_cursor_patch, dark_green, dark_red, aqua, cyan, purple, dark_purple, dark_white, dark_yellow, bright_yellow, pink, pink_cursor_patch, white, black, grey, grey_cursor_patch, yellow, yellow_cursor_patch, brown, dark_grey, dark_grey_cursor_patch, transparent, transparent_blue, transparent_purple, transparent_grey, transparent_red, transparent_green, transparent_dark_blue, transparent_dark_green, transparent_dark_red, transparent_cyan, transparent_aqua, transparent_purple, transparent_dark_purple, transparent_white, transparent_dark_white, transparent_bright_yellow, transparent_dark_yellow, transparent_pink, transparent_black, transparent_grey.


Windows 10 for PlayStation 2 has global colors that are used for highlighting, backgrounds, and other interfaces. These colors are customizable by the user and allows them to make applications compatible with their needs. To utilize these features, simply use the following colors in your applications:

windows_highlight_color - For highlighting such as buttons.
windows_box_color - For pop-ups and boxes.
windows_background_color - For general application backgrounds.
windows_taskbar_color - For taskbar attachments or as an extra color.



# Windows 10 API


windows_full_screen - A boolean used to tell the operating system whether it is in full screen mode or not.

windows_system_origin - A string that is initialized at launch. Use this to localize programs for PCXS2 Emulator or PlayStation 2.

windows_government_classification_status - Can be 0, 1, or 2. 0 for regular use, 1 for unclassified, and 2 for classified.

windows_cursor_movement_speed_x - An integer used for x position movement speed.

windows_cursor_movement_speed_y - An integer used for y position movement speed.

windows_application_position_x[id] - Used to store the x application position of a program id.

windows_application_position_y[id] - Used to store the y application position of a program id.

windows_text_input_stream - A global string used to store keyboard or Windows Virtual Keyboard input.

windows_debug_mode - Prints debug information on the screen and allows for global debugging of applications.

windows_active_highlight - A global string that is used to check the active highlight. This can be used in conjunction with windows_button action codes which will tell windows_active_highlight what button is currently being highlighted. This can be useful for conditional collision detection.

windows_security_return - An integer used to stop unuathorized file operations. 0 means the system does not detect any nefarious activity by the applications. 1 means that an application attempted to make an unauthorized file operation.

windows_root_administrator_access - A boolean that allows for privelege escalation. Can be enabled in Command Prompt using the command 'root'.

windows_frequency - The system default audio frequency. Is 44000hz unless altered by the user.

windows_audio_enabled - A boolean that temporarily disables audio if false and enables if true.

windows_lock_cursor - A boolean which disables cursor movement if enabled. Use this for applications that are meant to be played as a full screen game or to temporarily disable cursor movement.

windows_vk_global_copy - A boolean which can be used to check if the copy key was pressed.

windows_vk_global_paste - A boolean which can be used to check if the paste key was pressed.

windows_vk_global_cut - A boolean which can be used to check if the cut key was pressed.

windows_vk_global_desktop - A boolean which can be used to check if the desktop key was pressed.

windows_vk_global_enter - A boolean which can be used to check if the enter key was pressed.

windows_vk_global_backspace - A boolean which can be used to check if the backspace key was pressed.

windows_vk_global_start - A boolean which can be used to check if the start key was pressed.

windows_copy_memory - A string which stores the key copy memory.

windows_bootup_message - A string which can be used to display a bootup message after updates.

windows_request_write_permissions(request) - Used to make temporary privelege escalation requests by applications.

windows_close_write_permissions() - Closes privelege escalation.

print(posx, posy, scale, text, color) - Prints text on the screen.

windows_crash(message) - Initiates a Blue Screen of Death with the message given.

windows_system_date(posx, posy, scale, color, getDay) - Prints the current date. If getDay is true then it will return the name of the day, if false it will give the date.

windows_system_date_ret(getDay) - Returns the current date.

windows_system_time(posx, posy, scale, color) - Prints the current time.

windows_push_notification(subject, notification) - Pushes a notification to the Notification Center.

draw_image(image, posx, posy) - Draws an image.

draw_image_scale(s, pos1, pos2, sc1, sc2) - Draws a scaled image.

draw_image_color(image, posx, posy, color) - Draws an image with a color filter.

draw_image_scale_color(s, pos1, pos2, sc1, sc2, color) - Draws a scaled image with a color filter.

register_desktop_icon(name, icon, directory) - Used to register a desktop icon.

get_range(compare,min,max) - An important function used for collision detection and as a less hardware intensive alternate to the for loop.

windows_cancel_sleep() - Used to cancel inactivity cycles to disrupt the screensaver.

windows_key_pressed() - Returns the key pressed. Below are a list of applicable returns:

WINDOWS_VK_RUN, WINDOWS_VK_START, WINDOWS_VK_DRAG_LEFT, WINDOWS_VK_DRAG_RIGHT, WINDOWS_VK_DRAG_UP, WINDOWS_VK_DRAG_DOWN, WINDOWS_VK_UP, WINDOWS_VK_DOWN, WINDOWS_VK_LEFT, WINDOWS_VK_RIGHT, WINDOWS_VK_R1, WINDOWS_VK_R2, WINDOWS_VK_L1, WINDOWS_VK_L2, WINDOWS_VK_ESC, WINDOWS_VK_TRIANGLE, WINDOWS_VK_CROSS, WINDOWS_VK_CIRCLE, WINDOWS_VK_SQUARE, and WINDOWS_VK_ENTER.

windows_clear_graphical_memory() - Clears graphical memory.

windows_graphical_memory_handling_logic(check) - Used to handle graphical memory loading or clearing for the operating system graphics.

get_loading_dot(posx, posy, cycles) - Gets a loading dot for the number of cycles given.

windows_draw_right_bar() - Draws the right-click bar.

For the following resourse_type can be: box, image,

windows_box_text_input(posx, posy, xlength, ylength, resource_type, resource, action_code) - Builds a text input box. If action_code equals "compare " then the following characters in the string will be used as a conditional for a check. If the check returns true, then the code for the text input box will be executed.

windows_box_text_input_string(posx, posy, xlength, ylength, resource_type, resource) - Builds a text input string box. This varies in the previous input box in that it does not compare the information given, rather it is used to pass it into another variable for purposes such as data storage and user input.

windows_button(posx, posy, xlength, ylength, resource_type, resource, highlight, active_code, sleep, id) - Builds a button. 














# Process ID's

windowsvk                                   0
settings                                    1
explorer                                    2
regedit                                     3 and 4
cmd                                         5
calc                                        6
notepad                                     7
paint                                       8
windows                                     9732








#Adding an Application to the Stack


