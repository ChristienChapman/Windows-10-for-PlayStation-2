-- All glory to God, Jesus Christ, and the Holy Spirit


yahtzee = false
local rolls = 6
local dice1 = 0
local dice2 = 0
local dice6 = 0
local dice4 = 0
local dice5 = 0
local score_1 = 0
local score_2 = 0
local score_6 = 0
local score_4 = 0
local score_5 = 0
local score_6 = 0
local x6 = 0
local x4 = 0
local small = 0
local large = 0
local house = 0
local all = 0
local points = 0
local enum = 0
local played1 = false
local played2 = false
local played6 = false
local played4 = false
local played5 = false
local played6 = false
local played7 = false
local played8 = false
local played9 = false
local played10 = false
local played11 = false
local played12 = false
local check1 = false
local check2 = false
local check6 = false
local check4 = false
local check5 = false





local function clearDeck()


dice1 = 0
dice2 = 0
dice6 = 0
dice4 = 0
dice5 = 0
score_1 = 0
score_2 = 0
score_6 = 0
score_4 = 0
score_5 = 0
score_6 = 0
enum = 0

end


function yahtzee_init()

local application_color_1 = windows_background_color
local application_color_2 = windows_highlight_color
local application_name = "Yahtzee"
application_focus_bar(windows_application_position_x[6]-20, windows_application_position_y[6]-20, 640, 17,application_name, 6)
windows_background(windows_application_position_x[6]-100, windows_application_position_y[6]-1, 640, 448, "box", application_color_1, application_name, 6)

if rolls > 0 then
if windows_key_pressed() == "WINDOWS_VK_TRIANGLE" then
System.sleep(1)
rolls = rolls - 1
dice1 = math.random(1,6)
dice2 = math.random(1,6)
dice6 = math.random(1,6)
dice4 = math.random(1,6)
dice5 = math.random(1,6)

enum = 0

	if dice1 == 1 then
	enum = enum + dice1
	end
	if dice2 == 1 then
	enum = enum + dice2
	end
	if dice6 == 1 then
	enum = enum + dice6
	end
	if dice4 == 1 then
	enum = enum + dice4
	end
	if dice5 == 1 then
	enum = enum + dice5
	end
	
	score_1 = enum
	
	enum = 0
	
	
	if dice1 == 2 then
	enum = enum + dice1
	end
	if dice2 == 2 then
	enum = enum + dice2
	end
	if dice6 == 2 then
	enum = enum + dice6
	end
	if dice4 == 2 then
	enum = enum + dice4
	end
	if dice5 == 2 then
	enum = enum + dice5
	end
	
	score_2 = enum
	
	
	enum = 0
	
	
	if dice1 == 6 then
	enum = enum + dice1
	end
	if dice2 == 6 then
	enum = enum + dice2
	end
	if dice6 == 6 then
	enum = enum + dice6
	end
	if dice4 == 6 then
	enum = enum + dice4
	end
	if dice5 == 6 then
	enum = enum + dice5
	end
	
	score_6 = enum
	
	enum = 0
	
	
	if dice1 == 4 then
	enum = enum + dice1
	end
	if dice2 == 4 then
	enum = enum + dice2
	end
	if dice6 == 4 then
	enum = enum + dice6
	end
	if dice4 == 4 then
	enum = enum + dice4
	end
	if dice5 == 4 then
	enum = enum + dice5
	end
	
	score_4 = enum
	
	enum = 0
	
	
	if dice1 == 5 then
	enum = enum + dice1
	end
	if dice2 == 5 then
	enum = enum + dice2
	end
	if dice6 == 5 then
	enum = enum + dice6
	end
	if dice4 == 5 then
	enum = enum + dice4
	end
	if dice5 == 5 then
	enum = enum + dice5
	end
	
	score_5 = enum
	
	enum = 0
	
	
	if dice1 == 6 then
	enum = enum + dice1
	end
	if dice2 == 6 then
	enum = enum + dice2
	end
	if dice6 == 6 then
	enum = enum + dice6
	end
	if dice4 == 6 then
	enum = enum + dice4
	end
	if dice5 == 6 then
	enum = enum + dice5
	end
	
	score_6 = enum
	
	
	

