# Windows 10-for PlayStation 2
A made-from-scratch port of Windows 10 for the PlayStation 2.




All glory to God, Jesus Christ, and the Holy Spirit.

This project was made for the glory of God and the fun of programming. Make sure you read the Bible and believe in God. Nothing would be possible without His blessing and grace.

Windows 10 for PlayStation 2 is a Plushie Studios project (2023-2024). The source code and programming are available to all and are not copyrighted. You may use our code for whatever purposes you desire. Microsoft does not, and is in no way a part of the development of this operating system. We do not intend to impersonate or falsely mislead users that this is a Microsoft product. The intention of this operating system is to imitate Windows 10 as closely as possible with completely original source code. This operating system was developed using PS2SDK and Enceladus.

## Discord server for development: https://discord.gg/HSbASGDgmY

Feel free to contibute to this project and help make this operating system more viable and functional!



### Installation:


Copy the System folder to the root of your USB Drive and place Windows 10.elf anywhere you wish. Once you run Windows 10.elf it will begin the Windows 10 Setup Assistant which will install the operating system.



### Features:

Support for USB Keyboards.

Support for wav audio format alongside the ability to pull album covers.

Basic operating system functions such as a desktop, cursor, buttons, and data storage.

A file explorer.

Command Prompt for managing the operating system.

Registry Editor to allow for the creation of registries and variables which can be used by applications.

A calculator with basic mathematical logic.

A fully featured Settings application with personalization features.

Screensaver.

Security checks and priveleges.

And much more!







# Operating System Functions:

```GetFileName(url)``` - Returns the file name of the file path given. 

```GetFileExtension(url)``` - Returns the file extension of the file path given.

```loadELF(elf)``` - Loads a PlayStation 2 Executable file.

```createFile(path)``` - Creates a file at the given path.

```createDirectory(path)``` - Creates a directory at the given path.

```removeDirectory(path)``` - Removes a directory at the given path.

```renameDirectory(path, name)``` - Removes a directory at the given path then creates a replacement with the new name.

```playWav(wav, frequency)``` - Plays a wav file at the frequency given. Pass in windows_frequency for the system default.

```getProgram(program)``` - Adds a program to the Windows 10 stack. To add an application refer to the section "Creating a program"






# Registry Functions

```fileOperation``` - Integer which is passed globally when a file operation is conducted. Use this to track installation progress.

```windows_registry_get(program_name, variable)``` - Returns the value of the given registry.

```windows_registry_write(program_name, variable, data)``` - Writes the given value to the registry indicated.

```windows_registry_create(program_name, variable)``` - Creates a registry.




# Built-in Colors


The following types have already been initialized and can be used without additional work:

```red, red_cursor_patch, green, blue, blue_cursor_patch, dark_blue, dark_blue_cursor_patch, dark_green, dark_red, aqua, cyan, purple, dark_purple, dark_white, dark_yellow, bright_yellow, pink, pink_cursor_patch, white, black, grey, grey_cursor_patch, yellow, yellow_cursor_patch, brown, dark_grey, dark_grey_cursor_patch, transparent, transparent_blue, transparent_purple, transparent_grey, transparent_red, transparent_green, transparent_dark_blue, transparent_dark_green, transparent_dark_red, transparent_cyan, transparent_aqua, transparent_purple, transparent_dark_purple, transparent_white, transparent_dark_white, transparent_bright_yellow, transparent_dark_yellow, transparent_pink, transparent_black, transparent_grey.```


Windows 10 for PlayStation 2 has global colors that are used for highlighting, backgrounds, and other interfaces. These colors are customizable by the user and allows them to make applications compatible with their needs. To utilize these features, simply use the following colors in your applications:

```windows_highlight_color``` - For highlighting such as buttons.
```windows_box_color``` - For pop-ups and boxes.
```windows_background_color``` - For general application backgrounds.
```windows_taskbar_color``` - For taskbar attachments or as an extra color.



# Windows 10 API


```windows_full_screen``` - A boolean used to tell the operating system whether it is in full screen mode or not.

```windows_system_origin``` - A string that is initialized at launch. Use this to localize programs for PCXS2 Emulator or PlayStation 2.

```windows_government_classification_status``` - Can be 0, 1, or 2. 0 for regular use, 1 for unclassified, and 2 for classified.

```windows_cursor_movement_speed_x``` - An integer used for x position movement speed.

```windows_cursor_movement_speed_y``` - An integer used for y position movement speed.

```windows_application_position_x[id]``` - Used to store the x application position of a program id.

```windows_application_position_y[id]``` - Used to store the y application position of a program id.

