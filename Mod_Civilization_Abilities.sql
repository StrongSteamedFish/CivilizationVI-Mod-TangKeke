-- Mod_Civilization_Abilities
-- Author: zheng
-- DateCreated: 11/9/2021 7:08:34 PM
--------------------------------------------------------------
-- 文明能力：Liella!
--------------------------------------------------------------
INSERT INTO TraitModifiers 
	(TraitType, ModifierId)
VALUES 
	('TRAIT_CIVILIZATION_ABILITY_LIELLA', 'MODIFIER_GRANT_SCHOOL_IDOL_UNLIMITED_PROMOTION_CHOICES'),
	('TRAIT_CIVILIZATION_ABILITY_LIELLA', 'MODIFIER_REDUCE_SCHOOL_IDOL_TOURISM_BOMB_VALUE_PEACE');

INSERT INTO Modifiers 
	(ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId) 
VALUES 
	('MODIFIER_GRANT_SCHOOL_IDOL_UNLIMITED_PROMOTION_CHOICES', 'MODIFIER_PLAYER_UNIT_GRANT_UNLIMITED_PROMOTION_CHOICES', 0, 0, 0, NULL, NULL),
	('MODIFIER_REDUCE_SCHOOL_IDOL_TOURISM_BOMB_VALUE_PEACE', 'MODIFIER_PLAYER_UNITS_ADJUST_ROCK_BAND_TOURISM_BOMB_VALUE_PEACE', 0, 0, 0, NULL, 'REQSET_UNIT_IS_SCHOOL_IDOL');

INSERT INTO ModifierArguments 
	(ModifierId, Name, Value) 
VALUES 
	('MODIFIER_GRANT_SCHOOL_IDOL_UNLIMITED_PROMOTION_CHOICES', 'UnitType', 'UNIT_SCHOOL_IDOL'),
	('MODIFIER_REDUCE_SCHOOL_IDOL_TOURISM_BOMB_VALUE_PEACE', 'Amount', '-50');


INSERT INTO RequirementSets 
	(RequirementSetId, RequirementSetType) 
VALUES 
	('REQSET_UNIT_IS_SCHOOL_IDOL', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements 
	(RequirementSetId, RequirementId) 
VALUES 
	('REQSET_UNIT_IS_SCHOOL_IDOL', 'REQ_UNIT_IS_SCHOOL_IDOL');

INSERT INTO Requirements 
	(RequirementId, RequirementType) 
VALUES 
	('REQ_UNIT_IS_SCHOOL_IDOL', 'REQUIREMENT_UNIT_TYPE_MATCHES');

INSERT INTO RequirementArguments 
	(RequirementId, Name, Value) 
VALUES 
	('REQ_UNIT_IS_SCHOOL_IDOL', 'UnitType', 'UNIT_SCHOOL_IDOL');