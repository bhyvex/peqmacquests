function event_death_complete(e)
	random_result = math.random(100);
	
	if(random_result < 98) then
		eq.spawn2(70020,6,0,-974.5,436.4,-343.8,29);
		-- e.self:Say("Spawning aqua goblin mariner");
	else
		eq.spawn2(70059,4,0,-1123.30,-1194.57,-98.32,122);
		-- e.self:Say("Spawning Bilge Farfathom");
	end
end

 -- #an_undertow_skeleton (trigger for #Bilge_Farfathom 70059)