IcePath1F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

ItemFragment_0x7e472:
	db HM_WATERFALL, 1

ItemFragment_0x7e474:
	db PP_UP, 1

ItemFragment_0x7e476:
	db PROTEIN, 1

IcePath1F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $13, $4, 1, GROUP_ROUTE_44, MAP_ROUTE_44
	warp_def $1b, $24, 7, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $5, $25, 1, GROUP_ICE_PATH_B1F, MAP_ICE_PATH_B1F
	warp_def $d, $25, 7, GROUP_ICE_PATH_B1F, MAP_ICE_PATH_B1F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 3
	person_event SPRITE_POKE_BALL, 11, 35, $1, $0, 255, 255, $1, 0, ItemFragment_0x7e472, EVENT_688
	person_event SPRITE_POKE_BALL, 27, 36, $1, $0, 255, 255, $1, 0, ItemFragment_0x7e474, EVENT_689
	person_event SPRITE_POKE_BALL, 13, 39, $1, $0, 255, 255, $1, 0, ItemFragment_0x7e476, EVENT_7BE
