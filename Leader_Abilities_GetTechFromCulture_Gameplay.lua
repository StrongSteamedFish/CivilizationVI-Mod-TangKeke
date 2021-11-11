-- Leader_Abilities_GetTechFromCulture_Gameplay
-- Author: zheng
-- DateCreated: 11/11/2021 2:44:58 PM
--------------------------------------------------------------
-- 领袖能力：上海卷王——从文化中获取科技产出  实现功能
--------------------------------------------------------------
local m_YIELD_SCIENCE_INDEX = GameInfo.Yields["YIELD_SCIENCE"].Index;

function GrantAllTangKekeTechFromCulture()
	for pPlayerID in ipairs(Players) do
		local pPlayer = Players[pPlayerID];
		local pPlayerConfiguration = PlayerConfigurations[pPlayerID];
		if pPlayerConfiguration and pPlayer and pPlayerConfiguration:GetLeaderName() == 'LOC_LEADER_TANG_KEKE_NAME' then
			local CultureYield = tonumber(pPlayer:GetCulture():GetCultureYield());
			local GrantTechYield = CultureYield * 0.3;
			if GrantTechYield > 0 then
				-- 由于GrantYield方法只会赠送参数的整数部分，小数部分会被舍去。因此还要使用ChangeCurrentResearchProgress方法赠送小数部分的科技值到正在研究的科技上
				local GrantTechYieldDecimalPart = GrantTechYield % 1;
				local GrantTechYieldIntegralPart = GrantTechYield - GrantTechYieldDecimalPart;
				pPlayer:GetTechs():ChangeCurrentResearchProgress(GrantTechYieldDecimalPart);
				pPlayer:GrantYield(m_YIELD_SCIENCE_INDEX, GrantTechYieldIntegralPart);
			end
		end
	end
end

Events.TurnBegin.Add(GrantAllTangKekeTechFromCulture);