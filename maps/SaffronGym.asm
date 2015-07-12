SaffronGym_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

SabrinaScript_0x189c2e:
	faceplayer
	loadfont
	checkflag ENGINE_MARSHBADGE
	iftrue .FightDone
	writetext UnknownText_0x189cdf
	closetext
	loadmovesprites
	winlosstext UnknownText_0x189df4, $0000
	loadtrainer SABRINA, 1
	startbattle
	returnafterbattle
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_MEDIUM_REBECCA
	setevent EVENT_BEAT_MEDIUM_DORIS
	setevent EVENT_BEAT_PSYCHIC_FRANKLIN
	setevent EVENT_BEAT_PSYCHIC_JARED
	loadfont
	writetext UnknownText_0x189e95
	playsound SFX_GET_BADGE
	waitbutton
	setflag ENGINE_MARSHBADGE
	writetext UnknownText_0x189ead
	closetext
	loadmovesprites
	end

.FightDone
	writetext UnknownText_0x189f6c
	closetext
	loadmovesprites
	end

TrainerMediumRebecca:
	; bit/flag number
	dw EVENT_BEAT_MEDIUM_REBECCA

	; trainer group && trainer id
	db MEDIUM, REBECCA

	; text when seen
	dw MediumRebeccaSeenText

	; text when trainer beaten
	dw MediumRebeccaBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw MediumRebeccaScript

MediumRebeccaScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a034
	closetext
	loadmovesprites
	end

TrainerPsychicFranklin:
	; bit/flag number
	dw EVENT_BEAT_PSYCHIC_FRANKLIN

	; trainer group && trainer id
	db PSYCHIC_T, FRANKLIN

	; text when seen
	dw PsychicFranklinSeenText

	; text when trainer beaten
	dw PsychicFranklinBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicFranklinScript

PsychicFranklinScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a0a6
	closetext
	loadmovesprites
	end

TrainerMediumDoris:
	; bit/flag number
	dw EVENT_BEAT_MEDIUM_DORIS

	; trainer group && trainer id
	db MEDIUM, DORIS

	; text when seen
	dw MediumDorisSeenText

	; text when trainer beaten
	dw MediumDorisBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw MediumDorisScript

MediumDorisScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a136
	closetext
	loadmovesprites
	end

TrainerPsychicJared:
	; bit/flag number
	dw EVENT_BEAT_PSYCHIC_JARED

	; trainer group && trainer id
	db PSYCHIC_T, JARED

	; text when seen
	dw PsychicJaredSeenText

	; text when trainer beaten
	dw PsychicJaredBeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw PsychicJaredScript

PsychicJaredScript:
	talkaftercancel
	loadfont
	writetext UnknownText_0x18a1b3
	closetext
	loadmovesprites
	end

SaffronGymGuyScript:
	faceplayer
	loadfont
	checkevent EVENT_BEAT_SABRINA
	iftrue .SaffronGymGuyWinScript
	writetext SaffronGymGuyText
	closetext
	loadmovesprites
	end

.SaffronGymGuyWinScript
	writetext SaffronGymGuyWinText
	closetext
	loadmovesprites
	end

SaffronGymStatue:
	checkflag ENGINE_MARSHBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten
	trainertotext SABRINA, 1, $1
	jumpstd gymstatue2

UnknownText_0x189cdf:
	text "SABRINA: I knew"
	line "you were coming…"

	para "Three years ago I"
	line "had a vision of"
	cont "your arrival."

	para "You're after my"
	line "BADGE."

	para "I don't enjoy bat-"
	line "tling, but it's my"

	para "duty as a LEADER"
	line "to confer BADGES"

	para "on anyone who has"
	line "proven him- or"
	cont "herself worthy."

	para "Since you wish it,"
	line "I will show you my"
	cont "psychic powers!"
	done

UnknownText_0x189df4:
	text "SABRINA: Your"
	line "power…"

	para "It far exceeds"
	line "what I foresaw…"

	para "Maybe it isn't"
	line "possible to fully"

	para "predict what the"
	line "future holds…"

	para "OK, you win. You"
	line "earned yourself"
	cont "MARSHBADGE."
	done

UnknownText_0x189e95:
	text "<PLAYER> received"
	line "MARSHBADGE."
	done

