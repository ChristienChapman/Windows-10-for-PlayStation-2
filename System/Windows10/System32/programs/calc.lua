-- All glory to God, Jesus Christ, and the Holy Spirit.


calc = false

local text_size = 0.9
local indent = 15
local dpos = 150
local stre = ""
local calc_number_of_chars = 0
local calc_input_box = ""
local calc_upper_input_box = ""
local calc_check_char = ""

register_desktop_icon("Calculator", settings_icon, "calc")

local function back(menu)


if windows_key_pressed() == "WINDOWS_VK_CIRCLE" then

if menu == "exit" then

calc = false
else

--clr

end

end

end





windows_application_position_y[6] = windows_application_position_y[6] - 30


function getEquation()

func = assert(load("return " .. calc_input_box))
ret = func()
return ret

end




function checkInputBeingEmpty()

if string.sub(calc_input_box,1) == "" then

return true
else
return false


end
end


function checkInputForInvalid()


if string.sub(calc_input_box,calc_number_of_chars) == "+" then

return true
else

if string.sub(calc_input_box,calc_number_of_chars) == "-" then

return true
else


if string.sub(calc_input_box,calc_number_of_chars) == "*" then

return true
else



if string.sub(calc_input_box,calc_number_of_chars) == "/" then

return true
else

return false


end




end




end




end

end


function calc_button(posx,posy,text,type)

local application_color_1 = windows_background_color
local application_color_2 = windows_highlight_color
local button_dark = Color.new(50, 50, 50)
local button_light = Color.new(59, 59, 59)

if type == "dark" then
if windows_button(posx, posy, 60, 35, "box", button_dark, application_color_2, "", true, 6) then


if text == "CE" 
or text == "C" then

calc_input_box = ""
calc_number_of_chars = 0
text_size = 0.9
indent = 15
dpos = 150

else

if text == "<-" then

calc_number_of_chars = calc_number_of_chars - 1
calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars)
windows_text_input_stream = ""

else


if text == "1/x" then

if checkInputBeingEmpty() == false or checkInputForInvalid() == false then
local eval = tonumber(calc_input_box)
eval = 1 / eval
calc_input_box = eval
windows_text_input_stream = ""
end

else

if text == "x^2" then

if checkInputBeingEmpty() == false or checkInputForInvalid() == false then
local eval = tonumber(calc_input_box)
eval = eval * eval
calc_input_box = eval
windows_text_input_stream = ""
end

else

if text == "%" then

if checkInputBeingEmpty() == false or checkInputForInvalid() == false  then
local eval = tonumber(calc_input_box)
eval = 0.01 * eval
if string.len(eval) > 5 then
local str_eval = tostring(eval)
str_eval = string.format("%g",string.format("%.1f",str_eval))
eval = tonumber(str_eval)
end
calc_input_box = eval
windows_text_input_stream = ""
end


else

if text == "RT" then

if checkInputBeingEmpty() == false or checkInputForInvalid() == false  then
local eval = tonumber(calc_input_box)
eval = math.sqrt(eval)
calc_input_box = eval
windows_text_input_stream = ""
end

else

if text == "=" then

local eval = tonumber(calc_input_box)
stre = getEquation()
calc_input_box = stre
windows_text_input_stream = ""

else

windows_text_input_stream = text
calc_input_box = calc_input_box .. windows_text_input_stream
end
end
end
end
end
end
end




end



end



if type == "light" then
if windows_button(posx, posy, 60, 35, "box", button_dark, application_color_2, "", true, 6) then


if text == "CE" 
or text == "C" then

calc_input_box = ""
calc_number_of_chars = 0
text_size = 0.9
indent = 15
dpos = 150

else

if text == "<-" then

calc_number_of_chars = calc_number_of_chars - 1
calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars)
windows_text_input_stream = ""

else


if text == "1/x" then

local eval = tonumber(calc_input_box)
eval = 1 / eval
calc_input_box = eval
windows_text_input_stream = ""

else

if text == "x^2" then

