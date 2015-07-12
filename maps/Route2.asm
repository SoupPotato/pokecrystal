Route2_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

TrainerBug_catcherRob:
	; bit/flag number
	dw EVENT_BEAT_BUG_CATCHER_ROB

	; trainer group && trainer id
	db BUG_CATCHER, ROB

	; text when seen
	dw Bug_catcherRobSeenText

	; text when trainer beaten
	dw Bug_catcherRobBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherRobScript

Bug_catcherRobScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ac34d
	closetext
	loadmovesprites
	end

TrainerBug_catcherEd:
	; bit/flag number
	dw EVENT_BEAT_BUG_CATCHER_ED

	; trainer group && trainer id
	db BUG_CATCHER, ED

	; text when seen
	dw Bug_catcherEdSeenText

	; text when trainer beaten
	dw Bug_catcherEdBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherEdScript

Bug_catcherEdScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ac3cf
	closetext
	loadmovesprites
	end

TrainerBug_catcherDoug:
	; bit/flag number
	dw EVENT_BEAT_BUG_CATCHER_DOUG

	; trainer group && trainer id
	db BUG_CATCHER, DOUG

	; text when seen
	dw Bug_catcherDougSeenText

	; text when trainer beaten
	dw Bug_catcherDougBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw Bug_catcherDougScript

Bug_catcherDougScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x1ac423
	closetext
	loadmovesprites
	end

MapRoute2Signpost0Script:
	jumptext UnknownText_0x1ac47a

MapRoute2Signpost1Script:
	jumptext UnknownText_0x1ac49f

ItemFragment_0x1ac2fe:
	db DIRE_HIT, 1

ItemFragment_0x1ac300:
	db MAX_POTION, 1

ItemFragment_0x1ac302:
	db CARBOS, 1

ItemFragment_0x1ac304:
	db ELIXER, 1

FruitTreeScript_0x1ac306:
	fruittree $19

MapRoute2SignpostItem2:
	dw $00ed
	db MAX_ETHER
	

MapRoute2SignpostItem3:
	dw $00ee
	db FULL_HEAL
	

MapRoute2SignpostItem4:
	dw $00ef
	db FULL_RESTORE
	

MapRoute2SignpostItem5:
	dw $00f0
	db REVIVE
	

Bug_catcherRobSeenText:
	text "My bug #MON are"
	line "tough. Prepare to"
	cont "lose!"
	done

Bug_catcherRobBeatenText:
	text "I was whipped…"
	done

UnknownText_0x1ac34d:
	text "I'm going to look"
	line "for stronger bug"
	cont "#MON."
	done

Bug_catcherEdSeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

Bug_catcherEdBeatenText:
	text "Ouch, ouch, ouch!"
	done

UnknownText_0x1ac3cf:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done

Bug_catcherDougSeenText:
	text "Why don't girls"
	line "like bug #MON?"
	done

Bug_catcherDougBeatenText:
	text "No good!"
	done

UnknownText_0x1ac423:
	text "Bug #MON squish"
	line "like plush toys"

	para "when you squeeze"
	line "their bellies."

	para "I love how they"
	line "feel!"
	done

UnknownText_0x1ac47a:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

UnknownText_0x1ac49f:
	text "DIGLETT'S CAVE"
	done

Route2_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $f, $f, 1, GROUP_ROUTE_2_NUGGET_SPEECH_HOUSE, MAP_ROUTE_2_NUGGET_SPEECH_HOUSE
	warp_def $1f, $f, 3, GROUP_ROUTE_2_GATE, MAP_ROUTE_2_GATE
	warp_def $1b, $10, 1, GROUP_ROUTE_2_GATE, MAP_ROUTE_2_GATE
	warp_def $1b, $11, 2, GROUP_ROUTE_2_GATE, MAP_ROUTE_2_GATE
	warp_def $7, $c, 3, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE

	; xy triggers
	db 0

	; signposts
	db 6
	signpost 51, 7, $0, MapRoute2Signpost0Script
	signpost 9, 11, $0, MapRoute2Signpost1Script
	signpost 23, 7, $7, MapRoute2SignpostItem2
	signpost 14, 4, $7, MapRoute2SignpostItem3
	signpost 27, 4, $7, MapRoute2SignpostItem4
	signpost 30, 11, $7, MapRoute2SignpostItem5

	; people-events
	db 8
	person_event SPRITE_BUG_CATCHER, 49, 14, $8, $0, 255, 255, $b2, 5, TrainerBug_catcherRob, EVENT_ALWAYS_THERE
	person_event SPRITE_BUG_CATCHER, 8, 10, $1f, $0, 255, 255, $b2, 3, TrainerBug_catcherEd, EVENT_ALWAYS_THERE
	person_event SPRITE_BUG_CATCHER, 44, 4, $9, $0, 255, 255, $b2, 3, TrainerBug_catcherDoug, EVENT_ALWAYS_THERE
	person_event SPRITE_POKE_BALL, 33, 4, $1, $0, 255, 255, $1, 0, ItemFragment_0x1ac2fe, EVENT_783
	person_event SPRITE_POKE_BALL, 27, 6, $1, $0, 255, 255, $1, 0, ItemFragment_0x1ac300, EVENT_784
	person_event SPRITE_POKE_BALL, 6, 23, $1, $0, 255, 255, $1, 0, ItemFragment_0x1ac302, EVENT_785
	person_event SPRITE_POKE_BALL, 54, 18, $1, $0, 255, 255, $1, 0, ItemFragment_0x1ac304, EVENT_786
	person_event SPRITE_FRUIT_TREE, 18, 14, $1, $0, 255, 255, $0, 0, FruitTreeScript_0x1ac306, EVENT_ALWAYS_THERE