```windows_text_input_stream``` - A global string used to store keyboard or Windows Virtual Keyboard input.

```windows_debug_mode``` - Prints debug information on the screen and allows for global debugging of applications.

```windows_active_highlight``` - A global string that is used to check the active highlight. This can be used in conjunction with windows_button action codes which will tell windows_active_highlight what button is currently being highlighted. This can be useful for conditional collision detection.

```windows_security_return``` - An integer used to stop unuathorized file operations. 0 means the system does not detect any nefarious activity by the applications. 1 means that an application attempted to make an unauthorized file operation.

```windows_root_administrator_access``` - A boolean that allows for privelege escalation. Can be enabled in Command Prompt using the command 'root'.

```windows_frequency``` - The system default audio frequency. Is 44000hz unless altered by the user.

```windows_audio_enabled``` - A boolean that temporarily disables audio if false and enables if true.

```windows_lock_cursor``` - A boolean which disables cursor movement if enabled. Use this for applications that are meant to be played as a full screen game or to temporarily disable cursor movement.

```windows_vk_global_copy``` - A boolean which can be used to check if the copy key was pressed.

```windows_vk_global_paste``` - A boolean which can be used to check if the paste key was pressed.

```windows_vk_global_cut``` - A boolean which can be used to check if the cut key was pressed.

```windows_vk_global_desktop``` - A boolean which can be used to check if the desktop key was pressed.

```windows_vk_global_enter``` - A boolean which can be used to check if the enter key was pressed.

```windows_vk_global_backspace``` - A boolean which can be used to check if the backspace key was pressed.

```windows_vk_global_start``` - A boolean which can be used to check if the start key was pressed.

```windows_copy_memory``` - A string which stores the key copy memory.

```windows_bootup_message``` - A string which can be used to display a bootup message after updates.

```windows_request_write_permissions(request)``` - Used to make temporary privelege escalation requests by applications.

```windows_close_write_permissions()``` - Closes privelege escalation.

```print(posx, posy, scale, text, color)``` - Prints text on the screen.

```windows_crash(message)``` - Initiates a Blue Screen of Death with the message given.

```windows_system_date(posx, posy, scale, color, getDay)``` - Prints the current date. If getDay is true then it will return the name of the day, if false it will give the date.

```windows_system_date_ret(getDay)``` - Returns the current date.

```windows_system_time(posx, posy, scale, color)``` - Prints the current time.

```windows_push_notification(subject, notification)``` - Pushes a notification to the Notification Center.

```draw_image(image, posx, posy)``` - Draws an image.

```draw_image_scale(s, pos1, pos2, sc1, sc2)``` - Draws a scaled image.

```draw_image_color(image, posx, posy, color)``` - Draws an image with a color filter.

```draw_image_scale_color(s, pos1, pos2, sc1, sc2, color)``` - Draws a scaled image with a color filter.

```register_desktop_icon(name, icon, directory)``` - Used to register a desktop icon.

```get_range(compare,min,max)``` - An important function used for collision detection and as a less hardware intensive alternate to the for loop.

```windows_cancel_sleep()``` - Used to cancel inactivity cycles to disrupt the screensaver.

```windows_key_pressed()``` - Returns the key pressed. Below are a list of applicable returns:

```WINDOWS_VK_RUN, WINDOWS_VK_START, WINDOWS_VK_DRAG_LEFT, WINDOWS_VK_DRAG_RIGHT, 
WINDOWS_VK_DRAG_UP, WINDOWS_VK_DRAG_DOWN, WINDOWS_VK_UP, WINDOWS_VK_DOWN,
WINDOWS_VK_LEFT, WINDOWS_VK_RIGHT, WINDOWS_VK_R1, WINDOWS_VK_R2, WINDOWS_VK_L1,
 WINDOWS_VK_L2, WINDOWS_VK_ESC, WINDOWS_VK_TRIANGLE, WINDOWS_VK_CROSS, WINDOWS_VK_CIRCLE,
 WINDOWS_VK_SQUARE, and WINDOWS_VK_ENTER.
```

```windows_clear_graphical_memory()``` - Clears graphical memory.

```windows_graphical_memory_handling_logic(check)``` - Used to handle graphical memory loading or clearing for the operating system graphics.

```get_loading_dot(posx, posy, cycles)``` - Gets a loading dot for the number of cycles given.

```windows_draw_right_bar()``` - Draws the right-click bar.

For the following resourse_type can be: box, image,

```windows_box_text_input(posx, posy, xlength, ylength, resource_type, resource, action_code)``` - Builds a text input box. If action_code equals "compare " then the following characters in the string will be used as a conditional for a check. If the check returns true, then the code for the text input box will be executed.

