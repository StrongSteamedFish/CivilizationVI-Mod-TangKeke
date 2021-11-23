-- Mod_Agenda
-- Author: zheng
-- DateCreated: 11/15/2021 4:15:18 PM
--------------------------------------------------------------
-- 唐可可的议程和偏好
--------------------------------------------------------------
INSERT INTO Types
	(Type, Kind)
VALUES
	('TRAIT_AGENDA_TANG_KEKE', 'KIND_TRAIT');

-- 声明议程
INSERT INTO Agendas
	(AgendaType, Name, Description)
VALUES
	('AGENDA_TANG_KEKE', 'LOC_AGENDA_TANG_KEKE_NAME', 'LOC_AGENDA_TANG_KEKE_DESCRIPTION');

-- 冲突的议程（即这两个议程互相冲突/重复，不会出现在同一个领袖身上）
INSERT INTO ExclusiveAgendas
	(AgendaOne, AgendaTwo)
VALUES
	('AGENDA_TANG_KEKE', 'AGENDA_CULTURED'),
	('AGENDA_TANG_KEKE', 'AGENDA_GREAT_PERSON_OBSESSED');

-- 符合史实的议程（即绑定领袖和议程）
INSERT INTO HistoricalAgendas
	(LeaderType, AgendaType)
VALUES
	('LEADER_TANG_KEKE', 'AGENDA_TANG_KEKE');

INSERT INTO AgendaTraits			
	(AgendaType, TraitType)
VALUES
	('AGENDA_TANG_KEKE','TRAIT_AGENDA_TANG_KEKE');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_AGENDA_TANG_KEKE', 'AGENDA_MODIFIER_TANG_KEKE');

INSERT INTO Traits
	(TraitType, Name, Description)
VALUES
	('TRAIT_AGENDA_TANG_KEKE', NULL, NULL);

INSERT INTO Modifiers
	(ModifierId, ModifierType, RunOnce, Permanent, NewOnly, OwnerRequirementSetId, SubjectRequirementSetId)
VALUES 
	('AGENDA_MODIFIER_TANG_KEKE', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 0, 0, 0, NULL, 'PLAYER_LEADS_GREAT_PEOPLE_AND_CULTURE');

INSERT INTO ModifierArguments
	(ModifierId, Name, Value)
VALUES 
	('AGENDA_MODIFIER_TANG_KEKE', 'InitialValue', '18'), 
	('AGENDA_MODIFIER_TANG_KEKE', 'SimpleModifierDescription', 'LOC_DIPLO_MODIFIER_TANG_KEKE'), 
	('AGENDA_MODIFIER_TANG_KEKE', 'StatementKey', 'LOC_DIPLO_KUDO_LEADER_TANG_KEKE_REASON_ANY');

INSERT INTO RequirementSets
	(RequirementSetId, RequirementSetType)
