-- All glory to God, Jesus Christ, and the Holy Spirit.

dofile("System/boot.lua")

local red = Color.new(204, 0, 0)
local green = Color.new(0, 204, 0)
local blue = Color.new(0, 255, 255)
local purple = Color.new(127, 0, 255)
local pink = Color.new(255, 0, 255)

local option = 1
local speed = 1
local numberOfOptions = 0
local suboption = 1
local numberOfSubOptions = 7
local listdir = System.listDirectory(System.currentDirectory())
local directory = System.currentDirectory()
in_kernel = true
local dot_cycle = 0
local dot = ""
local input = ""
local type = ""
local space = ""
local numberOfDirectories = 0
local isDirInit = 0
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
local load_image = Graphics.loadImage("System/buffer.png")
enceladus_os = "System/system.lua"


if directory == "mass:" then
directory = "mass:\\"
end

local function clearMemory()


 option = 1
 speed = 1
 numberOfOptions = 0
 suboption = 1
 numberOfSubOptions = 7
 listdir = System.listDirectory(System.currentDirectory())
 directory = System.currentDirectory()
 dot_cycle = 0
 dot = ""
 input = ""
 type = ""
 space = ""
 numberOfDirectories = 0
 isDirInit = 0
 dir1 = nil
 dir2 = nil
 dir3 = nil
 dir4 = nil
 dir5 = nil
 dir6 = nil
 dir7 = nil
 dir8 = nil
 dir9 = nil
 dir10 = nil
 dir11 = nil
 dir12 = nil
 dir13 = nil
 dir14 = nil
dir15 = nil
dir16 = nil
imageViewer = nil
imageMode = false
load_image = Graphics.loadImage("System/buffer.png")






end





local function kernel_os_display(image)

imageMode = true
load_image = Graphics.loadImage(image)


end


local function kernel_os_update_display()

Screen.clear()
Graphics.drawImage(load_image, 0, 0)

end


local function kernel_os_image(image, posx, posy)

Graphics.drawImage(image, posx, posy)


end

local function kernel_os_play_wav(wav)

Screen.clear()

Font.fmPrint(0, 350, 0.8, "Playing " .. wav, blue)
Screen.flip()
Sound.playWav(wav)

end


local function kernel_os_play_sound(wav)

Sound.playWav(System.currentDirectory() .. "System/sounds/" .. wav .. ".wav")
Sound.playWav(System.currentDirectory() .. "System/sounds/" .. "dummy" .. ".wav")

end


local function getDir(dir)

option = 2
System.clearNumberOfDirectories()
directory = directory .. dir 
listdir = System.listDirectory(directory)
numberOfDirectories = System.getNumberOfDirectories();
numberOfOptions = numberOfDirectories
 
  
  
  --System.currentDirectory()
  
  end



Font.fmLoad()


while in_kernel == true do


-- OS functions always running

if imageMode == false then


  
  numberOfDirectories = System.getNumberOfDirectories()
  numberOfOptions = numberOfDirectories
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
  
  
  
  
  Screen.clear()
  
 
 



pad = Pads.get()






if Pads.check(pad, PAD_UP) then


  option = option -speed
  
  if option <= 0 then
    
    option = numberOfOptions-1
	
  
  
end




if option >= numberOfOptions then
  
  option = 1
  
  end
  
  
if option <= numberOfOptions then
if isDirInit == 0 then
input = listdir[option].name
else
input = "\\" .. listdir[option].name
end
end

kernel_os_play_sound("move")

end



if Pads.check(pad, PAD_DOWN) then

  option = option +speed
  
  if option <= 0 then
    
    option = 1
  
  
end


if option >= numberOfOptions then
  
  option = 1
  
end

if option <= numberOfOptions then
if isDirInit == 0 then
input = listdir[option].name
else
input = "\\" .. listdir[option].name
end
end


kernel_os_play_sound("move")

end



if Pads.check(pad, PAD_LEFT) then

  suboption = suboption -1
  
  if suboption == 0 then
    
    suboption = numberOfSubOptions-1
  
  
end


if suboption == numberOfSubOptions then
  
  suboption = 1
  
  end

kernel_os_play_sound("move")

end



if Pads.check(pad, PAD_RIGHT) then
  suboption = suboption +1
  
  if suboption == 0 then
    
    suboption = 1
  
  
end


if suboption == numberOfSubOptions then
  
  suboption = 1
  
end




kernel_os_play_sound("move")


end


if Pads.check(pad, PAD_CIRCLE) then
System.sleep(1)
option = 2
System.clearNumberOfDirectories()
directory = System.currentDirectory()
listdir = System.listDirectory(System.currentDirectory())
numberOfDirectories = System.getNumberOfDirectories()-1;
numberOfOptions = numberOfDirectories

kernel_os_play_sound("exit")





end



if Pads.check(pad, PAD_SQUARE) then
Font.fmPrint(300, 180, 0.8, "Shortcut menu:\n\nDOWN for mcps2/init.lua\n\nUP for minespy/default.pxbe", blue)
if Pads.check(pad, PAD_DOWN) then

Screen.clear()
Screen.flip()
Screen.clear()
dofile("mcps2/init.lua")



end


if Pads.check(pad, PAD_UP) then

Screen.clear()
Screen.flip()
Screen.clear()
dofile("minespy/default.pxbe")



end



end


if Pads.check(pad, PAD_L1) then