```windows_box_text_input_string(posx, posy, xlength, ylength, resource_type, resource)``` - Builds a text input string box. This varies in the previous input box in that it does not compare the information given, rather it is used to pass it into another variable for purposes such as data storage and user input.

```windows_button(posx, posy, xlength, ylength, resource_type, resource, highlight, active_code, sleep, id)``` - Builds a button.

```windows_background(posx, posy, xlength, ylength, resource_type, resource, name, id)``` - Builds a background for an application. You will need to use this to create the collision for your application so the system can find it in it's application focus when the user has their cursor within it's area.

```application_focus_bar(posx, posy, xlength, ylength, name, id)``` - This is used to allow the user to move the application across the screen.

```application_focus_button(posx, posy, xlength, ylength, type, id)``` - Builds an application focus button. This is used in conjunction with the application focus bar. The 'type' input is used to determine the kind of button in use. Applicable syntax for 'type' are: exit, minimize, maximize. Returns true when the button is pressed.

```windows_right_bar_status()``` - Toggles the right side bar. This function is meant to be used in conjunction with a button or a Windows Virtual Keyboard input.

```findRunCommand(syntax)``` - Used to execute a script if the syntax is found.

```windows_get_key(keyboard_stream, hexidecimal, string)``` - Not to be confused with windows_key_pressed(). This is the main function used to convert hexidecimal values from a keyboard stream into a string that the operating system can understand.

```windows_keyboard_input()``` - This function must be called to use keyboard input. Traditionally, the operating system will use this function while os_running is true.





# Lua Functions:

```System.clearNumberOfDirectories()``` - Clears number of directories count.

```System.getNumberOfDirectories()``` - Gets the number of directories.

```System.listDirectory_NoUpdate()``` - Same a System.listDirectory() but without number of directory update.

```Timer.systemTime()``` - Returns a string from the PlayStation 2 hardware. Due to the hardware returning time at delayed interval use windows_system_time which already patches the information.

```Sound.playWav()``` - Plays a wav audio file with 44100hz frequency.

```Sound.playWav_CustomFrequency``` - Plays a wav audio file with frequency indicated.











# Process ID's

Windows 10 for PlayStation 2 stores programs with process id's. You must keep these separate from each other or else there will be conflicts.

windowsvk 0

settings 1

explorer 2

regedit 3 and 4

cmd 5

calc 6

notepad 7

paint 8

windows 9732





# Tutorials:




## 1. Creating a program


Windows 10 for PlayStation 2 loads programs from the System/Windows10/System32/programs folder. To create a program, make a .lua file in the programs folder.

There are a few basic functions that you must include in your program in order to utilize basic features of the operating system. For this tutorial we will be creating a program named helloworld.lua.

Before we build our program, we will need a global boolean that the operating system can access. This will allow us to open and close the program in the future. This boolean should always be false when initialized. If it is set to true, then the program will start automatically. This is useful for debugging and testing purposes but leaving these in your releases will clutter up the screen.


```
helloworld = false
```

Next, we will need to intialize our application position and id. Refer to what Process ID's are in use and choose one that is open. Windows 10 for PlayStation 2 is capable of storing 10,000 ids. You do not have to intitialize the application position, however, for the purpose of drawing the window on the screen in the manner we want to, this is necessary. Depending on the size of your window you may or may not need to manually initialize your application position.



```
windows_application_position_y[109] = windows_application_position_y[109] - 70
```


We will now need to create our user interface function. This will be used within our program for the graphical output of our program. This will be closely used in conjunction with our init function which is where we will store most of our program's code. As you can see within this function, we printed "Hello World" at a position stored in windows_applciation_position_x and windows_application_position_y. You will use both application positions as a means to anchor your program to your process id's position. This is necessary in order to make all graphics, text, and buttons within the program move alongside with the application focus bar. Otherwise, the program's assets will not move with it's application position. You must include windows_application_position_x and windows_application_position_y with all assets you intend to use in your program.

```
function helloworld_ui()



print(windows_application_position_x[109]-90,windows_application_position_y[109],0.45,"Hello world!",white)


end
```

Now we will turn our attention to the program's init function. This is our entry point into our application that the operating system will use. In here we will define our application's window, focus bar, and loops.


