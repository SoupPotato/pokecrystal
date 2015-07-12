FuchsiaGym_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

JanineScript_0x195db9:
	checkflag ENGINE_SOULBADGE
	iftrue .FightDone
	applymovement $2, MovementData_0x195f27
	faceplayer
	loadfont
	writetext UnknownText_0x195f35
	closetext
	loadmovesprites
	winlosstext UnknownText_0x195fa1, $0000
	loadtrainer JANINE, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_LASS_ALICE
	setevent EVENT_BEAT_LASS_LINDA
	setevent EVENT_BEAT_PICNICKER_CINDY
	setevent EVENT_BEAT_CAMPER_BARRY
	variablesprite $7, $28
	variablesprite $8, $28
	variablesprite $9, $28
	variablesprite $a, $27
	special Function14209
	loadfont
	writetext UnknownText_0x195feb
	playsound SFX_GET_BADGE
	waitbutton
	setflag ENGINE_SOULBADGE
	jump UnknownScript_0x195e02
.FightDone
	faceplayer
	loadfont
UnknownScript_0x195e02:
	checkevent EVENT_GOT_TM06_TOXIC
	iftrue UnknownScript_0x195e15
	writetext UnknownText_0x196002
	keeptextopen
	verbosegiveitem TM_TOXIC, 1
	iffalse UnknownScript_0x195e15
	setevent EVENT_GOT_TM06_TOXIC
UnknownScript_0x195e15:
	writetext UnknownText_0x196074
	closetext
	loadmovesprites
	end

FuschiaGym1Script_0x195e1b:
	checkevent EVENT_BEAT_LASS_ALICE
	iftrue UnknownScript_0x195e2c
	applymovement $3, MovementData_0x195f27
	faceplayer
	variablesprite $7, $28
	special Function14209
UnknownScript_0x195e2c:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_LASS_ALICE
	iftrue UnknownScript_0x195e4f
	writetext UnknownText_0x1960e6
	closetext
	loadmovesprites
	winlosstext UnknownText_0x196126, $0000
	loadtrainer LASS, ALICE
	startbattle
	iftrue UnknownScript_0x195e4a
	returnafterbattle
	setevent EVENT_BEAT_LASS_ALICE
	end

UnknownScript_0x195e4a:
	variablesprite $7, $a
	returnafterbattle
	end

UnknownScript_0x195e4f:
	writetext UnknownText_0x196139
	closetext
	loadmovesprites
	end

FuschiaGym2Script_0x195e55:
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue UnknownScript_0x195e66
	applymovement $4, MovementData_0x195f27
	faceplayer
	variablesprite $8, $28
	special Function14209
UnknownScript_0x195e66:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_LASS_LINDA
	iftrue UnknownScript_0x195e89
	writetext UnknownText_0x196166
	closetext
	loadmovesprites
	winlosstext UnknownText_0x19617b, $0000
	loadtrainer LASS, LINDA
	startbattle
	iftrue UnknownScript_0x195e84
	returnafterbattle
	setevent EVENT_BEAT_LASS_LINDA
	end

UnknownScript_0x195e84:
	variablesprite $8, $a
	returnafterbattle
	end

UnknownScript_0x195e89:
	writetext UnknownText_0x196199
	closetext
	loadmovesprites
	end

FuschiaGym3Script_0x195e8f:
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue UnknownScript_0x195ea0
	applymovement $5, MovementData_0x195f27
	faceplayer
	variablesprite $9, $28
	special Function14209
UnknownScript_0x195ea0:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_PICNICKER_CINDY
	iftrue UnknownScript_0x195ec3
	writetext UnknownText_0x1961bb
	closetext
	loadmovesprites
	winlosstext UnknownText_0x1961f1, $0000
	loadtrainer PICNICKER, CINDY
	startbattle
	iftrue UnknownScript_0x195ebe
	returnafterbattle
	setevent EVENT_BEAT_PICNICKER_CINDY
	end

UnknownScript_0x195ebe:
	variablesprite $9, $a
	returnafterbattle
	end

UnknownScript_0x195ec3:
	writetext UnknownText_0x19620c
	closetext
	loadmovesprites
	end

FuschiaGym4Script_0x195ec9:
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue UnknownScript_0x195eda
	applymovement $6, MovementData_0x195f27
	faceplayer
	variablesprite $a, $27
	special Function14209
UnknownScript_0x195eda:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_CAMPER_BARRY
	iftrue UnknownScript_0x195efd
	writetext UnknownText_0x196228
	closetext
	loadmovesprites
	winlosstext UnknownText_0x19624a, $0000
	loadtrainer CAMPER, BARRY
	startbattle
	iftrue UnknownScript_0x195ef8
	returnafterbattle
	setevent EVENT_BEAT_CAMPER_BARRY
	end

UnknownScript_0x195ef8:
	variablesprite $a, $a
	returnafterbattle
	end

