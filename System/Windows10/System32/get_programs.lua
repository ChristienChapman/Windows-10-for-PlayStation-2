-- All glory to God, Jesus Christ, and the Holy Spirit.




function openProgram(program)

dofile("System/Windows10/System32/programs/" .. program .. ".lua")

end



openProgram("windowsvk")
openProgram("settings")
openProgram("explorer")
openProgram("yahtzee")
openProgram("regedit")
openProgram("cmd")
openProgram("calc")
openProgram("starcraft")
openProgram("notepad")
openProgram("paint")


function getPrograms()



if settings == true then

settings_init()

if settings_entry == 0 then
 updateTaskbar("settings")
 settings_exit = 0
  settings_entry = 1
end

if settings == false then
closeTaskbar("settings")

end


else

closeTaskbar("settings")

if settings == true then

settings_init()

if settings_entry == 0 then
 updateTaskbar("settings")
 settings_exit = 0
  settings_entry = 1
end

end


end




if starcraft == true then

starcraft_init()

end


if notepad == true then

notepad_init()

end


if cmd == true then

cmd_init()

end



if paint == true then

paint_init()

end


if explorer == true then

explorer_init()

end

if yahtzee == true then

yahtzee_init()

end

if regedit == true then

regedit_init()

end

if windows_vk == true then

windows_vk_init()

end


if calc == true then

calc_init()

end


end