-- Leader_Abilities_GrantUnitAbilitiesFromMusic
-- Author: zheng
-- DateCreated: 11/14/2021 2:30:28 PM
--------------------------------------------------------------
-- 领袖能力：声音很好听的同学——单位从有音乐巨作的城市获得能力。
--------------------------------------------------------------
function FindPlotsOfMusicCities()
	local plotIDsOfMusicCities = {};
	-- 遍历全部城市
	for i = 0, GameDefines.MAX_PLAYERS-1, 1 do
		local pPlayer = Players[i];
		if pPlayer:WasEverAlive()  then
			local pCities = pPlayer:GetCities();
			local pCity;
			for ii, pCity in pCities:Members() do
				-- 遍历城市中的所有巨作
				local pCityBldgs = pCity:GetBuildings();
				for buildingInfo in GameInfo.Buildings() do
					local buildingIndex = buildingInfo.Index;
					if (pCityBldgs:HasBuilding(buildingIndex)) then
						local numSlots = pCityBldgs:GetNumGreatWorkSlots(buildingIndex);
						for index = 0, numSlots - 1 do
							local greatWorkIndex = pCityBldgs:GetGreatWorkInSlot(buildingIndex, index);
							local greatWorkTypeIndex = pCityBldgs:GetGreatWorkTypeFromIndex(greatWorkIndex);
							-- 如果有音乐巨作
							if greatWorkTypeIndex ~= -1 then
								if GameInfo.GreatWorks[greatWorkTypeIndex].GreatWorkObjectType == 'GREATWORKOBJECT_MUSIC' then
									-- 遍历该城市的所有格位，将他们的格位ID储存起来
									local pCityPlots = Map.GetCityPlots():GetPurchasedPlots(pCity)
									for _, plotIndex in pairs(pCityPlots) do
										table.insert(plotIDsOfMusicCities, plotIndex);
									end
								end
							end
						end
					end
				end
			end
		end
	end
	return plotIDsOfMusicCities;
end

function ChangeUnitAbilitiesByMusic()
	-- 获取所有有音乐巨作的城市的地块ID
	local plotIDsOfMusicCities = FindPlotsOfMusicCities();
	-- 遍历所有唐可可的单位所在格位
	for pPlayerID in ipairs(Players) do
		local pPlayer = Players[pPlayerID];
		local pPlayerConfiguration = PlayerConfigurations[pPlayerID];
		if pPlayerConfiguration and pPlayer and pPlayerConfiguration:GetLeaderName() == 'LOC_LEADER_TANG_KEKE_NAME' then
			for i, unit in pPlayer:GetUnits():Members() do
				local x = unit:GetX();
				local y = unit:GetY();
				if x and y then
					local plotID = Map.GetPlotIndex(x, y);
					-- 判断格位ID是否为拥有音乐巨作的城市的格位
					local plotBelongMusicCity = false;
					for ii, v in ipairs(plotIDsOfMusicCities) do
						if plotID == v then
							plotBelongMusicCity = true;
						end
					end
					if plotBelongMusicCity then
						-- 赋予该单位能力
						ExposedMembers.TANGKEKE.GrantUnitNewAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_COMBAT_FROM_TANGKEKE_ABILITY3');
						ExposedMembers.TANGKEKE.GrantUnitNewAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_MOVEMENT_FROM_TANGKEKE_ABILITY3');
					else
						-- 清除该单位能力
						ExposedMembers.TANGKEKE.ClearUnitAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_COMBAT_FROM_TANGKEKE_ABILITY3');
						ExposedMembers.TANGKEKE.ClearUnitAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_MOVEMENT_FROM_TANGKEKE_ABILITY3');
					end
				end
			end
		end
	end
end

Events.TurnBegin.Add(ChangeUnitAbilitiesByMusic);