enum = 0



if dice1 == dice2 then
check1 = true
check2 = true

end

if dice1 == dice6 then
check1 = true
check6 = true

end

if dice1 == dice4 then
check1 = true
check4 = true

end

if dice1 == dice5 then
check1 = true
check5 = true

end

if dice2 == dice6 then
check2 = true
check6 = true

end


if dice2 == dice4 then
check2 = true
check4 = true

end


if dice2 == dice5 then
check2 = true
check5 = true

end



if dice6 == dice4 then
check6 = true
check4 = true

end

if dice6 == dice5 then
check6 = true
check5 = true

end

if dice4 == dice5 then
check4 = true
check5 = true

end


if check1 and check2 and check6 == true then

enum = enum + dice1 + dice2 + dice6


end

if check1 and check2 and check4 == true then

enum = enum + dice1 + dice2 + dice4


end

if check1 and check2 and check5 == true then

enum = enum + dice1 + dice2 + dice5


end

if check1 and check6 and check4 == true then

enum = enum + dice1 + dice6 + dice4


end

if check1 and check6 and check5 == true then

enum = enum + dice1 + dice6 + dice5


end

if check1 and check4 and check5 == true then

enum = enum + dice1 + dice4 + dice5


end

if check2 and check6 and check4 == true then

enum = enum + dice2 + dice6 + dice4


end

if check2 and check6 and check5 == true then

enum = enum + dice2 + dice6 + dice5


end

if check2 and check4 and check5 == true then

enum = enum + dice2 + dice4 + dice5


end

if check6 and check4 and check5 == true then

enum = enum + dice6 + dice4 + dice5


end

x6 = enum


end

end


if played1 == false then
if windows_button(windows_application_position_x[6]+40, windows_application_position_y[6]+20, 40, 40, "box", grey, application_color_2, "", false, 6) then

	local parse = 1
	
	if dice1 == parse then
	points = points + dice1
	end
	if dice2 == parse then
	points = points + dice2
	end
	if dice6 == parse then
	points = points + dice6
	end
	if dice4 == parse then
	points = points + dice4
	end
	if dice5 == parse then
	points = points + dice5
	end
	clearDeck()
	rolls = 6
	played1 = true
  
  
end
end
print(windows_application_position_x[6]+40, windows_application_position_y[6]+20,0.45,"1   " .. score_1, white)


if played2 == false then
if windows_button(windows_application_position_x[6]+40, windows_application_position_y[6]+20+40, 40, 40, "box", grey, application_color_2, "", false, 6) then

	local parse = 2
	
	if dice1 == parse then
	points = points + dice1
	end
	if dice2 == parse then
	points = points + dice2
	end
	if dice6 == parse then
	points = points + dice6
	end
	if dice4 == parse then
	points = points + dice4
	end
	if dice5 == parse then
	points = points + dice5
	end
	clearDeck()
	rolls = 6
	  played2 = true
  
  
end
end
print(windows_application_position_x[6]+40, windows_application_position_y[6]+20+40,0.45,"2   " .. score_2, white)





if played6 == false then
if windows_button(windows_application_position_x[6]+40, windows_application_position_y[6]+20+80, 40, 40, "box", grey, application_color_2, "", false, 6) then

	local parse = 6
	
	if dice1 == parse then
	points = points + dice1
	end
	if dice2 == parse then
	points = points + dice2
	end
	if dice6 == parse then
	points = points + dice6
	end
	if dice4 == parse then
	points = points + dice4
	end
	if dice5 == parse then
	points = points + dice5
	end
	clearDeck()
	rolls = 6
	  played6 = true
  
  
end
end
print(windows_application_position_x[6]+40, windows_application_position_y[6]+20+80,0.45,"6   " .. score_6, white)





if played4 == false then
if windows_button(windows_application_position_x[6]+40, windows_application_position_y[6]+20+120, 40, 40, "box", grey, application_color_2, "", false, 6) then

	local parse = 4
	
	if dice1 == parse then
	points = points + dice1
	end
	if dice2 == parse then
	points = points + dice2
	end
	if dice6 == parse then
	points = points + dice6
	end
	if dice4 == parse then
	points = points + dice4
	end
	if dice5 == parse then
	points = points + dice5
	end
	clearDeck()
	rolls = 6
	  played4 = true
  
  
