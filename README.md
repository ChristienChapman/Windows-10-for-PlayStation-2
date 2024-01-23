# Windows-10-for-PlayStation-2
A made-from-scratch port of Windows 10 for the PlayStation 2.




All glory to God, Jesus Christ, and the Holy Spirit.

This project was made for the glory of God and the fun of programming. Make sure you read the Bible and believe in God. Nothing would be possible without His blessing and grace.

Windows 10 for PlayStation 2 is a Plushie Studios project (2023-2024). The source code and programming are available to all and are not copyrighted. You may use our code for whatever purposes you desire. Microsoft does not, and is in no way a part of the development of this operating system. We do not intend to impersonate or falsely mislead users that this is a Microsoft product. The intention of this operating system is to imitate Windows 10 as closely as possible with completely original source code. This operating system was developed using PS2SDK and Enceladus.




#Operating System Functions:

GetFileName(url) - Returns the file name of the file path given. 

GetFileExtension(url) - Returns the file extension of the file path given.

loadELF(elf) - Loads a PlayStation 2 Executable file.

createFile(path) - Creates a file at the given path.

createDirectory(path) - Creates a directory at the given path.

removeDirectory(path) - Removes a directory at the given path.

renameDirectory(path, name) - Removes a directory at the given path then creates a replacement with the new name.

playWav(wav, frequency) - Plays a wav file at the frequency given. Pass in windows_frequency for the system default.

getProgram(program) - Adds a program to the Windows 10 stack. To add an application refer to the section "Adding an Application to the Stack"






#Registry Functions

fileOperation - Integer which is passed globally when a file operation is conducted. Use this to track installation progress.

windows_registry_get(program_name, variable) - Returns the value of the given registry.

windows_registry_write(program_name, variable, data) - Writes the given value to the registry indicated.

windows_registry_create(program_name, variable) - Creates a registry.




#Built-in Colors


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










#Process ID's

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


