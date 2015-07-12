BlackthornPokeCenter1F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

NurseScript_0x195b79:
	jumpstd pokecenternurse

GentlemanScript_0x195b7c:
	jumptextfaceplayer UnknownText_0x195b85

TwinScript_0x195b7f:
	jumptextfaceplayer UnknownText_0x195bfd

CooltrainerMScript_0x195b82:
	jumpstd happinesschecknpc

UnknownText_0x195b85:
	text "Deep inside far-"
	line "off INDIGO PLATEAU"

	para "is the #MON"
	line "LEAGUE."

	para "I hear the best"
	line "trainers gather"

	para "there from around"
	line "the country."
	done

UnknownText_0x195bfd:
	text "There was this"
	line "move I just had"

	para "to teach my #-"
	line "MON."

	para "So I got the MOVE"
	line "DELETER to make it"
	cont "forget an HM move."
	done

BlackthornPokeCenter1F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 5, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $7, $4, 5, GROUP_BLACKTHORN_CITY, MAP_BLACKTHORN_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, $0, 255, 255, $0, 0, NurseScript_0x195b79, EVENT_ALWAYS_THERE
	person_event SPRITE_GENTLEMAN, 7, 9, $6, $0, 255, 255, $0, 0, GentlemanScript_0x195b7c, EVENT_ALWAYS_THERE
	person_event SPRITE_TWIN, 8, 5, $3, $0, 255, 255, $a0, 0, TwinScript_0x195b7f, EVENT_ALWAYS_THERE
	person_event SPRITE_COOLTRAINER_M, 10, 11, $5, $1, 255, 255, $80, 0, CooltrainerMScript_0x195b82, EVENT_ALWAYS_THERE
