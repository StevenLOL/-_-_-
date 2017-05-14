if DrawStrBoxYesNo(-1, -1, "要用懒人补丁么？", C_WHITE, 30) == true then
    for i = 1, CC.TeamNum do                 
        local id = JY.Base["队伍" .. i];
		if id >= 0 then
			JY.Person[id]["修炼点数"] = 30000
			War_PersonTrainBook(id)
			JY.Person[id]["经验"] = 52000
			War_AddPersonLVUP(id);		
		end
    end
end

--[[
for id = 0, JY.ThingNum - 1 do
	if JY.Thing[id]["类型"] <= 2 then
		instruct_32(id)
	end
end

for i = 1, CC.HZNum do
	addHZ(i);
end

--DIY专用伤害计算
function War_DIY_WugongHurtLife(emenyid, wugong, hurt, ang, dng)
	local eid = WAR.Person[emenyid]["人物编号"]
	return hurt, ang, dng;
end

--蓝烟清：DIY战斗子函数专用
function War_DIY_Fight(id, wugong, level, ng)
	return ng;
end
]]