; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SonAni_Idle-SonicAniData
		dc.w SonAni_Walk-SonicAniData

SonAni_Idle:	dc.b $3C, 1, $FF, $FF
SonAni_Walk:	dc.b 6, 2, 3, 4, 5, 6, 7, 8, 9, $FF
		even