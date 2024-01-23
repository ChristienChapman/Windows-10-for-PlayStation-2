
-- All glory to God, Jesus Christ, and the Holy Spirit.

fileOperation = 0
deleteOperation = 0
local mgc_cycles = 0
local fop_cycles = 0



function windows_registry_get(program_name, variable)

local base_drive = System.currentDirectory()


local listreg = System.listDirectory_NoUpdate(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable .. "\\")

return listreg[1].name


end


function windows_registry_write(program_name, variable, data)

local base_drive = System.currentDirectory()

local listreg = System.listDirectory_NoUpdate(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable)
if windows_security_check(variable) == false then
windows_security_return = 1
end

if windows_security_check(variable) == true then
System.removeDirectory(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable .. "\\" .. listreg[1].name)
System.createDirectory(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable .. "\\" .. data)

fileOperation = fileOperation + 1



end


end




function windows_registry_delete(program_name, variable, data)

local base_drive = System.currentDirectory()

local listreg = System.listDirectory_NoUpdate(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable)
if windows_security_check(variable) == false then
windows_security_return = 1
end

if windows_security_check(variable) == true then
System.removeDirectory(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable .. "\\" .. listreg[1].name)
System.removeDirectory(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable .. "\\" .. listreg[1].name)

deleteOperation = deleteOperation + 1



end


end



function windows_registry_create(program_name, variable)

local base_drive = System.currentDirectory()

System.createDirectory(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name)
System.createDirectory(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable)
System.createDirectory(base_drive .. "\\System\\Windows10\\System32\\registry\\" .. program_name .. "\\" .. variable .. "\\empty")


end


function windows_registry_magic_gate_get()

if mgc_cycles == 0 then



local listreg = System.listDirectory_NoUpdate()

 mgc_cycles = 1
return listreg[1].name



end
end



function windows_registry_magic_gate_write(variable, data)

writeFile("mc0:/WIN10-CREDENTIAL/" .. variable, data)

end


function windows_registry_magic_gate_create(variable)



System.createDirectory("mc0:/" .. "WIN10-CREDENTIAL")
createFile("mc0:/WIN10-CREDENTIAL/" .. variable)



end
