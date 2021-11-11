-- Leader_Abilities_GetTechFromCulture_UI
-- Author: zheng
-- DateCreated: 11/11/2021 2:43:35 PM
--------------------------------------------------------------
-- 领袖能力：上海卷王——从文化中获取科技产出  显示通知
--------------------------------------------------------------
include("StatusMessagePanel");

local BASE_OnLocalTurnEnd = OnLocalTurnEnd;

function OnLocalTurnEnd( a,b,c )
	local playerID:number = Game.GetLocalPlayer();
	if playerID == -1 or playerID == 1000 then
		return;
	end;
	if PlayerConfigurations[playerID]:GetLeaderName() == 'LOC_LEADER_TANG_KEKE_NAME' then
		local CultureYield = tonumber(Players[playerID]:GetCulture():GetCultureYield());
		local GrantTechYield = CultureYield * 0.3;
		if GrantTechYield >= 0.1 then
			AddDefault(Locale.Lookup("LOC_TANG_KEKE_GRANT_TECH_MESSAGE_1") .. GrantTechYield - GrantTechYield % 0.1 .. Locale.Lookup("LOC_TANG_KEKE_GRANT_TECH_MESSAGE_2"), 5);
		end
	end
	BASE_OnLocalTurnEnd(a,b,c);
end