local eval = tonumber(calc_input_box)
eval = eval * eval
calc_input_box = eval
windows_text_input_stream = ""

else

if text == "%" then

local eval = tonumber(calc_input_box)
eval = 0.01 * eval
calc_input_box = eval
windows_text_input_stream = ""

else

if text == "RT" then

local eval = tonumber(calc_input_box)
eval = math.sqrt(eval)
calc_input_box = eval
windows_text_input_stream = ""

else

if text == "=" then

local eval = tonumber(calc_input_box)
stre = getEquation()
calc_input_box = stre
windows_text_input_stream = ""

else



windows_text_input_stream = text
calc_input_box = calc_input_box .. windows_text_input_stream
end
end
end
end
end
end
end








end




end

print(posx+23,posy+6,0.68,text,white)

end


function calc_ui()

local application_name = "Calculator"
local application_color_1 = windows_background_color
local application_color_2 = windows_highlight_color
local button_dark = Color.new(50, 50, 50)
local button_light = Color.new(59, 59, 59)

if calc_number_of_chars == 47 then
print(windows_application_position_x[6]-100,windows_application_position_y[6]+60,0.4,"Maximum number of digits reached.",white)
end

print(windows_application_position_x[6]-calc_number_of_chars*indent+dpos,windows_application_position_y[6]+100-45,text_size,calc_input_box,white)
print(windows_application_position_x[6]-calc_number_of_chars*indent+dpos,windows_application_position_y[6]+80-45,0.5,calc_upper_input_box,grey)


calc_button(windows_application_position_x[6]-90, windows_application_position_y[6]+140-45, "%", "dark")
calc_button(windows_application_position_x[6]-90, windows_application_position_y[6]+140+40-45, "1/x", "dark")
calc_button(windows_application_position_x[6]-90+65, windows_application_position_y[6]+140+40-45, "x^2", "dark")
calc_button(windows_application_position_x[6]-90+65+65, windows_application_position_y[6]+140+40-45, "RT", "dark")
calc_button(windows_application_position_x[6]-90+65, windows_application_position_y[6]+140-45, "CE", "dark")
calc_button(windows_application_position_x[6]-90+65+65, windows_application_position_y[6]+140-45, "C", "dark")
calc_button(windows_application_position_x[6]-90+65+65+65, windows_application_position_y[6]+140-45, "<-", "dark")
calc_button(windows_application_position_x[6]-90+65+65+65, windows_application_position_y[6]+140+40-45, "/", "dark")
calc_button(windows_application_position_x[6]-90, windows_application_position_y[6]+140+80-45, "7", "light")
calc_button(windows_application_position_x[6]-90+65, windows_application_position_y[6]+140+80-45, "8", "light")
calc_button(windows_application_position_x[6]-90+65+65, windows_application_position_y[6]+140+80-45, "9", "light")
calc_button(windows_application_position_x[6]-90+65+65+65, windows_application_position_y[6]+140+80-45, "*", "dark")
calc_button(windows_application_position_x[6]-90, windows_application_position_y[6]+140+120-45, "4", "light")
calc_button(windows_application_position_x[6]-90+65, windows_application_position_y[6]+140+120-45, "5", "light")
calc_button(windows_application_position_x[6]-90+65+65, windows_application_position_y[6]+140+120-45, "6", "light")
calc_button(windows_application_position_x[6]-90+65+65+65, windows_application_position_y[6]+140+120-45, "-", "dark")
calc_button(windows_application_position_x[6]-90, windows_application_position_y[6]+140+160-45, "1", "light")
calc_button(windows_application_position_x[6]-90+65, windows_application_position_y[6]+140+160-45, "2", "light")
calc_button(windows_application_position_x[6]-90+65+65, windows_application_position_y[6]+140+160-45, "3", "light")
calc_button(windows_application_position_x[6]-90+65+65+65, windows_application_position_y[6]+140+160-45, "+", "dark")
--calc_button(windows_application_position_x[6]-90, windows_application_position_y[6]+140+200-45, "+/-", "light")
calc_button(windows_application_position_x[6]-90+65, windows_application_position_y[6]+140+200-45, "1", "light")
calc_button(windows_application_position_x[6]-90+65+65, windows_application_position_y[6]+140+200-45, ".", "light")
calc_button(windows_application_position_x[6]-90+65+65+65, windows_application_position_y[6]+140+200-45, "=", "dark")







