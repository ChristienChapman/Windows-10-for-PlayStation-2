-- All glory to God, Jesus Christ, and the Holy Spirit.

windowsvk = false
local shift = false
local key = {}
local index = 0

key[1] = "q"
key[2] = "w"
key[3] = "e"
key[4] = "r"
key[5] = "t"
key[6] = "y"
key[7] = "u"
key[8] = "i"
key[9] = "o"
key[10] = "p"
key[11] = "a"
key[12] = "s"
key[13] = "d"
key[14] = "f"
key[15] = "g"
key[16] = "h"
key[17] = "j"
key[18] = "k"
key[19] = "l"
key[20] = "z"
key[21] = "x"
key[22] = "c"
key[23] = "v"
key[24] = "b"
key[25] = "n"
key[26] = "m"


windows_application_position_x[0] = windows_application_position_x[0]+220







function windows_vk_enter_process()

if windows_vk_global_enter == false then
windows_vk_global_enter = true
else
windows_vk_global_enter = false

end

end


function windows_vk_init()


if windows_vk_global_backspace == true then

windows_vk_global_backspace = false

windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream - 1
windows_text_input_stream = string.sub(windows_text_input_stream,0,windows_number_of_chars_in_input_stream)


end

if windows_vk_global_copy == true then

windows_vk_global_copy = false
windows_copy_memory = windows_text_input_stream
windows_char_copy_memory = windows_number_of_chars_in_input_stream

end

if windows_vk_global_paste == true then

windows_vk_global_paste = false
windows_text_input_stream = windows_text_input_stream .. windows_copy_memory
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + windows_char_copy_memory


end

if windows_vk_global_cut == true then

windows_vk_global_cut = false

windows_copy_memory = windows_text_input_stream
windows_char_copy_memory = windows_number_of_chars_in_input_stream
windows_text_input_stream = ""
windows_number_of_chars_in_input_stream = 0

end

local application_name = "Virtual Keyboard"
local application_color_1 = windows_box_color
local application_color_2 = windows_highlight_color

if windows_usb_keyboard_active == false then



if windows_key_pressed() == "WINDOWS_VK_TRIANGLE" then

shift = true

end

if windows_key_pressed() == "WINDOWS_VK_CIRCLE" then

windows_vk = false



end


if windows_key_pressed() == "WINDOWS_VK_SQUARE" then

shift = false



end
application_focus_bar(windows_application_position_x[0]-100, windows_application_position_y[0]-18, 400, 17,application_name, 0)

if application_focus_button(windows_application_position_x[0]+510-225, windows_application_position_y[0]-20, 15, 17, "exit", 0) == true then

windowsvk = false
windows_application_position_x[0] = 10 + 220
windows_application_position_y[0] = 100

end

if application_focus_button(windows_application_position_x[0]+480-210, windows_application_position_y[0]-20, 15, 17, "maximize", 0) == true then

windows_application_position_x[0] = 10 + 220
windows_application_position_y[0] = 100

end

if application_focus_button(windows_application_position_x[0]+460-210, windows_application_position_y[0]-20, 15, 17, "minimize", 0) == true then

windows_application_position_x[0] = 1000

end

windows_background(windows_application_position_x[0]-100, windows_application_position_y[0]-1, 400, 150, "box", windows_background_color, application_name, 0)



-- x is subtracted in 25 intervals

if windows_button(windows_application_position_x[0]-90, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
windows_vk = false
end
print(windows_application_position_x[0]-90, windows_application_position_y[0]+15,0.3, "ESC", white)

if windows_button(windows_application_position_x[0]-65, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "~"
else
windows_text_input_stream = windows_text_input_stream .. "`"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]-65, windows_application_position_y[0]+15,0.3, "` \n ~", white)



if windows_button(windows_application_position_x[0]-40, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "1"
else
windows_text_input_stream = windows_text_input_stream .. "!"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]-40, windows_application_position_y[0]+15,0.3, "! \n 1", white)



if windows_button(windows_application_position_x[0]-15, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "2"
else
windows_text_input_stream = windows_text_input_stream .. "@"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]-15, windows_application_position_y[0]+15,0.3, "@ \n 2", white)





