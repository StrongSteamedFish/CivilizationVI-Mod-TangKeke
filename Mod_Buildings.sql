-- Mod_Buildings
-- Author: zheng
-- DateCreated: 11/10/2021 5:14:55 PM
--------------------------------------------------------------
-- ������School Idol Project��Ӳ�λ�Ľ���
--------------------------------------------------------------
INSERT INTO Types
	(Type, Kind)
VALUES
	('BUILDING_SCHOOL_IDOL_CENTER', 'KIND_BUILDING');

INSERT INTO Buildings
	(BuildingType, Name, Cost, PrereqDistrict, Description)
VALUES
	('BUILDING_SCHOOL_IDOL_CENTER', 'LOC_BUILDING_SCHOOL_IDOL_CENTER_NAME', 1, 'DISTRICT_SCHOOL_IDOL_PROJECT', 'LOC_BUILDING_SCHOOL_IDOL_CENTER_DESCRIPTION');

INSERT INTO Building_GreatWorks
	(BuildingType, GreatWorkSlotType, NumSlots, ThemingUniquePerson, ThemingSameObjectType, ThemingUniqueCivs, ThemingSameEras, ThemingYieldMultiplier, ThemingTourismMultiplier, NonUniquePersonYield, NonUniquePersonTourism, ThemingBonusDescription)
VALUES
	('BUILDING_SCHOOL_IDOL_CENTER', 'GREATWORKSLOT_MUSIC', 3, 0, 0, 0, 0, 100, 100, 4, 4, 'LOC_SCHOOL_IDOL_AUTO_THEMING');

-- NonUniquePersonYield��NonUniquePersonTourism:��ͬ�����ߵ���Ʒ������չ����ʣ����ͬ���ߵ���Ʒ�ṩ���Ļ�ֵ������ҵ��