-- Mod_Units
-- Author: zheng
-- DateCreated: 11/9/2021 4:09:46 PM
--------------------------------------------------------------
-- 特色单位：学园偶像
--------------------------------------------------------------
INSERT INTO Types
	(Type, Kind)
VALUES
	('UNIT_SCHOOL_IDOL', 'KIND_UNIT'),
	('TRAIT_UNIT_SCHOOL_IDOL', 'KIND_TRAIT');

INSERT INTO Traits
	(TraitType, Name, Description)
VALUES
	('TRAIT_UNIT_SCHOOL_IDOL', 'LOC_TRAIT_UNIT_SCHOOL_IDOL_NAME', 'LOC_TRAIT_UNIT_SCHOOL_IDOL_DESCRIPTION');

INSERT INTO CivilizationTraits
	(CivilizationType, TraitType)
VALUES
	('CIVILIZATION_LIELLA', 'TRAIT_UNIT_SCHOOL_IDOL');

INSERT INTO UnitReplaces
	(CivUniqueUnitType, ReplacesUnitType)
VALUES
	('UNIT_SCHOOL_IDOL', 'UNIT_ROCK_BAND');

INSERT INTO Units
	(UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion, DisasterCharges, UseMaxMeleeTrainedStrength, ImmediatelyName, CanEarnExperience)
SELECT
	'UNIT_SCHOOL_IDOL', 'LOC_UNIT_SCHOOL_IDOL_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, 100, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_UNIT_SCHOOL_IDOL_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, 'TRAIT_UNIT_SCHOOL_IDOL', AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, 'CIVIC_THE_ENLIGHTENMENT', PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, 0, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion, DisasterCharges, UseMaxMeleeTrainedStrength, ImmediatelyName, CanEarnExperience
FROM Units WHERE UnitType='UNIT_ROCK_BAND';

INSERT INTO Units_XP2
	(UnitType, ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly, CanCauseDisasters, CanSacrificeUnits)
SELECT
	'UNIT_SCHOOL_IDOL', ResourceMaintenanceAmount, ResourceCost, ResourceMaintenanceType, TourismBomb, CanEarnExperience, TourismBombPossible, CanFormMilitaryFormation, MajorCivOnly, CanCauseDisasters, CanSacrificeUnits
FROM Units_XP2 WHERE UnitType='UNIT_ROCK_BAND';

INSERT INTO UnitAiInfos
	(UnitType, AiType)
SELECT
	'UNIT_SCHOOL_IDOL', AiType
FROM UnitAiInfos WHERE UnitType='UNIT_ROCK_BAND';

INSERT INTO TypeTags
	(Type, Tag)
SELECT	
	'UNIT_SCHOOL_IDOL', Tag
FROM TypeTags WHERE Type='UNIT_ROCK_BAND';