if windows_button(windows_application_position_x[0]+10, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "3"
else
windows_text_input_stream = windows_text_input_stream .. "#"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+10, windows_application_position_y[0]+15,0.3, "# \n 3", white)





if windows_button(windows_application_position_x[0]+35, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "4"
else
windows_text_input_stream = windows_text_input_stream .. "$"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+35, windows_application_position_y[0]+15,0.3, "$ \n 4", white)





if windows_button(windows_application_position_x[0]+60, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "5"
else
windows_text_input_stream = windows_text_input_stream .. "%"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+60, windows_application_position_y[0]+15,0.3, "% \n 5", white)






if windows_button(windows_application_position_x[0]+85, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "6"
else
windows_text_input_stream = windows_text_input_stream .. "^"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+85, windows_application_position_y[0]+15,0.3, "^ \n 6", white)




if windows_button(windows_application_position_x[0]+110, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "7"
else
windows_text_input_stream = windows_text_input_stream .. "&"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+110, windows_application_position_y[0]+15,0.3, "& \n 7", white)





if windows_button(windows_application_position_x[0]+135, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "8"
else
windows_text_input_stream = windows_text_input_stream .. "*"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+135, windows_application_position_y[0]+15,0.3, "* \n 8", white)






if windows_button(windows_application_position_x[0]+160, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "9"
else
windows_text_input_stream = windows_text_input_stream .. "("
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+160, windows_application_position_y[0]+15,0.3, "( \n 9", white)





if windows_button(windows_application_position_x[0]+185, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "0"
else
windows_text_input_stream = windows_text_input_stream .. ")"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+185, windows_application_position_y[0]+15,0.3, ") \n 0", white)



if windows_button(windows_application_position_x[0]+210, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "-"
else
windows_text_input_stream = windows_text_input_stream .. "_"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+210, windows_application_position_y[0]+15,0.3, "_ \n -", white)





if windows_button(windows_application_position_x[0]+235, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "="
else
windows_text_input_stream = windows_text_input_stream .. "+"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+235, windows_application_position_y[0]+15,0.3, "= \n +", white)




if windows_button(windows_application_position_x[0]+260, windows_application_position_y[0]+15, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
windows_vk_global_backspace = false
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream - 1
windows_text_input_stream = string.sub(windows_text_input_stream,0,windows_number_of_chars_in_input_stream)
end
print(windows_application_position_x[0]+260, windows_application_position_y[0]+15,0.25, "BACK", white)






if windows_button(windows_application_position_x[0]-90, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "   "
else
windows_text_input_stream = windows_text_input_stream .. "   "
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 3
end
print(windows_application_position_x[0]-90, windows_application_position_y[0]+40,0.3, "TAB", white)








if windows_button(windows_application_position_x[0]-65, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[1]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[1])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]-65, windows_application_position_y[0]+40,0.4, "" .. key[1], white)
else
print(windows_application_position_x[0]-65, windows_application_position_y[0]+40,0.4, string.upper("" .. key[1]), white)
end





if windows_button(windows_application_position_x[0]-40, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[2]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[2])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]-40, windows_application_position_y[0]+40,0.4, "" .. key[2], white)
else
print(windows_application_position_x[0]-40, windows_application_position_y[0]+40,0.4, string.upper("" .. key[2]), white)
end






if windows_button(windows_application_position_x[0]-15, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[3]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[3])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]-15, windows_application_position_y[0]+40,0.4, "" .. key[3], white)
else
print(windows_application_position_x[0]-15, windows_application_position_y[0]+40,0.4, string.upper("" .. key[3]), white)
end










if windows_button(windows_application_position_x[0]+10, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[4]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[4])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+10, windows_application_position_y[0]+40,0.4, "" .. key[4], white)
else
print(windows_application_position_x[0]+10, windows_application_position_y[0]+40,0.4, string.upper("" .. key[4]), white)
end







