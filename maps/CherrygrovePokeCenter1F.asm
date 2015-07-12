CherrygrovePokeCenter1F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

NurseScript_0x19696d:
	jumpstd pokecenternurse

FisherScript_0x196970:
	jumptextfaceplayer UnknownText_0x19698a

GentlemanScript_0x196973:
	jumptextfaceplayer UnknownText_0x1969c8

TeacherScript_0x196976:
	faceplayer
	loadfont
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue UnknownScript_0x196984
	writetext UnknownText_0x1969f1
	closetext
	loadmovesprites
	end

UnknownScript_0x196984:
	writetext UnknownText_0x196a46
	closetext
	loadmovesprites
	end

UnknownText_0x19698a:
	text "It's great. I can"
	line "store any number"

	para "of #MON, and"
	line "it's all free."
	done

UnknownText_0x1969c8:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

UnknownText_0x1969f1:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "But they're still"
	line "finishing it up."
	done

UnknownText_0x196a46:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "I traded #MON"
	line "there already!"
	done

CherrygrovePokeCenter1F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $7, $3, 2, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $4, 2, GROUP_CHERRYGROVE_CITY, MAP_CHERRYGROVE_CITY
	warp_def $7, $0, 1, GROUP_POKECENTER_2F, MAP_POKECENTER_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 4
	person_event SPRITE_NURSE, 5, 7, $6, $0, 255, 255, $0, 0, NurseScript_0x19696d, EVENT_ALWAYS_THERE
	person_event SPRITE_FISHER, 7, 6, $7, $0, 255, 255, $80, 0, FisherScript_0x196970, EVENT_ALWAYS_THERE
	person_event SPRITE_GENTLEMAN, 10, 12, $7, $0, 255, 255, $0, 0, GentlemanScript_0x196973, EVENT_ALWAYS_THERE
	person_event SPRITE_TEACHER, 10, 5, $9, $0, 255, 255, $a0, 0, TeacherScript_0x196976, EVENT_ALWAYS_THERE
