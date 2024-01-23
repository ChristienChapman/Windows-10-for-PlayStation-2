-- All glory to God, Jesus Christ, and the Holy Spirit.




paint = false
paint_current_color = 1



paint_memory = {}
for build_pmem_x = 0,640 do
    paint_memory[build_pmem_x] = {}

    for build_pmem_y = 0,448 do
        paint_memory[build_pmem_x][build_pmem_y] = 1
    end
end
get_pmem_x = 0
get_pmem_y = 0







local paint_sidebar_color = Color.new(245,246,247)

windows_application_position_y[8] = windows_application_position_y[8] - 70


function paint_get_range(compare,min,max,compare2,min2,max2)

if compare >= min then

if compare <= max then


	if paint_memory[compare][compare2] == 0 then
        Graphics.drawPixel(compare,compare2,white)
		end
		
		if paint_memory[compare][compare2] == 1 then
        Graphics.drawPixel(compare,compare2,blue)
		end
		compare = compare + 1
		if compare == max then
		compare = 0
		compare2 = compare2 + 1
		end
		print(100,100,0.9,paint_memory[compare][compare2],green)



end


end
end

function get_paint_memory()

paint_get_range(get_pmem_x,0,640,get_pmem_y,0,448)






		
	

		
		
 

end




function paint_pencil()


if windows_key_pressed() == "WINDOWS_VK_DRAG_UP" then


paint_memory[windows_cursor_x][windows_cursor_y] = paint_current_color
windows_cursor_y = windows_cursor_y - 1

end

if windows_key_pressed() == "WINDOWS_VK_DRAG_DOWN" then


paint_memory[windows_cursor_x][windows_cursor_y] = paint_current_color
windows_cursor_y = windows_cursor_y + 1

end

if windows_key_pressed() == "WINDOWS_VK_DRAG_LEFT" then


paint_memory[windows_cursor_x][windows_cursor_y] = paint_current_color
windows_cursor_x = windows_cursor_x -1

end


if windows_key_pressed() == "WINDOWS_VK_DRAG_RIGHT" then


paint_memory[windows_cursor_x][windows_cursor_y] = paint_current_color
windows_cursor_x = windows_cursor_x +1

end

end


function paint_ui()



Graphics.drawRect(windows_application_position_x[8]-97, windows_application_position_y[8]+2, 639,93,paint_sidebar_color)
paint_pencil()
get_paint_memory()

end



function paint_init()



local application_name = "Paint"
local application_color_1 = white
local application_color_2 = windows_highlight_color









application_focus_bar(windows_application_position_x[8]-20, windows_application_position_y[8]-20, 640, 17,application_name, 8)

if application_focus_button(windows_application_position_x[8]+510, windows_application_position_y[8]-20, 30, 17, "exit", 8) == true then

explorer = false
windows_application_position_x[8] = 100
windows_application_position_y[8] = 100 - 70

end

if application_focus_button(windows_application_position_x[8]+480, windows_application_position_y[8]-20, 30, 17, "maximize", 8) == true then

windows_application_position_x[8] = 100
windows_application_position_y[8] = 100 - 70

end

if application_focus_button(windows_application_position_x[8]+460, windows_application_position_y[8]-20, 20, 17, "minimize", 8) == true then

windows_application_position_x[8] = 1000

end

windows_background(windows_application_position_x[8]-100, windows_application_position_y[8]-1, 640, 448, "box", application_color_1, application_name, 8)
paint_ui()


end