if windows_button(windows_application_position_x[0]+35, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[5]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[5])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+35, windows_application_position_y[0]+40,0.4, "" .. key[5], white)
else
print(windows_application_position_x[0]+35, windows_application_position_y[0]+40,0.4, string.upper("" .. key[5]), white)
end








if windows_button(windows_application_position_x[0]+60, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[6]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[6])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+60, windows_application_position_y[0]+40,0.4, "" .. key[6], white)
else
print(windows_application_position_x[0]+60, windows_application_position_y[0]+40,0.4, string.upper("" .. key[6]), white)
end















if windows_button(windows_application_position_x[0]+85, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[7]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[7])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+85, windows_application_position_y[0]+40,0.4, "" .. key[7], white)
else
print(windows_application_position_x[0]+85, windows_application_position_y[0]+40,0.4, string.upper("" .. key[7]), white)
end














if windows_button(windows_application_position_x[0]+110, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[8]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[8])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+110, windows_application_position_y[0]+40,0.4, "" .. key[8], white)
else
print(windows_application_position_x[0]+110, windows_application_position_y[0]+40,0.4, string.upper("" .. key[8]), white)
end











if windows_button(windows_application_position_x[0]+135, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[9]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[9])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+135, windows_application_position_y[0]+40,0.4, "" .. key[9], white)
else
print(windows_application_position_x[0]+135, windows_application_position_y[0]+40,0.4, string.upper("" .. key[9]), white)
end













if windows_button(windows_application_position_x[0]+160, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[10]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[10])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+160, windows_application_position_y[0]+40,0.4, "" .. key[10], white)
else
print(windows_application_position_x[0]+160, windows_application_position_y[0]+40,0.4, string.upper("" .. key[10]), white)
end











if windows_button(windows_application_position_x[0]+185, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "["
else
windows_text_input_stream = windows_text_input_stream .. "{"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+185, windows_application_position_y[0]+40,0.3, "{ \n [", white)









if windows_button(windows_application_position_x[0]+210, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "]"
else
windows_text_input_stream = windows_text_input_stream .. "}"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+210, windows_application_position_y[0]+40,0.3, "} \n ]", white)






if windows_button(windows_application_position_x[0]+235, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "\\"
else
windows_text_input_stream = windows_text_input_stream .. "|"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+235, windows_application_position_y[0]+40,0.3, "| \n \\", white)





if windows_button(windows_application_position_x[0]+260, windows_application_position_y[0]+40, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream - 1
local starting_index_string = string.sub(windows_text_input_stream,0,index)
local ending_index_string = string.sub(windows_text_input_stream,index,windows_number_of_chars_in_input_stream)
windows_text_input_stream = starting_index_string .. ending_index_string
end
print(windows_application_position_x[0]+260, windows_application_position_y[0]+40,0.25, "DEL", white)










if windows_button(windows_application_position_x[0]-90, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
shift = true
end
if shift == true then
print(windows_application_position_x[0]-90, windows_application_position_y[0]+65,0.3, "CAP", blue)
else
print(windows_application_position_x[0]-90, windows_application_position_y[0]+65,0.3, "CAP", white)
end





if windows_button(windows_application_position_x[0]-65, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[11]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[11])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]-65, windows_application_position_y[0]+65,0.4, "" .. key[11], white)
else
print(windows_application_position_x[0]-65, windows_application_position_y[0]+65,0.4, string.upper("" .. key[11]), white)
end



if windows_button(windows_application_position_x[0]-40, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[12]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[12])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]-40, windows_application_position_y[0]+65,0.4, "" .. key[12], white)
else
print(windows_application_position_x[0]-40, windows_application_position_y[0]+65,0.4, string.upper("" .. key[12]), white)
end




if windows_button(windows_application_position_x[0]-15, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[13]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[13])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]-15, windows_application_position_y[0]+65,0.4, "" .. key[13], white)
else
print(windows_application_position_x[0]-15, windows_application_position_y[0]+65,0.4, string.upper("" .. key[13]), white)
end




if windows_button(windows_application_position_x[0]+10, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[14]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[14])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+10, windows_application_position_y[0]+65,0.4, "" .. key[14], white)
else
print(windows_application_position_x[0]+10, windows_application_position_y[0]+65,0.4, string.upper("" .. key[14]), white)
end





