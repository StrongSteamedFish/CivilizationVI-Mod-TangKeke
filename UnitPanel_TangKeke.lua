-- UnitPanel_TangKeke
-- Author: zheng
-- DateCreated: 11/10/2021 12:50:37 PM
--------------------------------------------------------------
-- �޸�ԭ��UI��Ⱦ�������Ⱦѧ԰ż��ĵ�λ�������
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