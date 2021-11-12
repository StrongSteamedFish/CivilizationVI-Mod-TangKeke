-- Mod_GrantGreatPersonLiella
-- Author: zheng
-- DateCreated: 11/12/2021 10:12:48 AM
--------------------------------------------------------------
-- �������Ժ���ɫ��λ�л�ȡLiella!��Ƭ��������
--------------------------------------------------------------
local m_GREAT_PERSON_CLASS_LIELLA_INDEX = GameInfo.GreatPersonClasses['GREAT_PERSON_CLASS_LIELLA'].Index;
local m_UNIT_SCHOOL_IDOL_INDEX = GameInfo.Units['UNIT_SCHOOL_IDOL'].Index;

-- ��ȡĿ�����ӵ��ĳʱ������������
function EraCivicNumOfPlayer(playerID, eraType)
	local eraCivicNum = 0;
	local player = Players[playerID];
	if player then
		local playerCulture = player:GetCulture();
		if playerCulture then
			for row in GameInfo.Civics() do
				if row.EraType == eraType and playerCulture:HasCivic(row.Index) then
					eraCivicNum = eraCivicNum + 1;
				end
			end
		end
	end
	return eraCivicNum;
end

-- Ϊָ�����������һ��ָ�����͵Ĵ���ļΰ��
function GrantPlayerNextGreatPersonByClass(playerID, greatPersonClassIndex)
	for i, entry in ipairs(Game.GetGreatPeople():GetTimeline()) do
		if entry.Class == greatPersonClassIndex and entry.Individual then
			local classType = GameInfo.GreatPersonIndividuals[entry.Individual].GreatPersonClassType;
			local eraType = GameInfo.GreatPersonIndividuals[entry.Individual].EraType;
			local individualHash = GameInfo.GreatPersonIndividuals[entry.Individual].Hash;
			local classHash = GameInfo.GreatPersonClasses[classType].Hash
			local eraHash = GameInfo.Eras[eraType].Hash;
			Game.GetGreatPeople():GrantPerson(individualHash, classHash, eraHash, 0, playerID, 0);
		end
	end
end

function OnCivicCompleted(playerID, iCivic, bCancelled)
	local playerConfiguration = PlayerConfigurations[playerID];
	if playerConfiguration and playerConfiguration:GetCivilizationTypeName() == "CIVILIZATION_LIELLA" then
		if not bCancelled then
			local civicEra = GameInfo.Civics[iCivic].EraType;
			if EraCivicNumOfPlayer(playerID, civicEra) == 1 then
				print("==========Player" .. playerID .. " unlock the first civics in the new era==========");
				GrantPlayerNextGreatPersonByClass(playerID, m_GREAT_PERSON_CLASS_LIELLA_INDEX);
			end
		end		
	end
end

function OnUnitRemovedFromMap(playerID, unitID)
	local unit = UnitManager.GetUnit(playerID, unitID);
	if unit and unit:GetType() == m_UNIT_SCHOOL_IDOL_INDEX then
		GrantPlayerNextGreatPersonByClass(playerID, m_GREAT_PERSON_CLASS_LIELLA_INDEX);
	end
end

function Initialize()
	Events.CivicCompleted.Add(OnCivicCompleted);
	Events.UnitRemovedFromMap.Add(OnUnitRemovedFromMap);
end

Initialize();