```
function helloworld_init()



local application_name = "Hello World"
local application_color_1 = black
local application_color_2 = windows_highlight_color









application_focus_bar(windows_application_position_x[109]-20, windows_application_position_y[109]-20, 640, 17,application_name, 109)

if application_focus_button(windows_application_position_x[109]+510, windows_application_position_y[109]-20, 30, 17, "exit", 109) == true then

helloworld = false
windows_application_position_x[109] = 100
windows_application_position_y[109] = 100 - 70

end

if application_focus_button(windows_application_position_x[109]+480, windows_application_position_y[109]-20, 30, 17, "maximize", 109) == true then

windows_application_position_x[109] = 100
windows_application_position_y[109] = 100 - 70

end

if application_focus_button(windows_application_position_x[109]+460, windows_application_position_y[109]-20, 20, 17, "minimize", 109) == true then

windows_application_position_x[109] = 1000

end

windows_background(windows_application_position_x[109]-100, windows_application_position_y[109]-1, 640, 448, "box", application_color_1, application_name, 109)
helloworld_ui()


end


```

You will now need to add your new program to the system stack. In the System32 folder open get_programs.lua. Inside of the code you will add this:

```
openProgram("helloworld")
```

In the function getPrograms() add the following code:

```
if helloworld == true then

helloworld_init()

end
```


For the purposes of testing the program, go ahead and make helloworld true. You should see a window with a black background that says "Hello World".




## 2. Buttons


Windows 10 for PlayStation 2 has a pre-programmed function to make creation of buttons easy and customizable. In our hello world program we will create two buttons that will change the print to a different value.


Before we begin, we need to understand how a Windows button works and how to use it's function. When the cursor hits the collision of the button's hitbox, it will update the cursor to let the user know they can press it. Once the user presses the cross button on their DualShock 2 Controller it will send a return true signal to the if statement attached to the windows_button function. The operating system will then execute whatever code is inside the if statement. Thus, this is how we build graphical applications as you can use these buttons to do anything from move to another screen, create an object, say something, or do something. 

Now let's understand the function's inputs:

```
windows_button(posx, posy, xlength, ylength, resource_type, resource, highlight, active_code, sleep, id)
```

posx and posy must be an integer. Both correspond to x and y positions respectively. This tells the function where to draw the button on screen. This acts as a starting point for the button.

xlength and ylength must be an integer. Both correspond to the length of the button in the x and y positions respectively. This tells the function how wide and how long the button should be. 

resource_type can either be image or box. Depending on the resource type indicated it will affect the rest of the function. Do be cautious to not mix types in a button. Passing resource as an image when resource_type is set to box will crash the operating system. image will have resource require an image type. box will have resource require a color type. 

As described earlier, resource is dependent on the resource_type indicated. If resource_type is an image, resource must be an image. If it is a box, it must be a box.

highlight is always a color unless the string passed is empty or "". This means that if you want the highlight to be disabled, pass in "". Anything else passed into highlight will be regarded as a color. When the cursor hovers over the button the highlight color will be shown.

active_code is a string that tells windows_active_highlight what button is actively being highlighted. This is useful to create custom behaviors for when the user hovers over a button. You can check windows_active_highlight to be equal to the string of the active_code to wrap to the button. This allows for more customizability of the button's highlight.

sleep is a boolean. True will run System.sleep(1). False will not run the sleep cycle.

id must be an integer. This is used to have the button correspond to the application it is relative to.

Above helloworld_ui() declare local message = "". Clear out helloworld_ui() and replace it with this:


```
function helloworld_ui()



print(windows_application_position_x[109]-90,windows_application_position_y[109],0.45,message,white)

if windows_button(windows_application_position_x[109]-9+32, windows_application_position_y[109]+20, 60, 30, "box", red, white, "button_1", false, 109) == true then

message = "RED LIGHT"
end

if windows_button(windows_application_position_x[109]-9+32+100, windows_application_position_y[109]+20, 60, 30, "box", green, white, "button_2", false, 109) == true then

message = "GREEN LIGHT"
end

if windows_active_highlight == "button_1" then
print(windows_application_position_x[109]-90,windows_application_position_y[109]+100,0.45,windows_active_highlight,white)
end

if windows_active_highlight == "button_2" then
print(windows_application_position_x[109]-90,windows_application_position_y[109]+100,0.45,windows_active_highlight,white)
end


end
```


Now run the program. You should see two buttons, one red and one green. You should also see text that says which button is active.






## 3. Text Input


There are two types of text input included in this operating system. One that checks a string and compares it to another value and one that sends the information provided by the user off to another data type.

```
windows_box_text_input(posx, posy, xlength, ylength, resource_type, resource, action_code)
```

This particular function is used to compare the user input to another string. This is used for authentication purposes such as checking for a correct password.

posx, posy, xlength, and ylength all have the same behavior as these types apply to windows_button.

resource_type can either be image or box and has the same behavior as windows_button.

Depending on the resource_type, resource will either be a color type or an image type.