UnknownText_0x189ead:
	text "SABRINA: MARSH-"
	line "BADGE draws out"

	para "your subliminal"
	line "powers…"

	para "Although I failed"
	line "to accurately pre-"
	cont "dict your power,"
	cont "this much I know"
	cont "to be true."

	para "You will become a"
	line "celebrated and"
	cont "beloved CHAMPION!"
	done

UnknownText_0x189f6c:
	text "SABRINA: Your love"
	line "for your #MON"

	para "overwhelmed my"
	line "psychic power…"

	para "The power of love,"
	line "I think, is also a"

	para "kind of psychic"
	line "power…"
	done

MediumRebeccaSeenText:
	text "The power of all"
	line "those you defeated"
	cont "comes to me!"
	done

MediumRebeccaBeatenText:
	text "Strong…"
	line "Far too strong…"
	done

UnknownText_0x18a034:
	text "What is the source"
	line "of your power?"
	done

PsychicFranklinSeenText:
	text "Psychic power is"
	line "the power of your"
	cont "soul."
	done

PsychicFranklinBeatenText:
	text "Your soul has more"
	line "power than mine!"
	done

UnknownText_0x18a0a6:
	text "You made your soul"
	line "stronger, not just"
	cont "your abilities."
	done

MediumDorisSeenText:
	text "Fufufufu…"
	line "I see it clearly."

	para "I can see into"
	line "your soul!"
	done

MediumDorisBeatenText:
	text "Though I read you,"
	line "I still lost…"
	done

UnknownText_0x18a136:
	text "Darn! I forgot"
	line "that I predicted I"
	cont "would lose to you."
	done

PsychicJaredSeenText:
	text "The FIGHTING DOJO"
	line "next door was once"
	cont "this city's GYM."
	done

PsychicJaredBeatenText:
	text "I was no match…"
	done

UnknownText_0x18a1b3:
	text "KARATE KING, the"
	line "master of the"

	para "FIGHTING DOJO, was"
	line "just destroyed by"
	cont "SABRINA."
	done

SaffronGymGuyText:
	text "Yo, CHAMP in"
	line "making!"

	para "A trainer as"
	line "skilled as you"

	para "doesn't need to be"
	line "told how to deal"

	para "with psychic-type"
	line "#MON, right?"

	para "I expect great"
	line "things from you!"

	para "Good luck!"
	done

SaffronGymGuyWinText:
	text "That was another"
	line "fantastic battle!"
	done

SaffronGym_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 32
	warp_def $11, $8, 2, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $11, $9, 2, GROUP_SAFFRON_CITY, MAP_SAFFRON_CITY
	warp_def $f, $b, 18, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $13, 19, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $13, 20, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $1, 21, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $5, 22, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $b, 23, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $1, 24, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $13, 25, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $f, 26, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $5, 27, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $5, 28, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $9, 29, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $f, 30, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $f, 31, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $1, 32, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $13, 3, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $13, 4, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $1, 5, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $5, 6, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $b, 7, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $11, $1, 8, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $13, 9, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $f, 10, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $f, $5, 11, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $5, 12, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $5, $9, 13, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $b, $f, 14, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $f, 15, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $3, $1, 16, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM
	warp_def $9, $b, 17, GROUP_SAFFRON_GYM, MAP_SAFFRON_GYM

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 15, 8, $0, SaffronGymStatue

	; people-events
	db 6
	person_event SPRITE_SABRINA, 12, 13, $6, $0, 255, 255, $80, 0, SabrinaScript_0x189c2e, EVENT_ALWAYS_THERE
	person_event SPRITE_GRANNY, 20, 21, $a, $0, 255, 255, $b2, 3, TrainerMediumRebecca, EVENT_ALWAYS_THERE
	person_event SPRITE_YOUNGSTER, 20, 7, $a, $0, 255, 255, $92, 3, TrainerPsychicFranklin, EVENT_ALWAYS_THERE
	person_event SPRITE_GRANNY, 8, 7, $a, $0, 255, 255, $b2, 2, TrainerMediumDoris, EVENT_ALWAYS_THERE
	person_event SPRITE_YOUNGSTER, 8, 21, $a, $0, 255, 255, $92, 2, TrainerPsychicJared, EVENT_ALWAYS_THERE
	person_event SPRITE_GYM_GUY, 18, 13, $6, $0, 255, 255, $90, 0, SaffronGymGuyScript, EVENT_ALWAYS_THERE
