-- Mod_GreatPeople
-- Author: zheng
-- DateCreated: 11/11/2021 7:12:56 PM
--------------------------------------------------------------
-- ����ΰ�����ͣ�Liella!
--------------------------------------------------------------
INSERT INTO Types
	(Type, Kind)
VALUES
	('GREAT_PERSON_CLASS_LIELLA', 'KIND_GREAT_PERSON_CLASS'),
	('UNIT_GREAT_PERSON_LIELLA', 'KIND_UNIT'),
	('PSEUDOYIELD_GPP_LIELLA', 'KIND_PSEUDOYIELD');

INSERT INTO PseudoYields
	(PseudoYieldType, DefaultValue)
VALUES
	('PSEUDOYIELD_GPP_LIELLA', 0.5);

INSERT INTO GreatPersonClasses
	(GreatPersonClassType, Name, UnitType, DistrictType, PseudoYieldType, IconString, ActionIcon)
VALUES
	('GREAT_PERSON_CLASS_LIELLA', 'LOC_GREAT_PERSON_CLASS_LIELLA_NAME', 'UNIT_GREAT_PERSON_LIELLA', 'DISTRICT_THEATER', 'PSEUDOYIELD_GPP_LIELLA', '[ICON_GreatMusician]', 'ICON_UNITOPERATION_MUSICIAN_ACTION');

INSERT INTO UnitAiInfos
	(UnitType, AiType)
SELECT
	'UNIT_GREAT_PERSON_LIELLA', AiType
FROM UnitAiInfos WHERE UnitType='UNIT_GREAT_MUSICIAN';

INSERT INTO Units
	(UnitType, Name, BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, Cost, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, Description, Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion, DisasterCharges, UseMaxMeleeTrainedStrength, ImmediatelyName, CanEarnExperience)
SELECT
	'UNIT_GREAT_PERSON_LIELLA', 'LOC_UNIT_GREAT_PERSON_LIELLA_NAME', BaseSightRange, BaseMoves, Combat, RangedCombat, Range, Bombard, Domain, FormationClass, 1, PopulationCost, FoundCity, FoundReligion, MakeTradeRoute, EvangelizeBelief, LaunchInquisition, RequiresInquisition, BuildCharges, ReligiousStrength, ReligionEvictPercent, SpreadCharges, ReligiousHealCharges, ExtractsArtifacts, 'LOC_UNIT_GREAT_PERSON_LIELLA_DESCRIPTION', Flavor, CanCapture, CanRetreatWhenCaptured, TraitType, AllowBarbarians, CostProgressionModel, CostProgressionParam1, PromotionClass, InitialLevel, NumRandomChoices, PrereqTech, PrereqCivic, PrereqDistrict, PrereqPopulation, LeaderType, CanTrain, StrategicResource, PurchaseYield, MustPurchase, Maintenance, Stackable, AirSlots, CanTargetAir, PseudoYieldType, ZoneOfControl, AntiAirCombat, Spy, WMDCapable, ParkCharges, IgnoreMoves, TeamVisibility, ObsoleteTech, ObsoleteCivic, MandatoryObsoleteTech, MandatoryObsoleteCivic, AdvisorType, EnabledByReligion, TrackReligion, DisasterCharges, UseMaxMeleeTrainedStrength, ImmediatelyName, CanEarnExperience
FROM Units WHERE UnitType='UNIT_GREAT_MUSICIAN';