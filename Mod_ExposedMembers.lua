-- Mod_ExposedMembers
-- Author: zheng
-- DateCreated: 11/14/2021 5:30:35 PM
--------------------------------------------------------------
-- 为UI环境暴露一些可用的接口
--------------------------------------------------------------
function GrantUnitNewAbility(playerID, unitID, unitAbilityType)
	local unit = UnitManager.GetUnit(playerID, unitID);
	local unitAbility = unit:GetAbility();
	if unit and unitAbility then
		if not unitAbility:HasAbility(unitAbilityType) then
			unitAbility:ChangeAbilityCount(unitAbilityType,1);
		end
	end
end

function ClearUnitAbility(playerID, unitID, unitAbilityType)
	local unit = UnitManager.GetUnit(playerID, unitID);
	local unitAbility = unit:GetAbility();
	if unit and unitAbility then
		if unitAbility:HasAbility(unitAbilityType) then
			local unitAbilityCount = unitAbility:GetAbilityCount(unitAbilityType);
			unitAbility:ChangeAbilityCount(unitAbilityType, (unitAbilityCount ~= 0) and -unitAbilityCount or 0);
		end
	end
end

ExposedMembers.TANGKEKE = ExposedMembers.TANGKEKE or {};
ExposedMembers.TANGKEKE.GrantUnitNewAbility = GrantUnitNewAbility;
ExposedMembers.TANGKEKE.ClearUnitAbility = ClearUnitAbility;