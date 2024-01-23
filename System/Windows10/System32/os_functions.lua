-- All glory to God, Jesus Christ, and the Holy Spirit

album_cover = Graphics.loadImage("System/Windows10/System32/graphics/taskbar_windows_logo_active.png")

windows_directory_memory = ""
windows_file_memory = nil
windows_read_memory = nil
fd = nil

-- Return everything until first forward slash starting at the end. http://my.image.com/bla.jpg would return bla.jpg
function GetFileName(url)
  local str = url
  local temp = ""
  local result = ""

  -- Get file name + extension until first forward slash (/) and then break
  for i = str:len(), 1, -1 do
    if str:sub(i,i) ~= "/" and str:sub(i,i) ~= "//" and str:sub(i,i) ~= "\\" and str:sub(i,i) ~= "host:" and str:sub(i,i) ~= "mass:" then
      temp = temp..str:sub(i,i)
    else
      break
    end
  end

  -- Reverse order of full file name
  for j = temp:len(), 1, -1 do
    result = result..temp:sub(j,j)
  end

  return result
end




-- Get the extension of a string determined by a dot . at the end of the string.
function GetFileExtension(url)
    local str = url
  local temp = ""
  local result = "." -- ! Remove the dot here to ONLY get the extension, eg. jpg without a dot. The dot is added because Download() expects a file type with a dot.

  for i = str:len(), 1, -1 do
    if str:sub(i,i) ~= "." then
      temp = temp..str:sub(i,i)
    else
      break
    end
  end

  -- Reverse order of full file name
  for j = temp:len(), 1, -1 do
    result = result..temp:sub(j,j)
  end

  return result
end




function loadELF(elf)

System.loadELF(elf, 0, "nop;")

end



function checkVariable(var)

return load(var)

end






function openFile(path, permission)

if permission == "read" then

windows_file_memory = System.openFile(path, FREAD)

end

if permission == "write" then

windows_file_memory = System.openFile(path, FWRITE)

end

if permission == "create" then

windows_file_memory = System.openFile(path, FCREATE)

end


if permission == "frdwr" then

windows_file_memory = System.openFile(path, FRDWR)

end

end


function readFile(path)
fd = System.openFile(path, FREAD)
size = System.sizeFile(fd)
buffer = System.readFile(fd, size)

end

function writeFile(path, data)
fd = System.openFile(path, FWRITE)
size = System.sizeFile(fd)
System.writeFile(fd, data, size)


end


function createFile(path)

fd = System.openFile(path, FCREATE)
size = System.sizeFile(fd)
System.writeFile(fd, "null", size)
System.closeFile(fd)

end


function closeFile(type)

System.closeFile(type)

end


function seekFile(type, pos, command)

if command == "SET" then

System.seekFile(type, pos, SET)

end

if command == "CUR" then

System.seekFile(type, pos, CUR)

end

if command == "END" then

System.seekFile(type, pos, END)

end



end


function sizeOfFile(type)


return System.sizeFile(type)

end


function createDirectory(path)

System.createDirectory(path)

end

function removeDirectory(path)

if windows_security_check(path) == true then
System.removeDirectory(path)
else
windows_security_return = 1
end

end



function renameDirectory(path, name)

removeDirectory(path)
createDirectory(name)

end





function playWav(wav, frequency)

windows_wav_cycle()
if windows_audio_enabled == true then


Sound.playWav_CustomFrequency(wav, frequency)

end

end

function playWav_nc(wav, frequency)

if windows_audio_enabled == true then


Sound.playWav_CustomFrequency(wav, frequency)

end

end

