-- SelectedUnit_TangKeke
-- Author: zheng
-- DateCreated: 1/14/2022 1:13:15 PM
--------------------------------------------------------------
-- 修改原本UI渲染，添加渲染学园偶像的高亮地块内容
--------------------------------------------------------------
include("SelectedUnit");

local RealizeGreatPersonLens_BASE = RealizeGreatPersonLens;

-- 覆盖原本的基础函数
function RealizeGreatPersonLens(kUnit:table )
	RealizeGreatPersonLens_BASE(kUnit);
	if kUnit ~= nil and ( not UI.IsGameCoreBusy() ) then
		local playerID:number = kUnit:GetOwner();
		if playerID == Game.GetLocalPlayer() then
			local kUnitArchaeology:table = kUnit:GetArchaeology();
			local kUnitGreatPerson:table = kUnit:GetGreatPerson();
			local kUnitRockBand:table = kUnit:GetRockBand();
			local bCanCauseDisasters:boolean = false;
			local sUnitType = GameInfo.Units[kUnit:GetUnitType()].UnitType;
			if kUnitRockBand ~= nil and GameInfo.Units[kUnit:GetUnitType()].UnitType == "UNIT_SCHOOL_IDOL" then
				local activationPlots:table = {};
				local rawActivationPlots:table = kUnitRockBand:GetActivationHighlightPlots();
				for _,plotIndex:number in ipairs(rawActivationPlots) do
					table.insert(activationPlots, {"Great_People", plotIndex});
				end
					
				UILens.SetLayerHexesArea(m_HexColoringGreatPeople, playerID, {}, activationPlots);
				UILens.ToggleLayerOn(m_HexColoringGreatPeople);
			end
		end
	end
end