action_code can be left empty or equal compare. If set to compare, the character after the space "compare " will be the string that the input will check, and if equal to what the user inputs, return true. For example, if action_code equals ```"compare " .. windows_password``` then the string windows_password will be compared.

```
windows_box_text_input_string(posx, posy, xlength, ylength, resource_type, resource)
```

This is the other input function. It's purpose is solely to receive an input from the user and push to a data type as indicated in the attached code. This has the same behavior as the previous function or windows_button.

Now that we understand the differences between these two text input functions, now we can apply them. Below is an example of how we use these functions. The program below will check for a user's input for the name of the quiz, and then will proceed to a set of three questions. We will use both text input functions below. Before using this code, create a new program called quiz.lua and notate it's code into the operating system stack.

```
quiz = true

local question = {}
local answer = {}
local current_question = 0
local quiz_name = ""

question[1] = "A Star Wars game on PlayStation 2 with a sequel?"
answer[1] = "star wars battlefront ii"
question[2] = "This programming language?"
answer[2] = "lua"
question[3] = "Jane?"
answer[3] = "tarzan"
question[4] = "Quiz complete..."
answer[4] = "....."


function getQuestion(id)

print(windows_application_position_x[110]-90,windows_application_position_y[110]+13,0.45,question[id],white)
print(windows_application_position_x[110]-90,windows_application_position_y[110]+13+13,0.45,"Answer: " .. windows_text_input_stream,white)
if windows_box_text_input(windows_application_position_x[110]-90, windows_application_position_y[110]+26+13, 200, 35, "box", grey, "compare " .. answer[id]) == true then

current_question = current_question + 1
windows_text_input_stream = ""

end

end

function quiz_ui()



print(windows_application_position_x[110]-90,windows_application_position_y[110],0.45,quiz_name,white)

if current_question > 0 then
getQuestion(current_question)
end


end


function quiz_init()


local application_name = quiz_name
local application_color_1 = black
local application_color_2 = windows_highlight_color









application_focus_bar(windows_application_position_x[110]-20, windows_application_position_y[110]-20, 640, 17,application_name, 110)

if application_focus_button(windows_application_position_x[110]+510, windows_application_position_y[110]-20, 30, 17, "exit", 110) == true then

quiz = false
windows_application_position_x[110] = 100
windows_application_position_y[110] = 100 - 70

end

if application_focus_button(windows_application_position_x[110]+480, windows_application_position_y[110]-20, 30, 17, "maximize", 110) == true then

windows_application_position_x[110] = 100
windows_application_position_y[110] = 100 - 70

end

if application_focus_button(windows_application_position_x[110]+460, windows_application_position_y[110]-20, 20, 17, "minimize", 110) == true then

windows_application_position_x[110] = 1000

end


















windows_background(windows_application_position_x[110]-100, windows_application_position_y[110]-1, 640, 448, "box", application_color_1, application_name, 110)

if current_question == 0 then
if windows_box_text_input_string(windows_application_position_x[110]-90, windows_application_position_y[110]-90+120, 200, 35, "box", grey) == "enter" then
quiz_name = windows_text_input_stream
windows_text_input_stream = ""
current_question = 1
end
end
quiz_ui()




end

```




## 4. Registries


Windows 10 for PlayStation 2 utilizes registries for save data. A registry can contain a variable which contains the data that can be pulled to send to a data type. This is used throughout the operating system. All registries are stored in the folder System/Windows10/System32/registry. To create a registry, call the function ```windows_registry_create(program_name, variable)```

program_name is the name of the registry to be created, variable is the name of the variable to be created.

If you passed in "test" in both inputs the function would create a registry named test with a variable named test. You must create all variables in a registry before writing to them. All variables will be init with "empty."

To write to a variable within a registry, use the function ```windows_registry_write(program_name, variable, data)```

This function will delete the "empty" or previous data and write the new data in the registry and variable that was input.

In order to get data from a registry variable, use the function ```windows_registry_get(program_name, variable)```

This will return the data of the variable. 

Remember, these registry functions are very sensitive and your programs must be developed to accomodate the limitations of these functions. If the PlayStation 2 has a threading issue with writing or creating a registry or it's variables, then calling the get function will cause the console to freeze. Never run more than three write operations at once as the PlayStation 2 cannot handle more than three. Anything past the third write will be dropped. This problem does not seem to occur with create or get under normal circumstances. 

Here is an idea of how the registry system might be used:

```
windows_registry_create("AnimalCity", "animal")
local animal = windows_registry_get("AnimalCity", "animal")


function getAnimal()

if animal == "empty" then

windows_registry_write("AnimalCity", "animal", "cat")

end


end
```