end
end
print(windows_application_position_x[6]+40, windows_application_position_y[6]+20+120,0.45,"4   " .. score_4, white)








if played5 == false then
if windows_button(windows_application_position_x[6]+40, windows_application_position_y[6]+20+160, 40, 40, "box", grey, application_color_2, "", false, 6) then

	local parse = 5
	
	if dice1 == parse then
	points = points + dice1
	end
	if dice2 == parse then
	points = points + dice2
	end
	if dice6 == parse then
	points = points + dice6
	end
	if dice4 == parse then
	points = points + dice4
	end
	if dice5 == parse then
	points = points + dice5
	end
	clearDeck()
	rolls = 6
	  played5 = true
  
  
end
end
print(windows_application_position_x[6]+40, windows_application_position_y[6]+20+160,0.45,"5   " .. score_5, white)






if played6 == false then
if windows_button(windows_application_position_x[6]+40, windows_application_position_y[6]+20+200, 40, 40, "box", grey, application_color_2, "", false, 6) then

	local parse = 6
	
	if dice1 == parse then
	points = points + dice1
	end
	if dice2 == parse then
	points = points + dice2
	end
	if dice6 == parse then
	points = points + dice6
	end
	if dice4 == parse then
	points = points + dice4
	end
	if dice5 == parse then
	points = points + dice5
	end
	clearDeck()
	rolls = 6
  played6 = true
  
end
end
print(windows_application_position_x[6]+40, windows_application_position_y[6]+20+200,0.45,"6   " .. score_6, white)





if played7 == false then
if windows_button(windows_application_position_x[6]+40+100, windows_application_position_y[6]+20, 40, 40, "box", grey, application_color_2, "", false, 6) then

if dice1 == dice2 then
check1 = true
check2 = true

end

if dice1 == dice6 then
check1 = true
check6 = true

end

if dice1 == dice4 then
check1 = true
check4 = true

end

if dice1 == dice5 then
check1 = true
check5 = true

end

if dice2 == dice6 then
check2 = true
check6 = true

end


if dice2 == dice4 then
check2 = true
check4 = true

end


if dice2 == dice5 then
check2 = true
check5 = true

end



if dice6 == dice4 then
check6 = true
check4 = true

end

if dice6 == dice5 then
check6 = true
check5 = true

end

if dice4 == dice5 then
check4 = true
check5 = true

end


if check1 and check2 and check6 == true then

points = points + dice1 + dice2 + dice6


end

if check1 and check2 and check4 == true then

points = points + dice1 + dice2 + dice4


end

if check1 and check2 and check5 == true then

points = points + dice1 + dice2 + dice5


end

if check1 and check6 and check4 == true then

points = points + dice1 + dice6 + dice4


end

if check1 and check6 and check5 == true then

points = points + dice1 + dice6 + dice5


end

if check1 and check4 and check5 == true then

points = points + dice1 + dice4 + dice5


end

if check2 and check6 and check4 == true then

points = points + dice2 + dice6 + dice4


end

if check2 and check6 and check5 == true then

points = points + dice2 + dice6 + dice5


end

if check2 and check4 and check5 == true then

points = points + dice2 + dice4 + dice5


end

if check6 and check4 and check5 == true then

points = points + dice6 + dice4 + dice5


end






	clearDeck()
	rolls = 6
  played7 = true
  
end
end
print(windows_application_position_x[6]+40+100, windows_application_position_y[6]+20,0.45,"6X  " .. x6, white)










--dice



print(windows_application_position_x[6]+20, windows_application_position_y[6]+20+250,0.45,"DICE: " .. dice1 .. " " .. dice2 .. " " .. dice6 .. " " .. dice4 .. " " .. dice5, white)
print(windows_application_position_x[6]+20, windows_application_position_y[6]+20+270,0.45,"SCORE: " .. points, white)


end

















