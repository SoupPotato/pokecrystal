Route6SaffronGate_MapScriptHeader:
	; trigger count
	db 1

	; triggers
	dw UnknownScript_0x1926e9, $0000

	; callback count
	db 0

UnknownScript_0x1926e9:
	end

OfficerScript_0x1926ea:
	faceplayer
	loadfont
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue UnknownScript_0x1926f8
	writetext UnknownText_0x1926fe
	closetext
	loadmovesprites
	end

UnknownScript_0x1926f8:
	writetext UnknownText_0x1927cb
	closetext
	loadmovesprites
	end

UnknownText_0x1926fe:
	text "Welcome to SAFFRON"
	line "CITY, home of the"
	cont "MAGNET TRAIN!"

	para "…That's what I'd"
	line "normally say, but"

	para "the MAGNET TRAIN"
	line "isn't running now."

	para "It's not getting"
	line "any electricity"

	para "because there's"
	line "something wrong"

	para "with the POWER"
	line "PLANT."
	done

UnknownText_0x1927cb:
	text "The MAGNET TRAIN"
	line "is the most famous"

	para "thing about SAF-"
	line "FRON."
	done

Route6SaffronGate_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 4
	warp_def $0, $4, 12, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $0, $5, 13, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $7, $4, 2, GROUP_ROUTE_6, MAP_ROUTE_6
	warp_def $7, $5, 2, GROUP_ROUTE_6, MAP_ROUTE_6

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_OFFICER, 8, 4, $9, $0, 255, 255, $90, 0, OfficerScript_0x1926ea, EVENT_ALWAYS_THERE
