menu.register_hotkey(33, function()
	local heistScript = script("fm_mission_controller_2020")
	if heistScript then
		local cutterProgress = heistScript:get_float(28269 + 3)
		if cutterProgress then
			if cutterProgress > 0.0 and cutterProgress < 99.9 then
				heistScript:set_float(28269 + 3, 99.9)
			end
		end
	end
end)
PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
 
local function Text(text)
	menu.add_action(text, function() end)
end
Text(" _______________Cayo Setup________________")
 
menu.add_int_range("Target - Teq/Ruby/Bonds/PinkD/Statue", 1, 1, 5, function() return stats.get_int(mpx .. "H4CNF_TARGET") end, function(TGT)
	if TGT == 1 then
		H4t = 0
	elseif TGT == 2 then
		H4t = 1
	elseif TGT == 3 then
		H4t = 2
	elseif TGT == 4 then
		H4t = 3
	elseif TGT == 5 then
		H4t = 5
	end
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H4CNF_TARGET", H4t)
end)

menu.add_int_range("Weapons - Agg/Cnsp/Crck/Sab/Mrksmn", 1, 1, 5, function() return stats.get_int(mpx .. "H4CNF_WEAPONS") end, function(Wpn)
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H4CNF_WEAPONS", Wpn)
end)

menu.add_int_range("Aprch Ks/Alk/Vl/Ann/PBt/Lngf/ALL", 1, 1, 7, function() return 1 end, function(CyApVh)
	if CyApVh == 1 then
		CyM = 65283
	elseif CyApVh == 2 then
		CyM = 65413
	elseif CyApVh == 3 then
		CyM = 65289
	elseif CyApVh == 4 then
		CyM = 65425
	elseif CyApVh == 5 then
		CyM = 65313
	elseif CyApVh == 6 then
		CyM = 65345
	else
		CyM = 65535
	end
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H4_MISSIONS", CyM)
end)

menu.add_action("Set Hard Mode", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H4_PROGRESS", 131055)
end)

menu.add_action("       ---[[Complete Preps - Finale]]---", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H4CNF_UNIFORM", -1)
		stats.set_int(mpx .. "H4CNF_GRAPPEL", -1)
		stats.set_int(mpx .. "H4CNF_TROJAN", 5)
		stats.set_int(mpx .. "H4CNF_WEP_DISRP", 3)
		stats.set_int(mpx .. "H4CNF_ARM_DISRP", 3)
		stats.set_int(mpx .. "H4CNF_HEL_DISRP", 3)
		stats.set_int(mpx .. "H4LOOT_GOLD_C", -1)
		stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", -1)
		stats.set_int(mpx .. "H4LOOT_PAINT", -1)
		stats.set_int(mpx .. "H4LOOT_PAINT_SCOPED", -1)
		stats.set_int(mpx .. "H4LOOT_PAINT_V", 403500)
		stats.set_int(mpx .. "H4LOOT_CASH_I", 0)
		stats.set_int(mpx .. "H4LOOT_CASH_C", 0)
		stats.set_int(mpx .. "H4LOOT_WEED_I", 0)
		stats.set_int(mpx .. "H4LOOT_COKE_I", 0)
end)
Text("For solo run take paintings and avoid")
Text("office safe cash, you will get 2.5 +E")
Text("-------------------------------------------------------")
menu.add_action("All POI", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H4CNF_BS_GEN", -1)
		stats.set_int(mpx .. "H4CNF_BS_ENTR", 63)
		stats.set_int(mpx .. "H4CNF_APPROACH", -1)
end)
Text("--------------Cayo Things--------------------")
menu.add_int_range("Player 1", 1.0, 15, 300, function() 
	return globals.get_int(1974405)
end, function(value)
	globals.set_int(1974405, value)
end)
menu.add_int_range("Player 2", 1.0, 15, 300, function() 
	return globals.get_int(1974406)
end, function(value)
	globals.set_int(1974406, value)
end)
menu.add_int_range("Player 3", 1.0, 15, 300, function() 
	return globals.get_int(1974407)
end, function(value)
	globals.set_int(1974407, value)
end)
menu.add_int_range("Player 4", 1.0, 15, 300, function() 
	return globals.get_int(1974408)
end, function(value)
	globals.set_int(1974408, value)
end)
menu.add_int_range("Non-Host Self", 1.0, 15, 300, function() 
	return globals.get_int(2722097)
end, function(value)
	globals.set_int(2722097, value)
end)

menu.add_int_range("Cayo Bag Size", 900.0, 1800, 15000, function() 
	return globals.get_int(291540)
end, function(value)
	globals.set_int(291540, value)
end)
Text("-----------------> Killa B <-------------------")