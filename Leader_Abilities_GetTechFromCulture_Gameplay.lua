-- Leader_Abilities_GetTechFromCulture_Gameplay
-- Author: zheng
-- DateCreated: 11/11/2021 2:44:58 PM
--------------------------------------------------------------
-- �����������Ϻ������������Ļ��л�ȡ�Ƽ�����  ʵ�ֹ���
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
				-- ����GrantYield����ֻ�����Ͳ������������֣�С�����ֻᱻ��ȥ����˻�Ҫʹ��ChangeCurrentResearchProgress��������С�����ֵĿƼ�ֵ�������о��ĿƼ���
				local GrantTechYieldDecimalPart = GrantTechYield % 1;
				local GrantTechYieldIntegralPart = GrantTechYield - GrantTechYieldDecimalPart;
				pPlayer:GetTechs():ChangeCurrentResearchProgress(GrantTechYieldDecimalPart);
				pPlayer:GrantYield(m_YIELD_SCIENCE_INDEX, GrantTechYieldIntegralPart);
			end
		end
	end
end

Events.TurnBegin.Add(GrantAllTangKekeTechFromCulture);