VALUES 
	('PLAYER_LEADS_GREAT_PEOPLE_AND_CULTURE', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
	(RequirementSetId, RequirementId)
VALUES 
	('PLAYER_LEADS_GREAT_PEOPLE_AND_CULTURE', 'REQUIRES_MAJOR_CIV_OPPONENT'), 
	('PLAYER_LEADS_GREAT_PEOPLE_AND_CULTURE', 'REQUIRES_MET_10_TURNS_AGO'), 
	('PLAYER_LEADS_GREAT_PEOPLE_AND_CULTURE', 'REQUIRES_LEADS_GREAT_PEOPLE'), 
	('PLAYER_LEADS_GREAT_PEOPLE_AND_CULTURE', 'REQUIRES_HAS_HIGH_CULTURE');

INSERT INTO ModifierStrings			
	(ModifierId, Context, Text)
VALUES
	('AGENDA_MODIFIER_TANG_KEKE', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

INSERT INTO AiListTypes
	(ListType)
VALUES
	('TangkekeCivics'),
	('TangkekeTechs'),
	('TangkekeDistricts'),
	('TangkekeWonders'),
	('TangkekeBuildings'),
	('TangkekeUnits'),
	('TangkekeYields'),
	('TangkekePseudoYields');

INSERT INTO AiLists
	(ListType, AgendaType, System)
VALUES
	('TangkekeCivics',			'AGENDA_TANG_KEKE',	'Civics'),
	('TangkekeTechs',			'AGENDA_TANG_KEKE',	'Technologies'),
	('TangkekeDistricts',		'AGENDA_TANG_KEKE',	'Districts'),
	('TangkekeWonders',			'AGENDA_TANG_KEKE',	'Buildings'),
	('TangkekeBuildings',		'AGENDA_TANG_KEKE',	'Buildings'),
	('TangkekeUnits',			'AGENDA_TANG_KEKE',	'Units'),
	('TangkekeYields',			'AGENDA_TANG_KEKE',	'Yields'),
	('TangkekePseudoYields',	'AGENDA_TANG_KEKE',	'PseudoYields');

INSERT INTO AiFavoredItems
	(ListType, Favored, Value, Item, StringVal)
VALUES
	('TangkekeCivics', 1, 0, 'CIVIC_EARLY_EMPIRE', NULL),
	('TangkekeCivics', 1, 0, 'CIVIC_POLITICAL_PHILOSOPHY', NULL),
	('TangkekeCivics', 1, 0, 'CIVIC_DRAMA_POETRY', NULL),
	('TangkekeCivics', 1, 0, 'CIVIC_THE_ENLIGHTENMENT', NULL),
	('TangkekeCivics', 1, 0, 'CIVIC_OPERA_BALLET', NULL),
	('TangkekeCivics', 1, 0, 'CIVIC_CULTURAL_HERITAGE', NULL),
	('TangkekeCivics', 1, 0, 'CIVIC_NATURAL_HISTORY', NULL),
	('TangkekeCivics', 1, 0, 'CIVIC_MASS_MEDIA', NULL),
	('TangkekeTechs', 1, 0, 'TECH_IRRIGATION', NULL),
	('TangkekeTechs', 1, 0, 'TECH_WRITING', NULL),
	('TangkekeTechs', 1, 0, 'TECH_APPRENTICESHIP', NULL),
	('TangkekeTechs', 1, 0, 'TECH_SANITATION', NULL),
	('TangkekeTechs', 1, 0, 'TECH_RADIO', NULL),
	('TangkekeTechs', 1, 0, 'TECH_FLIGHT', NULL),
	('TangkekeDistricts', 1, 0, 'DISTRICT_SCHOOL_IDOL_PROJECT', NULL),
	('TangkekeDistricts', 1, 0, 'DISTRICT_THEATER', NULL),
	('TangkekeDistricts', 1, 0, 'DISTRICT_CAMPUS', NULL),
	('TangkekeDistricts', 1, 0, 'DISTRICT_INDUSTRIAL_ZONE', NULL),
	('TangkekeWonders', 1, 0, 'BUILDING_STONEHENGE', NULL),
	('TangkekeWonders', 1, 0, 'BUILDING_BOLSHOI_THEATRE', NULL),
	('TangkekeWonders', 1, 0, 'BUILDING_SYDNEY_OPERA_HOUSE', NULL),
	('TangkekeWonders', 1, 0, 'BUILDING_HERMITAGE', NULL),
	('TangkekeWonders', 1, 0, 'BUILDING_BROADWAY', NULL),
	('TangkekeWonders', 1, 0, 'BUILDING_ORSZAGHAZ', NULL),
	('TangkekeBuildings', 1, 0, 'BUILDING_AMPHITHEATER', NULL),
	('TangkekeBuildings', 1, 0, 'BUILDING_MUSEUM_ART', NULL),
	('TangkekeBuildings', 1, 0, 'BUILDING_BROADCAST_CENTER', NULL),
	('TangkekeUnits', 1, 1, 'UNIT_SCHOOL_IDOL', NULL),
	('TangkekeUnits', 1, 1, 'UNIT_ROCK_BAND', NULL),
	('TangkekeYields', 1, 75, 'YIELD_CULTURE', NULL),
	('TangkekePseudoYields', 1, 25, 'PSEUDOYIELD_GPP_PROPHET', NULL),
	('TangkekePseudoYields', 1, 25, 'PSEUDOYIELD_GREATWORK_MUSIC', NULL),
	('TangkekePseudoYields', 1, 50, 'PSEUDOYIELD_GPP_MUSICIAN', NULL);
