-- Mod_Districts
-- Author: zheng
-- DateCreated: 11/9/2021 1:21:49 PM
--------------------------------------------------------------
-- ��ɫ����School Idol Project
--------------------------------------------------------------
INSERT INTO Types
	(Type, Kind)
VALUES
	('DISTRICT_SCHOOL_IDOL_PROJECT', 'KIND_DISTRICT'),
	('TRAIT_DISTRICT_SCHOOL_IDOL_PROJECT', 'KIND_TRAIT');

INSERT INTO Traits
	(TraitType, Name, Description)
VALUES
	('TRAIT_DISTRICT_SCHOOL_IDOL_PROJECT', 'LOC_TRAIT_DISTRICT_SCHOOL_IDOL_PROJECT_NAME', 'LOC_TRAIT_DISTRICT_SCHOOL_IDOL_PROJECT_DESCRIPTION');

INSERT INTO CivilizationTraits
	(CivilizationType, TraitType)
VALUES
	('CIVILIZATION_LIELLA', 'TRAIT_DISTRICT_SCHOOL_IDOL_PROJECT');

INSERT INTO Districts
	(DistrictType, Name, PrereqTech, PrereqCivic, Coast, Description, Cost, RequiresPlacement, RequiresPopulation, NoAdjacentCity, CityCenter, Aqueduct, InternalOnly, ZOC, FreeEmbark, HitPoints, CaptureRemovesBuildings, CaptureRemovesCityDefenses, PlunderType, PlunderAmount, TradeEmbark, MilitaryDomain, CostProgressionModel, CostProgressionParam1, TraitType, Appeal, Housing, Entertainment, OnePerCity, AllowsHolyCity, Maintenance, AirSlots, CitizenSlots, TravelTime, CityStrengthModifier, AdjacentToLand, CanAttack, AdvisorType, CaptureRemovesDistrict, MaxPerPlayer)
SELECT
	'DISTRICT_SCHOOL_IDOL_PROJECT', 'LOC_DISTRICT_SCHOOL_IDOL_PROJECT_NAME', PrereqTech, PrereqCivic, Coast, 'LOC_DISTRICT_SCHOOL_IDOL_PROJECT_DESCRIPTION', Cost/2, RequiresPlacement, RequiresPopulation, NoAdjacentCity, CityCenter, Aqueduct, InternalOnly, ZOC, FreeEmbark, HitPoints, CaptureRemovesBuildings, CaptureRemovesCityDefenses, PlunderType, PlunderAmount, TradeEmbark, MilitaryDomain, CostProgressionModel, CostProgressionParam1, 'TRAIT_DISTRICT_SCHOOL_IDOL_PROJECT', 2, Housing, 1, OnePerCity, AllowsHolyCity, Maintenance, AirSlots, CitizenSlots, TravelTime, CityStrengthModifier, AdjacentToLand, CanAttack, AdvisorType, CaptureRemovesDistrict, MaxPerPlayer
FROM Districts WHERE DistrictType='DISTRICT_THEATER';

INSERT INTO District_TradeRouteYields
	(DistrictType, YieldType, YieldChangeAsOrigin, YieldChangeAsDomesticDestination, YieldChangeAsInternationalDestination)
SELECT
	'DISTRICT_SCHOOL_IDOL_PROJECT', YieldType, YieldChangeAsOrigin, YieldChangeAsDomesticDestination, YieldChangeAsInternationalDestination
FROM District_TradeRouteYields WHERE DistrictType='DISTRICT_THEATER';

INSERT INTO District_GreatPersonPoints
	(DistrictType, GreatPersonClassType, PointsPerTurn)
SELECT
	'DISTRICT_SCHOOL_IDOL_PROJECT', GreatPersonClassType, PointsPerTurn
FROM District_GreatPersonPoints WHERE DistrictType='DISTRICT_THEATER';

INSERT INTO District_CitizenYieldChanges
	(DistrictType, YieldType, YieldChange)
SELECT
	'DISTRICT_SCHOOL_IDOL_PROJECT', YieldType, YieldChange
