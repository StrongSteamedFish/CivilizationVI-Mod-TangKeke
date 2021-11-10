-- UnitPanel_TangKeke
-- Author: zheng
-- DateCreated: 11/10/2021 12:50:37 PM
--------------------------------------------------------------
-- 修改原本UI渲染，添加渲染学园偶像的单位面板内容
--------------------------------------------------------------
include("UnitPanel_Expansion2");

local BASE_ReadCustomUnitStats = ReadCustomUnitStats;

function ReadCustomUnitStats( pUnit:table, kSubjectData:table )	
	kSubjectData = BASE_ReadCustomUnitStats(pUnit, kSubjectData );
	if GameInfo.Units[kSubjectData.UnitType].UnitType == "UNIT_SCHOOL_IDOL" then 
		kSubjectData.IsRockbandUnit = true;
		kSubjectData.RockBandLevel	= pUnit:GetRockBand():GetRockBandLevel();
		kSubjectData.AlbumSales		= pUnit:GetRockBand():GetAlbumSales();
	end

	return kSubjectData;
end