if windows_button(windows_application_position_x[0]+35, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[15]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[15])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+35, windows_application_position_y[0]+65,0.4, "" .. key[15], white)
else
print(windows_application_position_x[0]+35, windows_application_position_y[0]+65,0.4, string.upper("" .. key[15]), white)
end





if windows_button(windows_application_position_x[0]+60, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[16]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[16])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+60, windows_application_position_y[0]+65,0.4, "" .. key[16], white)
else
print(windows_application_position_x[0]+60, windows_application_position_y[0]+65,0.4, string.upper("" .. key[16]), white)
end





if windows_button(windows_application_position_x[0]+85, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[17]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[17])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+85, windows_application_position_y[0]+65,0.4, "" .. key[17], white)
else
print(windows_application_position_x[0]+85, windows_application_position_y[0]+65,0.4, string.upper("" .. key[17]), white)
end








if windows_button(windows_application_position_x[0]+110, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[18]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[18])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+110, windows_application_position_y[0]+65,0.4, "" .. key[18], white)
else
print(windows_application_position_x[0]+110, windows_application_position_y[0]+65,0.4, string.upper("" .. key[18]), white)
end





if windows_button(windows_application_position_x[0]+135, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[19]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[19])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+135, windows_application_position_y[0]+65,0.4, "" .. key[19], white)
else
print(windows_application_position_x[0]+135, windows_application_position_y[0]+65,0.4, string.upper("" .. key[19]), white)
end





if windows_button(windows_application_position_x[0]+160, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[20]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[20])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+160, windows_application_position_y[0]+65,0.4, "" .. key[20], white)
else
print(windows_application_position_x[0]+160, windows_application_position_y[0]+65,0.4, string.upper("" .. key[20]), white)
end




if windows_button(windows_application_position_x[0]+185, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. ":"
else
windows_text_input_stream = windows_text_input_stream .. ";"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+185, windows_application_position_y[0]+65,0.3, ": \n ;", white)





if windows_button(windows_application_position_x[0]+210, windows_application_position_y[0]+65, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "'"
else
windows_text_input_stream = windows_text_input_stream .. '"'
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+210, windows_application_position_y[0]+65,0.3, '"' .. " \n '", white)




if windows_button(windows_application_position_x[0]+235, windows_application_position_y[0]+65, 45, 20, "box", application_color_1, application_color_2, "", true, 0) then
windows_vk_enter_process()
end
print(windows_application_position_x[0]+235, windows_application_position_y[0]+65,0.3, "ENTER", white)







if windows_button(windows_application_position_x[0]-90, windows_application_position_y[0]+90, 45, 20, "box", application_color_1, application_color_2, "", true, 0) then
windows_text_input_stream = windows_text_input_stream .. "\n"
end

print(windows_application_position_x[0]-90, windows_application_position_y[0]+90,0.3, "NEW LINE", white)




if windows_button(windows_application_position_x[0]+25-65, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[21]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[21])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+25-65, windows_application_position_y[0]+90,0.4, "" .. key[21], white)
else
print(windows_application_position_x[0]+25-65, windows_application_position_y[0]+90,0.4, string.upper("" .. key[21]), white)
end








if windows_button(windows_application_position_x[0]+25-40, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[22]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[22])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+25-40, windows_application_position_y[0]+90,0.4, "" .. key[22], white)
else
print(windows_application_position_x[0]+25-40, windows_application_position_y[0]+90,0.4, string.upper("" .. key[22]), white)
end




if windows_button(windows_application_position_x[0]+25-15, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[23]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[23])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+25-15, windows_application_position_y[0]+90,0.4, "" .. key[23], white)
else
print(windows_application_position_x[0]+25-15, windows_application_position_y[0]+90,0.4, string.upper("" .. key[23]), white)
end




if windows_button(windows_application_position_x[0]+25+10, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[24]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[24])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+25+10, windows_application_position_y[0]+90,0.4, "" .. key[24], white)
else
print(windows_application_position_x[0]+25+10, windows_application_position_y[0]+90,0.4, string.upper("" .. key[24]), white)
end