System.sleep(1)
speed = speed - 1


end


if Pads.check(pad, PAD_R1) then

System.sleep(1)
speed = speed + 1


end



if Pads.check(pad, PAD_CROSS) then
System.sleep(1)

  
  if type == "loadLua" then
  kernel_os_play_sound("switch")
    Font.fmPrint(10, 40, 0.8, "loadLua/ " .. directory, blue)
	Screen.clear()
	Screen.flip()
	Screen.clear()
	dofile(directory .. input)

else
  
   if type == "loadPXBE" then
   kernel_os_play_sound("switch")
     Font.fmPrint(10, 40, 0.8, "loadPXBE/ " .. directory, blue)
	 Screen.clear()
	Screen.flip()
	Screen.clear()
	dofile(directory .. input)

	else
  
   if type == "loadELF" then
   kernel_os_play_sound("switch")
     Font.fmPrint(10, 180, 0.8, "loadELF/ " .. directory .. "/" .. input, blue)
	 Screen.clear()
	Screen.flip()
	Screen.clear()
	System.loadELF(directory  .. input)


else

 if type == "loadDirectory" then
     Font.fmPrint(10, 40, 0.8, "loadDirectory/ " .. directory .. "/" .. input, blue)
	getDir(input)
	isDirInit = 1
else

if type == "loadWav" then

 Font.fmPrint(10, 40, 0.8, "loadWav/ " .. directory .. "/" .. input, blue)
 kernel_os_play_wav(directory .. input)

else

if type == "loadImage" then

 Font.fmPrint(10, 40, 0.8, "loadImage/ " .. directory .. "/" .. input, blue)
 kernel_os_display(directory .. input)
 imageMode = true


else
  
  Font.fmPrint(10, 80, 0.6, "ERROR: COULD NOT EXECUTE FILE " .. directory .. "/" .. input, red)
  
  
  
  end
  end
  end
  end
  
  
  
end


end


kernel_os_play_sound("select")

end



dir1 = listdir[option].name
Font.fmPrint(0, 20+40, 0.7, dir1, green)
if option+1 < numberOfOptions then
dir2 = listdir[option+1].name
Font.fmPrint(0, 20+60, 0.7, dir2, green)
end
if option+2 < numberOfOptions then
dir3 = listdir[option+2].name
Font.fmPrint(0, 20+80, 0.7, dir3, green)
end
if option+3 < numberOfOptions then
dir4 = listdir[option+3].name
Font.fmPrint(0, 20+100, 0.7, dir4, green)
end
if option+4 < numberOfOptions then
dir5 = listdir[option+4].name
Font.fmPrint(0, 20+120, 0.7, dir5, green)
end
if option+5 < numberOfOptions then
dir6 = listdir[option+5].name
Font.fmPrint(0, 20+140, 0.7, dir6, green)
end
if option+6 < numberOfOptions then
dir7 = listdir[option+6].name
Font.fmPrint(0, 20+160, 0.7, dir7, green)
end
if option+7 < numberOfOptions then
dir8 = listdir[option+7].name
Font.fmPrint(0, 20+180, 0.7, dir8, green)
end
if option+8 < numberOfOptions then
dir9 = listdir[option+8].name
Font.fmPrint(0, 20+200, 0.7, dir9, green)
end
if option+9 < numberOfOptions then
dir10 = listdir[option+9].name
Font.fmPrint(0, 20+220, 0.7, dir10, green)
end
if option+10 < numberOfOptions then
dir11 = listdir[option+10].name
Font.fmPrint(0, 20+240, 0.7, dir11, green)
end
if option+11 < numberOfOptions then
dir12 = listdir[option+11].name
Font.fmPrint(0, 20+260, 0.7, dir12, green)
end
if option+12 < numberOfOptions then
dir13 = listdir[option+12].name
Font.fmPrint(0, 20+280, 0.7, dir13, green)
end
if option+13 < numberOfOptions then
dir14 = listdir[option+13].name
Font.fmPrint(0, 20+300, 0.7, dir14, green)
end
if option+14 < numberOfOptions then
dir15 = listdir[option+14].name
Font.fmPrint(0, 20+320, 0.7, dir15, green)
end
if option+15 < numberOfOptions then
dir16 = listdir[option+15].name
Font.fmPrint(0, 20+340, 0.7, dir16, green)
end

Font.fmPrint(10, 20, 0.6, "ENCELADUS OS KERNEL", red)
Font.fmPrint(0, 20+20, 0.7, "kernel:/dir " .. dot .. " " .. space .. input .. " -" .. type, pink)



Font.fmPrint(420, 380, 0.8, directory, purple)
Font.fmPrint(0, 380, 0.8, "Number of Directories: " .. numberOfDirectories, purple)
Font.fmPrint(0, 400, 0.8, "Scroll speed: " .. speed, purple)
if option == numberOfOptions-1 then
Graphics.drawLine(0, option+200, 0, 0, red)
else
Graphics.drawLine(0, option+200, 0, 0, blue)
Graphics.drawLine(0, numberOfOptions+200, 0, numberOfOptions+option, pink)












end
end




if imageMode == true then

Screen.clear()
pad = Pads.get()
kernel_os_update_display()


if Pads.check(pad, PAD_CIRCLE) then
System.sleep(1)

Screen.clear()
imageMode = false


kernel_os_play_sound("exit")


end
end




Screen.flip()
	Screen.waitVblankStart()
end

