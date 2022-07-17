menu.add_action("---------License Plate Speedometer----------", function() end) --credits to Bababoiiiii
local function speedometerplate(mode)
	while true do
		if localplayer:is_in_vehicle() then
			veh = localplayer:get_current_vehicle()
			speedms = math.sqrt(veh:get_velocity().x^2 +veh:get_velocity().y^2+veh:get_velocity().z^2)
			veh:set_number_plate_text(math.floor(speedms * mode))
		end
	sleep(0.05) -- the lower the smoother the speedometer
	end
end


menu.add_array_item("Mode", {"KM/H", "MP/H"}, function()
        return 1
end, function(value)
	if value == 1 then speedometerplate(3.6) else speedometerplate(2.23694) end 
end) 
menu.add_action("-----------------Bababoiiiii------------------", function() end)