end


function calc_init()

local application_name = "Calculator"
local application_color_1 = windows_background_color
local application_color_2 = windows_highlight_color
local button_dark = Color.new(50, 50, 50)
local button_light = Color.new(59, 59, 59)
calc_number_of_chars = string.len(calc_input_box)
calc_check_char = string.sub(calc_input_box,calc_number_of_chars,calc_number_of_chars)
if calc_number_of_chars < 47 then
if windows_text_input_stream == "1"
or windows_text_input_stream == "2"
or windows_text_input_stream == "3"
or windows_text_input_stream == "4"
or windows_text_input_stream == "5"
or windows_text_input_stream == "6"
or windows_text_input_stream == "7"
or windows_text_input_stream == "8"
or windows_text_input_stream == "9"
or windows_text_input_stream == "0"
or windows_text_input_stream == "-"
or windows_text_input_stream == "+"
or windows_text_input_stream == "/"
or windows_text_input_stream == "*"
or windows_text_input_stream == "."
or windows_text_input_stream == "%"


then


calc_input_box = calc_input_box .. windows_text_input_stream




end




if windows_vk_global_backspace == true then

windows_vk_global_backspace = false

calc_number_of_chars = calc_number_of_chars - 1
calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars)
windows_text_input_stream = ""


end




windows_text_input_stream = ""
else
calc_input_box = calc_input_box
end


if calc_number_of_chars >= 10 then

text_size = 0.75
indent = 13
dpos = 150

end

if calc_number_of_chars >= 19 then

text_size = 0.65
indent = 11
dpos = 150

end

if calc_number_of_chars >= 24 then

text_size = 0.55
indent = 9
dpos = 150

end

if calc_number_of_chars >= 29 then

text_size = 0.4
indent = 9
dpos = 200

end


if calc_number_of_chars >= 35 then

text_size = 0.3
indent = 7
dpos = 230

end

if windows_key_pressed() == "WINDOWS_VK_TRIANGLE" then

if calc_number_of_chars >= 2 then

stre = getEquation()
calc_input_box = stre

end


end












application_focus_bar(windows_application_position_x[6]-20, windows_application_position_y[6]-20, 280, 17,application_name, 6)

if application_focus_button(windows_application_position_x[6]+170, windows_application_position_y[6]-20, 10, 17, "exit", 6) == true then

calc = false
windows_application_position_x[6] = 100
windows_application_position_y[6] = 100 - 70

end

if application_focus_button(windows_application_position_x[6]+157, windows_application_position_y[6]-20, 10, 17, "maximize", 6) == true then

windows_application_position_x[6] = 100
windows_application_position_y[6] = 100 - 70

end

if application_focus_button(windows_application_position_x[6]+145, windows_application_position_y[6]-20, 10, 17, "minimize", 6) == true then

windows_application_position_x[6] = 1000

end

windows_background(windows_application_position_x[6]-100, windows_application_position_y[6]-1, 280, 360, "box", application_color_1, application_name, 6)
calc_ui()

if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "**" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end

if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "++" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end

if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "--" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "//" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == ".." then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end



if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "+-" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "+/" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "+*" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end



if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "-+" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end

if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "-/" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end

if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "-*" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end



if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "*+" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end



if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "*-" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end



if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "*/" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "/+" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "/-" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if string.sub(calc_input_box,calc_number_of_chars-1,calc_number_of_chars) == "/*" then

calc_input_box = string.sub(calc_input_box,0,calc_number_of_chars-1)
end


if calc_number_of_chars == 0 then

if calc_input_box == "+" then
calc_input_box = ""
end

if calc_input_box == "*" then
calc_input_box = ""
end

if calc_input_box == "/" then
calc_input_box = ""
end

end





end