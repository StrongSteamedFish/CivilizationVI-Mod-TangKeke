-- Leader_Abilities_GrantUnitAbilitiesFromMusic
-- Author: zheng
-- DateCreated: 11/14/2021 2:30:28 PM
--------------------------------------------------------------
-- ���������������ܺ�����ͬѧ������λ�������־����ĳ��л��������
--------------------------------------------------------------
function FindPlotsOfMusicCities()
	local plotIDsOfMusicCities = {};
	-- ����ȫ������
	for i = 0, GameDefines.MAX_PLAYERS-1, 1 do
		local pPlayer = Players[i];
		if pPlayer:WasEverAlive()  then
			local pCities = pPlayer:GetCities();
			local pCity;
			for ii, pCity in pCities:Members() do
				-- ���������е����о���
				local pCityBldgs = pCity:GetBuildings();
				for buildingInfo in GameInfo.Buildings() do
					local buildingIndex = buildingInfo.Index;
					if (pCityBldgs:HasBuilding(buildingIndex)) then
						local numSlots = pCityBldgs:GetNumGreatWorkSlots(buildingIndex);
						for index = 0, numSlots - 1 do
							local greatWorkIndex = pCityBldgs:GetGreatWorkInSlot(buildingIndex, index);
							local greatWorkTypeIndex = pCityBldgs:GetGreatWorkTypeFromIndex(greatWorkIndex);
							-- ��������־���
							if greatWorkTypeIndex ~= -1 then
								if GameInfo.GreatWorks[greatWorkTypeIndex].GreatWorkObjectType == 'GREATWORKOBJECT_MUSIC' then
									-- �����ó��е����и�λ�������ǵĸ�λID��������
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
	-- ��ȡ���������־����ĳ��еĵؿ�ID
	local plotIDsOfMusicCities = FindPlotsOfMusicCities();
	-- ���������ƿɿɵĵ�λ���ڸ�λ
	for pPlayerID in ipairs(Players) do
		local pPlayer = Players[pPlayerID];
		local pPlayerConfiguration = PlayerConfigurations[pPlayerID];
		if pPlayerConfiguration and pPlayer and pPlayerConfiguration:GetLeaderName() == 'LOC_LEADER_TANG_KEKE_NAME' then
			for i, unit in pPlayer:GetUnits():Members() do
				local x = unit:GetX();
				local y = unit:GetY();
				if x and y then
					local plotID = Map.GetPlotIndex(x, y);
					-- �жϸ�λID�Ƿ�Ϊӵ�����־����ĳ��еĸ�λ
					local plotBelongMusicCity = false;
					for ii, v in ipairs(plotIDsOfMusicCities) do
						if plotID == v then
							plotBelongMusicCity = true;
						end
					end
					if plotBelongMusicCity then
						-- ����õ�λ����
						ExposedMembers.TANGKEKE.GrantUnitNewAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_COMBAT_FROM_TANGKEKE_ABILITY3');
						ExposedMembers.TANGKEKE.GrantUnitNewAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_MOVEMENT_FROM_TANGKEKE_ABILITY3');
					else
						-- ����õ�λ����
						ExposedMembers.TANGKEKE.ClearUnitAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_COMBAT_FROM_TANGKEKE_ABILITY3');
						ExposedMembers.TANGKEKE.ClearUnitAbility(pPlayerID, unit:GetID(), 'ABILITY_GRANT_MOVEMENT_FROM_TANGKEKE_ABILITY3');
					end
				end
			end
		end
	end
end

Events.TurnBegin.Add(ChangeUnitAbilitiesByMusic);