if windows_button(windows_application_position_x[0]+25+35, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[25]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[25])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+25+35, windows_application_position_y[0]+90,0.4, "" .. key[25], white)
else
print(windows_application_position_x[0]+25+35, windows_application_position_y[0]+90,0.4, string.upper("" .. key[25]), white)
end










if windows_button(windows_application_position_x[0]+25+60, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. key[26]
else
windows_text_input_stream = windows_text_input_stream .. string.upper(key[26])
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
if shift == false then
print(windows_application_position_x[0]+25+60, windows_application_position_y[0]+90,0.4, "" .. key[26], white)
else
print(windows_application_position_x[0]+25+60, windows_application_position_y[0]+90,0.4, string.upper("" .. key[26]), white)
end




if windows_button(windows_application_position_x[0]+25+85, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. ","
else
windows_text_input_stream = windows_text_input_stream .. "<"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end

print(windows_application_position_x[0]+25+85, windows_application_position_y[0]+90,0.4, "< \n ,", white)









if windows_button(windows_application_position_x[0]+25+110, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "."
else
windows_text_input_stream = windows_text_input_stream .. ">"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+25+110, windows_application_position_y[0]+90,0.4, "> \n .", white)






if windows_button(windows_application_position_x[0]+25+135, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
if shift == false then
windows_text_input_stream = windows_text_input_stream .. "/"
else
windows_text_input_stream = windows_text_input_stream .. "?"
end
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1
end
print(windows_application_position_x[0]+25+135, windows_application_position_y[0]+90,0.4, "? \n /", white)



if windows_button(windows_application_position_x[0]+25+160, windows_application_position_y[0]+90, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
windows_vk_global_up = true

end

print(windows_application_position_x[0]+25+160, windows_application_position_y[0]+90,0.4, "/\\", white)




if windows_button(windows_application_position_x[0]-90, windows_application_position_y[0]+115, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then
windows_copy_memory = windows_text_input_stream
windows_char_copy_memory = windows_number_of_chars_in_input_stream
end

print(windows_application_position_x[0]-90, windows_application_position_y[0]+115,0.25, "COPY", white)





if windows_button(windows_application_position_x[0]-65, windows_application_position_y[0]+115, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then

windows_text_input_stream = windows_text_input_stream .. windows_copy_memory
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + windows_char_copy_memory

end
print(windows_application_position_x[0]-65, windows_application_position_y[0]+115,0.25, "PAS\nTE", white)



if windows_button(windows_application_position_x[0]-40, windows_application_position_y[0]+115, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then

windows_copy_memory = windows_text_input_stream
windows_char_copy_memory = windows_number_of_chars_in_input_stream
windows_text_input_stream = ""
windows_number_of_chars_in_input_stream = 0

end
print(windows_application_position_x[0]-40, windows_application_position_y[0]+115,0.25, "CUT", white)




if windows_button(windows_application_position_x[0]-15, windows_application_position_y[0]+115, 170, 20, "box", application_color_1, application_color_2, "", true, 0) then

windows_text_input_stream = windows_text_input_stream .. " "
windows_number_of_chars_in_input_stream = windows_number_of_chars_in_input_stream + 1

end



if windows_button(windows_application_position_x[0]+160, windows_application_position_y[0]+115, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then

windows_vk_global_left = true

end
print(windows_application_position_x[0]+160, windows_application_position_y[0]+115,0.4, "<", white)




if windows_button(windows_application_position_x[0]+185, windows_application_position_y[0]+115, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then

windows_vk_global_down = true

end
print(windows_application_position_x[0]+185, windows_application_position_y[0]+115,0.4, "\\/", white)




if windows_button(windows_application_position_x[0]+210, windows_application_position_y[0]+115, 20, 20, "box", application_color_1, application_color_2, "", true, 0) then

windows_vk_global_right = true

end
print(windows_application_position_x[0]+210, windows_application_position_y[0]+115,0.4, ">", white)



































end





end



