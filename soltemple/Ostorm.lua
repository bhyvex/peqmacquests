-- Quest for respecialization
-- Quest for Bard Lambent Fire Opal

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("I am Ostorm of the Temple of Solusek Ro, guardian of the sacred crystal of Kintaz.  Be wary and keep your distance, lest the proximity of the crystal [steal] your [memories].");
	elseif(e.message:findi("steal")) then
		e.self:Say("It is the nature of the crystal of Kintaz to steal the memories of those around it. Only I am safe, and then only because of the strong wardings placed on me by Solusek Ro himself. Are you interested in [losing] any [memories]?");
	elseif(e.message:findi("losing")) then
		e.self:Say("Recently, I have been experimenting with the crystal, and have found that those exposed to ruby light filtered through it tend to lose the memories of their most specialized arcane skills. Are you sure you want to [lose advanced memory] of specialization?");
	elseif(e.message:findi("advanced")) then
		e.self:Say("Be warned that once exposed to the crystal, I can not reverse the effects. If you desire exposure, fetch me a ruby.");
	elseif(e.message:findi("gold")) then
		e.self:Say("You do not remember?  You promised me fifty gold coins for allowing you to be exposed to the sacred crystal of Kintaz.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.trade, {item1 = 10035})) then
		e.self:Say("..hear me? Ah, you seem to be coming out of your stupor. I think you have been exposed to the crystal long enough. By the time you leave the temple, your memories should have faded. Do you have the [fifty gold] coins that you owe me?");
		e.other:Faction(320,15);
		e.other:Faction(291,-15);
		--foreach skill (43, 44, 45, 46, 47) -- unknown conversion needed
		--if(e.self:GetSkill(skill) > 49) then -- unknown conversion needed
		--	e.self:SetSkill(skill, 49); -- unknown conversion needed
		--end
		if(e.other:GetSkill(43) > 49) then
			e.other:SetSkill(43, 49);
		end
		if(e.other:GetSkill(44) > 49) then
			e.other:SetSkill(44, 49);
		end
		if(e.other:GetSkill(45) > 49) then
			e.other:SetSkill(45, 49);
		end
		if(e.other:GetSkill(46) > 49) then
			e.other:SetSkill(46, 49);
		end
		if(e.other:GetSkill(47) > 49) then
			e.other:SetSkill(47, 49);
		end
		e.other:Message(7, "Your specialize skills have all been set to 49.");
		e.other:QuestReward(e.self,0,0,0,0,0,1000);
	end
	if(item_lib.check_turn_in(e.trade, {gold = 50})) then
		e.self:Say("Thank you.");
		e.other:Faction(320, 15);
		e.other:Faction(291, -15);
		e.other:QuestReward(e.self,0,0,0,0,0,0);
	end
--Lambent Fire Opal
	if(item_lib.check_turn_in(e.trade, {item1 = 10031, item2 = 10031, item3 = 10000})) then
		e.self:Say("Ahh, Genni must have sent you to me.  Very well, here is your Lambent Fire Opal.");
		e.other:Faction(320, 15);
		e.other:Faction(291, -15);
		e.other:QuestReward(e.self,0,0,0,0,10128,0);
	end
--magnetized platinum
	if(item_lib.check_turn_in(e.trade, {item1 = 16507})) then
		e.self:Say("I see that Gavel has sent you to me.  Very well, I have magnetized your platinum bar - take it.");
		e.other:SummonItem(19049);
		e.other:QuestReward(e.self,0,0,0,0,19049,0);
	end
end

-- Quest by mystic414
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
