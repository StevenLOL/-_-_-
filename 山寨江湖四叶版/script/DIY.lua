if DrawStrBoxYesNo(-1, -1, "Ҫ�����˲���ô��", C_WHITE, 30) == true then
    for i = 1, CC.TeamNum do                 
        local id = JY.Base["����" .. i];
		if id >= 0 then
			JY.Person[id]["��������"] = 30000
			War_PersonTrainBook(id)
			JY.Person[id]["����"] = 52000
			War_AddPersonLVUP(id);		
		end
    end
end

--[[
for id = 0, JY.ThingNum - 1 do
	if JY.Thing[id]["����"] <= 2 then
		instruct_32(id)
	end
end

for i = 1, CC.HZNum do
	addHZ(i);
end

--DIYר���˺�����
function War_DIY_WugongHurtLife(emenyid, wugong, hurt, ang, dng)
	local eid = WAR.Person[emenyid]["������"]
	return hurt, ang, dng;
end

--�����壺DIYս���Ӻ���ר��
function War_DIY_Fight(id, wugong, level, ng)
	return ng;
end
]]