UnknownScript_0x195efd:
	writetext UnknownText_0x19626b
	closetext
	loadmovesprites
	end

FuchsiaGymGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_JANINE
	iftrue .FuchsiaGymGuyWinScript
	writetext FuchsiaGymGuyText
	closetext
	loadmovesprites
	end

.FuchsiaGymGuyWinScript
	writetext FuchsiaGymGuyWinText
	closetext
	loadmovesprites
	end

FuchsiaGymStatue:
	checkflag ENGINE_SOULBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten
	trainertotext JANINE, 1, $1
	jumpstd gymstatue2

MovementData_0x195f27:
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end

UnknownText_0x195f35:
	text "Fufufufu…"

	para "I'm sorry to dis-"
	line "appoint you…"

	para "I'm only joking!"

	para "I'm the real deal!"

	para "JANINE of FUCHSIA"
	line "GYM, that's me!"
	done

UnknownText_0x195fa1:
	text "JANINE: You're a"
	line "tough one. You"
	cont "definitely won…"

	para "Here's SOULBADGE."
	line "Take it."
	done

UnknownText_0x195feb:
	text "<PLAYER> received"
	line "SOULBADGE."
	done

UnknownText_0x196002:
	text "JANINE: You're so"
	line "tough! I have a"
	cont "special gift!"

	para "It's TOXIC, a pow-"
	line "erful poison that"

	para "steadily saps the"
	line "victim's HP."
	done

UnknownText_0x196074:
	text "JANINE: I'm going"
	line "to really apply"

	para "myself and improve"
	line "my skills."

	para "I want to become"
	line "better than both"
	cont "Father and you!"
	done

UnknownText_0x1960e6:
	text "Fufufu!"

	para "I'm JANINE, the"
	line "GYM LEADER!"

	para "No, I'm not!"
	line "Gotcha, sucker!"
	done

UnknownText_0x196126:
	text "I had you fooled…"
	done

UnknownText_0x196139:
	text "How will you dis-"
	line "tinguish our real"
	cont "LEADER?"
	done

UnknownText_0x196166:
	text "Fooled you!"
	line "Hahaha!"
	done

UnknownText_0x19617b:
	text "Ooh… I lost…"
	line "You're not weak…"
	done

UnknownText_0x196199:
	text "Well? Wasn't my"
	line "disguise perfect?"
	done

UnknownText_0x1961bb:
	text "I'm JANINE!"

	para "How did you know I"
	line "was real?"

	para "Let's battle!"
	done

UnknownText_0x1961f1:
	text "Darn it!"
	line "I wanted to win!"
	done

UnknownText_0x19620c:
	text "You must be"
	line "getting tired."
	done

UnknownText_0x196228:
	text "Wahahaha!"

	para "You betcha!"
	line "I'm JANINE!"
	done

UnknownText_0x19624a:
	text "My disguise was"
	line "right on! Dang!"
	done

UnknownText_0x19626b:
	text "Hey, you. Was my"
	line "disguise cute or"
	cont "what, huh?"
	done

FuchsiaGymGuyText:
	text "Yo, CHAMP in"
	line "making!"

	para "Whoops! Take a"
	line "good look around"

	para "you. The trainers"
	line "all look like the"
	cont "LEADER, JANINE."

	para "Which of them is"
	line "the real JANINE?"
	done

FuchsiaGymGuyWinText:
	text "That was a great"
	line "battle, trainer"
	cont "from JOHTO!"
	done

FuchsiaGym_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $11, $4, 3, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY
	warp_def $11, $5, 3, GROUP_FUCHSIA_CITY, MAP_FUCHSIA_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 15, 3, $0, FuchsiaGymStatue
	signpost 15, 6, $0, FuchsiaGymStatue

	; people-events
	db 6
	person_event SPRITE_JANINE, 14, 5, $3, $0, 255, 255, $90, 0, JanineScript_0x195db9, EVENT_ALWAYS_THERE
	person_event SPRITE_FUSCHIA_GYM_1, 11, 9, $a, $0, 255, 255, $90, 0, FuschiaGym1Script_0x195e1b, EVENT_ALWAYS_THERE
	person_event SPRITE_FUSCHIA_GYM_2, 15, 9, $a, $0, 255, 255, $90, 0, FuschiaGym2Script_0x195e55, EVENT_ALWAYS_THERE
	person_event SPRITE_FUSCHIA_GYM_3, 8, 13, $a, $0, 255, 255, $90, 0, FuschiaGym3Script_0x195e8f, EVENT_ALWAYS_THERE
	person_event SPRITE_FUSCHIA_GYM_4, 6, 8, $a, $0, 255, 255, $90, 0, FuschiaGym4Script_0x195ec9, EVENT_ALWAYS_THERE
	person_event SPRITE_GYM_GUY, 19, 11, $6, $0, 255, 255, $90, 0, FuchsiaGymGuyScript, EVENT_ALWAYS_THERE