FROM District_CitizenYieldChanges WHERE DistrictType='DISTRICT_THEATER';

INSERT INTO District_Adjacencies
	(DistrictType, YieldChangeId)
VALUES
	('DISTRICT_SCHOOL_IDOL_PROJECT', 'District_School_Idol_Porject_Culture_City_Center'),
	('DISTRICT_SCHOOL_IDOL_PROJECT', 'District_School_Idol_Porject_Culture_Coast'),
	('DISTRICT_SCHOOL_IDOL_PROJECT', 'District_School_Idol_Porject_Culture_River');

INSERT INTO District_Adjacencies
	(DistrictType, YieldChangeId)
SELECT
	'DISTRICT_SCHOOL_IDOL_PROJECT', YieldChangeId
FROM District_Adjacencies WHERE DistrictType='DISTRICT_THEATER';

INSERT INTO Adjacency_YieldChanges
	(ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent, AdjacentSeaResource, AdjacentTerrain, AdjacentFeature, AdjacentRiver, AdjacentWonder, AdjacentNaturalWonder, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech, AdjacentResource, AdjacentResourceClass, Self)
SELECT
	'District_School_Idol_Porject_Culture_City_Center', Description, YieldType, 2, TilesRequired, OtherDistrictAdjacent, AdjacentSeaResource, AdjacentTerrain, AdjacentFeature, AdjacentRiver, AdjacentWonder, AdjacentNaturalWonder, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech, AdjacentResource, AdjacentResourceClass, Self
FROM Adjacency_YieldChanges WHERE ID='District_Culture_City_Center';

INSERT INTO Adjacency_YieldChanges
	(ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent, AdjacentSeaResource, AdjacentTerrain, AdjacentFeature, AdjacentRiver, AdjacentWonder, AdjacentNaturalWonder, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech, AdjacentResource, AdjacentResourceClass, Self)
SELECT
	'District_School_Idol_Porject_Culture_River', 'LOC_DISTRICT_SCHOOL_IDOL_PORJECT_RIVER_CULTURE', 'YIELD_CULTURE', YieldChange, TilesRequired, OtherDistrictAdjacent, AdjacentSeaResource, AdjacentTerrain, AdjacentFeature, AdjacentRiver, AdjacentWonder, AdjacentNaturalWonder, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech, AdjacentResource, AdjacentResourceClass, Self
FROM Adjacency_YieldChanges WHERE ID='River_Gold';

INSERT INTO Adjacency_YieldChanges
	(ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent, AdjacentSeaResource, AdjacentTerrain, AdjacentRiver, AdjacentWonder, AdjacentNaturalWonder, AdjacentResource, AdjacentResourceClass, Self)
VALUES
	('District_School_Idol_Porject_Culture_Coast', 'LOC_DISTRICT_SCHOOL_IDOL_PORJECT_COAST_CULTURE', 'YIELD_CULTURE', 2, 1, 0, 0, 'TERRAIN_COAST', 0, 0, 0, 0, 'NO_RESOURCECLASS', 0);

INSERT INTO DistrictReplaces
	(CivUniqueDistrictType, ReplacesDistrictType)
VALUES
	('DISTRICT_SCHOOL_IDOL_PROJECT', 'DISTRICT_THEATER');

INSERT INTO DistrictModifiers
	(DistrictType, ModifierId)
VALUES 
	('DISTRICT_SCHOOL_IDOL_PROJECT', 'MODIFIER_SCHOOL_IDOL_PROJECT_GRANT_FREE_BUILDING');

INSERT INTO Modifiers
	(ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId)
VALUES 
	('MODIFIER_SCHOOL_IDOL_PROJECT_GRANT_FREE_BUILDING', 'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE', 1, 0, 0, NULL, NULL);

INSERT INTO ModifierArguments
	(ModifierId, Name, Value)
VALUES 
	('MODIFIER_SCHOOL_IDOL_PROJECT_GRANT_FREE_BUILDING', 'BuildingType', 'BUILDING_SCHOOL_IDOL_CENTER');