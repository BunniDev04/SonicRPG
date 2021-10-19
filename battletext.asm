; ---------------------------------------------------------------------------
; Battle Text
; ---------------------------------------------------------------------------
attacker = $FF
action = $FE
target = $FD
item = $FC
rings = $FB
exp = $FA

valid_characters:
    dc.b    "a", "b", "c", "d", "e", "f"
    dc.b    "g", "h", "i", "j", "k", "l"
    dc.b    "m", "n", "o", "p", "q", "r"
    dc.b    "s", "t", "u", "v", "w", "x"
    dc.b    "y", "z", ".", ",", "!", "?"
    dc.b    "1", "2", "3", "4", "5", "6"
    dc.b    "7", "8", "9", "0"
    even

text_table:
    dc.w    text_approach-text_table, text_appear-text_table
    dc.w    text_showsup-text_table, text_wantsto-text_table
    dc.w    text_attack-text_table, text_critical-text_table
    dc.w    text_out-text_table, text_item-text_table
    dc.w    text_win-text_table, text_lost-text_table

text_approach:
	dc.b	attacker, " approaches!"
	even

text_appear:
	dc.b	attacker, " appears!"
	even

text_showsup:
	dc.b	attacker, " shows up!"
	even

text_wantsto
	dc.b	attacker, " wants to fight!"
	even

text_attack:
	dc.b	attacker, " uses ", action, " on ", target
	even

text_critical:
	dc.b	"critical!!!"
	even

text_out:
	dc.b	target, " has been knocked out!"
	even

text_item:
	dc.b	attacker, " used ", item
	even

text_win:
	dc.b	"you won!", rings, " rings earned, ", exp, " exp gained."
	even

text_lost:
    dc.b    "all party members have been knocked out! you lost!"
    even

character_table:
    dc.w    text_sonic-character_table, text_tails-character_table

text_sonic:
	dc.b	"sonic"
	even

text_tails:
	dc.b	"tails"
	even

text_knuckles:
	dc.b	"knuckles"
	even

text_amy:
	dc.b	"amy"
	even

text_mighty:
	dc.b	"mighty"
	even

text_ray:
	dc.b	"ray"
	even

; Enemy names
; Standard

text_eggman:
	dc.b	"dr. eggman"
	even

text_metal:
	dc.b	"metal sonic"
	even

    ; Triple Trouble/Fighters

text_fang:
	dc.b	"fang"
	even

text_bean:
	dc.b	"bean"
	even

text_bark:
	dc.b	"bark"
	even

    ; Tails Adventure

text_lord:
	dc.b	"battle lord kukku xv"
	even

text_speedy:
	dc.b	"speedy"
	even

    ; Tails Skypatrol

text_bearenger:
    dc.b    "bearenger"
    even

text_carrotia"
    dc.b    "carrotia"
    even

text_focke:
    dc.b    "focke wulf"
    even