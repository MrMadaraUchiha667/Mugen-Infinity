;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------
;-| AvX Motions |--------------------------------------------------------

;[Command]
;name = "Pause"
;command = s
;time = 5

;[Command]
;name = "Taunt"
;command = ~D, DF, F, s
;time = 17

[Command]
name = "Taunt"
command = s; ~D, DB, B, s
time = 17

[Command]
name = "Down"
command = D
time = 5

[Command]
name = "Up"
command = U
time = 5
;-| AI Commands |----------------------------------------------------------

;-| AI |-------------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D
time = 1

[Command]
name = "CPU27"
command = F, F, F
time = 1

[Command]
name = "CPU28"
command = U, U, U
time = 1

[Command]
name = "CPU29"
command = U, U, B, B
time = 1

[Command]
name = "CPU30"
command = D, D, F, F
time = 1


;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------
;Angel Mode Only
;Fallen Angel

[Command]
name = "FallenAngel"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "FallenAngel"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "FallenAngel"
command = ~D, DB, B, x+z
time = 20
;---------------------------------------------------------------------------
;Angel Mode Only
;AirSkyScraper

[Command]
name = "AirSkyScraper"
command =  ~D, DF, F, x+y
time = 20
[Command]
name = "AirSkyScraper"
command =  ~D, DF, F, y+z
time = 20
[Command]
name = "AirSkyScraper"
command =  ~D, DF, F, x+z
time = 20
;---------------------------------------------------------------------------
;Healing Factor (Both Modes)

[Command]
name = "Healing"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "Healing"
command = ~D, DB, B, b+c
time = 20
[Command]
name = "Healing"
command = ~D, DB, B, c+a
time = 20

;---------------------------------------------------------------------------
;Hyper Whirlwind (Both Modes)

[Command]
name = "Whirlwind"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "Whirlwind"
command = ~D, DF, F, b+c
time = 20
[Command]
name = "Whirlwind"
command = ~D, DF, F, a+c
time = 20

;---------------------------------------------------------------------------
;Archangel
;---------------------------------------------------------------------------
;Archangel Mode Only
;Hyper Aerial Daggers

[Command]
name = "AirDaggers"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "AirDaggers"
command = ~D, DF, F, y+z
time = 20
[Command]
name = "AirDaggers"
command = ~D, DF, F, z+x
time = 20
;---------------------------------------------------------------------------
;Archangel Mode Only
;Hyper Swoop

[Command]
name = "HyperSwoop"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "HyperSwoop"
command = ~D, DB, B, y+z
time = 20
[Command]
name = "HyperSwoop"
command = ~D, DB, B, x+z
time = 20

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Specials
;---------------------------------------------------------------------------
;Spinning Halo

[Command]
name =  "SpinningA"
command = ~D,DF,F, a
time = 20
[Command]
name =  "SpinningB"
command = ~D,DF,F, b
time = 20
[Command]
name =  "SpinningC"
command = ~D,DF,F, c
time = 20
;---------------------------------------------------------------------------
;Dive  (in Air only)

[Command]
name = "DiveX"
command = ~D,DB,B, x
time = 20
[Command]
name = "DiveY"
command = ~D,DB,B, y
time = 20
[Command]
name = "DiveZ"
command = ~D,DB,B, z
time = 20

;---------------------------------------------------------------------------
;Angel Mode Only
;Uplift

[Command]
name = "Uplift"
command = ~D,DF,F, x
time = 25
[Command]
name = "Uplift"
command = ~D,DF,F, y
time = 25
[Command]
name = "Uplift"
command = ~D,DF,F, z
time = 25

;---------------------------------------------------------------------------
;Angel Mode Only (In Air Only)
;Wind

[Command]
name = "AirWind"
command = ~D,DF,F, x

[Command]
name = "AirWind"
command = ~D,DF,F, y

[Command]
name = "AirWind"
command = ~D,DF,F, z

;---------------------------------------------------------------------------
;Archangel Mode Only
;FeatherDart

[Command]
name = "FeatherDartX"
command = ~D,DF,F, x

[Command]
name = "FeatherDartY"
command = ~D,DF,F, y

[Command]
name = "FeatherDartZ"
command = ~D,DF,F, z

;---------------------------------------------------------------------------
;Archangel Mode Only (In Air Only)
;Air Feathers

[Command]
name = "AirFeathersX"
command = ~D,DF,F, x

[Command]
name = "AirFeathersY"
command = ~D,DF,F, y

[Command]
name = "AirFeathersZ"
command = ~D,DF,F, z

;-------------------------------------------------------------------------
;Flight

[Command]
name = "Flight"
command = ~U,U
time = 30

[Command]
name = "FlightEnd"
command = ~D,D
time = 30

;---------------------------------------------------------------------------
;Air Thrust (in Air only)

[Command]
name = "AirThrust"
command = D,DB,B, a
time = 30

[Command]
name = "AirThrust"
command = D,DB,B, b
time = 30

[Command]
name = "AirThrust"
command = D,DB,B, c
time = 30

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[command]
name = "super_jump"
command = D,$U

[command]
name = "super_jump"
command = a+b+c
;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

[Command]
name = "236Z"
command = z+y+x

;---------------------------------------------------------------------------
; Roll

[Command]
name = "roll_n"
command = ~B, D, DB, x

[Command]
name = "roll_m"
command = ~B, D, DB,  y

[Command]
name = "roll_f"
command = ~B, D, DB, z


;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

[Command]
name = "ac_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_f_roll_f"
command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Backward Recovery Roll or Alpha Counter2

[Command]
name = "ac_sweep_b_roll_n"
command = ~B, DB, D, a

[Command]
name = "ac_sweep_b_roll_m"
command = ~B, DB, D, b

[Command]
name = "ac_sweep_b_roll_f"
command = ~B, DB, D, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = D,$U
time = 10

[Command]
name = "Super_Jump"
command = x+y+z
time = 5

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
;2/3 button combination
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

;---------------------------------------------------------------------------------------------
;Dir + button
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

;---------------------------------------------------------------------------------------------
;One button
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1

;---------------------------------------------------------------------------------------------
;Hold button
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------------------------
;Hold dir
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "SJ"
command = D,$U
time = 10

;---------------------------------------------------------------------------
; -[ Artificial Intelligence ]-
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -1]

[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = Random <= 300
triggerall = roundstate = 2
trigger1 = P2bodydist X >= 100 && P2moveType != A
value = 100
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1 =1 && StateType != A && P2moveType = A
triggerall = Random <= 50
triggerall = roundstate = 2
trigger1 = Ctrl
value = 105
persistent = 0

[State -1]
type = ChangeState
triggerall = var(59) =1  && StateType = A && P2moveType = A
triggerall = Random <= 50
triggerall = (StateNo != 108)
triggerall = (StateNo != 107)
triggerall =  (StateNo != 70)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
triggerall = roundstate = 2
trigger1 = Ctrl = 1
value = 108
persistent = 0


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) )
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

; AI Combos Start-------------------------------------------------------------
; Stand light Punch
[State -1, Combo 1]
type = ChangeState
value = 200
triggerall = var(59) && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) = 0 && RoundState = 2 && statetype != A
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 210) && movecontact


;-------------------------------------------------------------------------------
; Stand light kick
[State -1, Combo 2]
type = ChangeState
value = 230
triggerall = var(59) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(59) = 0 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand Hard kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59)= 0 && RoundState = 2 && statetype != A
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 240) && movecontact

;------------------------------------------------------------------------------
; Stand Med Kick
[State -1, Combo 3]
type = Changestate
value = 240
triggerall = var(59) = 6 && statetype != A && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 6 && RoundState = 2  && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Stan Medium Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand Strong kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 6 && RoundState = 2 && statetype != A
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 220) && movecontact

; Special 1
[State -1, Special 1]
type = ChangeState
value = 1510
triggerall = var(59) = 6 && RoundState = 2 && var(23) = 0
triggerall = (p2bodydist x = [-40, 40]) && (Statetype != A)
trigger1 = (stateno = 250) && movecontact
trigger1 = time > 3

;------------------------------------------------------------------------------
; Stand Med Punch
[State -1, Combo 4]
type = Changestate
value = 210
triggerall = var(59) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand light kick
[State -1, Stand Light kick]
type = ChangeState
value = 230
triggerall = var(59) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Stan Medium kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(59) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand light punch
[State -1, Stand Light punch]
type = ChangeState
value = 200
triggerall = var(59)= 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Stand Strong Punch
[State -1, Stand Strong kick]
type = ChangeState
value = 250
triggerall = var(59)= 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Strong kick
[State -1, Stand Strong punch]
type = ChangeState
value = 220
triggerall = var(59) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 250) && movecontact

; Special 1
[State -1, Special 1]
type = ChangeState
value = 1520
triggerall = var(59) = 6 && RoundState = 2 && var(23) = 0
triggerall = (p2bodydist x = [-40, 40]) && (Statetype = S)
trigger1 = (stateno = 220) && movecontact
trigger1 = time > 3

;---------------------------------------------------------------------------
; AI Launcher/Super jump/Throw
;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = numenemy > 0
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 20 && (enemynear, anim = 5300) && (StateNo = 420) && movehit
trigger2 = p2bodydist X <= 20 && (enemynear, statetype != A) && Random = [150,850] ;&& (StateNo = 420) && (MoveHit = 1

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = roundstate = 2
triggerall = Var(59)
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 420
trigger2 = numenemy > 0
trigger2 = (enemynear, Vel X >= 4) && ctrl

[State -1, throw ai]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper && var(23) = 10000
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

[State -1, throw ai]
type = ChangeState
value = 1800
triggerall = MoveType != H && RoundState = 2 && !IsHelper && var(23) = 0
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
trigger1 = Random <= 150 && (statetype = S) && Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
; (chain combos)
;trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
; (chain combos)
;trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
; (chain combos)
;trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)
; (chain combos)
;trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)


;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && movecontact

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 440) && movecontact

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3)

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 630 && movecontact


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 650 && movecontact

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact = 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && movecontact
trigger2 = (stateno = 630) && movecontact
trigger3 = (stateno = 610) && movecontact


;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 640 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 630 && movecontact

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;---------------------------------------------------------------------------
; AI Super Attempt
;---------------------------------------------------------------------------

[state -1]  ; Air Wind  (Angel Only)
type = ChangeState
triggerall = var(23) = 0 && NumProjID(1250) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1250

[State -1] ; Spinning Halo x
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1510

[State -1] ; Spinning Halo y
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1520

[State -1] ; Spinning Halo z
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1530

[state -1]  ; Air Thrust
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1400

[state -1]  ; Air Thrust In Air
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1403

[state -1]  ; Angel Dive
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1550

[state -1]  ; Angel Dive
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1551

[state -1]  ; Angel Dive
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1552

[state -1]  ; Angel uplift (angel only)
type = ChangeState
triggerall = var(23) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1540

;---------------------------------------------------------------------------
; AI Super Attempt (Archangel Only)
;---------------------------------------------------------------------------

[state -1]  ; Air Feather x
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1050

[state -1]  ; Air Feather y
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1060

[state -1]  ; Air Feather z
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1070

[state -1]  ; FeatherDart x
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0) && Numprojid(1000) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1703

[state -1]  ; FeatherDart y
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0) && Numprojid(1000) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1704

[state -1]  ; FeatherDart z
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0) && Numprojid(1000) = 0
triggerall = (Ctrl) && (Statetype = S) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype = S)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
value = 1705

;---------------------------------------------------------------------------
; AI Attempt Hyper (Angel Only)
;---------------------------------------------------------------------------
[State -1]; Healing
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && var(23) = 0
triggerall = (Ctrl) && (statetype = S)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 3000) && (random = [0,300])
value = 3300

[State -1] ; Hyper Spin
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && var(23) = 0
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,300])
value = 3200

[State -1] ; Air Skyscraper
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) && var(23) = 0
triggerall = (Ctrl) && (statetype = A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,300])
value = 3003

[state -1]  ; Fallen Angel
type = ChangeState
triggerall = var(23) = 0
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (random = [0,50])
trigger1 = (p2bodydist x > 50) && (prevstateno != 5120) && (statetype != A)
trigger1 = p2bodydist y >-70 && p2bodydist y <70
trigger1 = (power >= 1000) && (random = [0,300])
value = 3100

;---------------------------------------------------------------------------
; AI Attempt Hyper (Archangel Only)
;---------------------------------------------------------------------------
[State -1]; Hyper Swoop
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0) && var(23) = 10000
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,300])
value = 3800

[State -1]; Hyper Aerial Daggers
type = ChangeState
triggerall = var(23) = 10000
triggerall = (roundstate = 2) && (var(59) != 0) && var(23) = 10000
triggerall = (Ctrl) && (statetype != A)
triggerall = (prevstateno != 5120)
trigger1 = (power >= 1000) && (random = [0,300])
value = 3900

;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \
;---------------------------------------------------------------------------
;Commands
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;----------------------------ANGEL SUPERS---------------------------------------
;-------------------------------------------------------------------------------
[State -1, Healing]
type = ChangeState
value = 3300
triggerall = (StateType != A) && (MoveType != H) ;&& !Var(59)
triggerall = !IsHelper
triggerall = command = "Healing"
triggerall = power >= 1000 && numexplod(3302)=0
triggerall = stateno < 3000
trigger1 = ctrl
trigger2 = (HitdefAttr = SC, NA) && (MoveContact)


; Air Sky Scraper
[State -1, Air Sky Scraper]
type = ChangeState
value = 3003
triggerall = var(23) = 0 && !Var(59)
triggerall = power >= 1000
triggerall = command = "AirSkyScraper"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

; Air Sky Scraper
[State -1, Air Sky Scraper]
type = ChangeState
value = 3004
triggerall = var(23) = 0 && !Var(59)
triggerall = power >= 1000
triggerall = command = "AirSkyScraper"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 220
trigger3 = movecontact

[State -1, Hyper Whirlwind]
type = ChangeState
value = 3200
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "Whirlwind"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger1 = ctrl
trigger2 = (Statetype != A) && (HitdefAttr = SC, NA) && (MoveContact)

; Fallen Angel
[State -1, Hyper Swoop]
type = ChangeState
value = 3100
triggerall = var(23) = 0 && !Var(59)
triggerall = command = "FallenAngel"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;------------------------------------------------------------------------------
;---------------------------ANGEL SPECIALS------------------------------------
;-------------------------------------------------------------------------------

;Angel Thrust
[State -1, Thrust]
type = ChangeState
value = 1400
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "AirThrust"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 220
trigger3 = movecontact

;Angel Air Thrust
[State -1, Thrust]
type = ChangeState
value = 1403
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "AirThrust"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact


;Angel Dive
[State -1, Angel dive]
type = ChangeState
value = 1550
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "DiveX"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;Angel Dive
[State -1, Angel dive]
type = ChangeState
value = 1551
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "DiveY"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;Angel Dive
[State -1, Angel dive]
type = ChangeState
value = 1552
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "DiveZ"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;Angel Uplift
[State -1, Angel Uplift]
type = ChangeState
value = 1540
triggerall = var(23) = 0 && !Var(59)
triggerall = command = "Uplift"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Angel Wind
[State -1, Air Wind a]
type = ChangeState
value = 1250
triggerall = Command = "AirWind"
triggerall = var(23) = 0 && !Var(59)
triggerall = NumProjID(1250) = 0
trigger1 = StateType = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;Angel Spinning Halo
[State -1, Spinning HaloA]
type = ChangeState
value = 1510
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "SpinningA"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Angel Spinning Halo
[State -1, Spinning HaloB]
type = ChangeState
value = 1520
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "SpinningB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Angel Spinning Halo
[State -1, Spinning HaloC]
type = ChangeState
value = 1530
;triggerall = var(23) = 0 && !Var(59)
triggerall = command = "SpinningC"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-------------------------------------------------------------------------------
;----------------------------ARCHANGEL SUPERS-----------------------------------
;-------------------------------------------------------------------------------

[State -1, Hyper Aerial Daggers]
type = ChangeState
value = 3900
triggerall = var(23) = 10000 && !Var(59)
triggerall = command = "AirDaggers"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Hyper Swoop]
type = ChangeState
value = 3800
triggerall = var(23) = 10000 && !Var(59)
triggerall = command = "HyperSwoop"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)


;------------------------------------------------------------------------------
;------------------------;ARCHANGEL SPECIALS------------------------------------
;-------------------------------------------------------------------------------


;Archangel Feather Shot
[State -1, Feathershot x]
type = ChangeState
value = 1704
triggerall = !Var(59)
triggerall = var(23) = 10000
triggerall = Numprojid(1000) = 0
triggerall = Command = "FeatherDartX"
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Archangel Feather Shot
[State -1, Feathershot y]
type = ChangeState
value = 1705
triggerall = !Var(59)
triggerall = var(23) = 10000
triggerall = Numprojid(1000) = 0
triggerall = Command = "FeatherDartY"
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Archangel Feather Shot
[State -1, Feathershot z]
type = ChangeState
value = 1703
triggerall = !Var(59)
triggerall = var(23) = 10000
triggerall = Command = "FeatherDartZ"
triggerall = Numprojid(1000) = 0
trigger1 = StateType != A && Ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;Air Feathers x
[State -1, Air Feathers]
type = ChangeState
value = 1050
triggerall = Command = "AirFeathersX"
triggerall = !Var(59)
triggerall = var(23) = 10000
trigger1 = StateType = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;Air Feathers y
[State -1, Air Feathers]
type = ChangeState
value = 1060
triggerall = Command = "AirFeathersY"
triggerall = !Var(59)
triggerall = var(23) = 10000
trigger1 = StateType = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;Air Feathers z
[State -1, Air Feathers]
type = ChangeState
value = 1070
triggerall = !Var(59)
triggerall = var(23) = 10000
triggerall = Command = "AirFeathersZ"
trigger1 = StateType = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 650 || stateno = 620
trigger3 = movecontact

;[FLIGHT MODE ONLY]
;Air Feathers x
[State -1,  Air Feathers]
type = ChangeState
value = 1119
triggerall = (stateno >1100) && (stateno <1199)
triggerall = var(23) = 10000 && !Var(59)
triggerall = Command = "AirFeathersX"
trigger1= Movetype = I
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

;Air Feathers y
[State -1,  Air Feathers]
type = ChangeState
value = 1120
triggerall = (stateno >1100) && (stateno <1199)
triggerall = var(23) = 10000 && !Var(59)
triggerall = Command = "AirFeathersY"
trigger1= Movetype = I
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

;Air Feathers z
[State -1, Air Feathers]
type = ChangeState
value = 1121
triggerall = (stateno >1100) && (stateno <1199)
triggerall = var(23) = 10000 && !Var(59)
triggerall = Command = "AirFeathersZ"
trigger1= Movetype = I
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

;Air Feathers z
[State -1, Air Feathers]
type = ChangeState
value = 1122
triggerall = (stateno >1100) && (stateno <1199)
triggerall = var(23) = 0 && !Var(59)
triggerall = Command = "AirWind"
trigger1= Movetype = I
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Air Angel Dive]
type = ChangeState
value = 1550
triggerall = (stateno >1100) && (stateno <1199)
;triggerall = var(23) = 0 && !Var(59)
triggerall = Command = "DiveX"
trigger1= Movetype = I
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Air Angel Dive]
type = ChangeState
value = 1551
triggerall = (stateno >1100) && (stateno <1199)
;triggerall = var(23) = 0 && !Var(59)
triggerall = Command = "DiveY"
trigger1= Movetype = I
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)

[State -1, Air Angel Dive]
type = ChangeState
value = 1552
triggerall = (stateno >1100) && (stateno <1199)
;triggerall = var(23) = 0 && !Var(59)
triggerall = Command = "DiveZ"
trigger1= Movetype = I
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact)


;-------------------------------------------------------------------------------

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S && !Var(59)
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S && !Var(59)
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"


[State -1, FM Angel Dash Forward]
type = ChangeState
value = 1403;1117
;triggerall = var(23) = 0 && !Var(59)
triggerall = MoveType = I && !Var(59)
triggerall = (stateno >1100) && (stateno <1199)
trigger1 = Command = "FF"


[State -1, FM Dash Back]
type = ChangeState
value = 1118
triggerall = MoveType = I && !Var(59)
triggerall = (stateno >1100) && (stateno <1199)
trigger1 = Command = "BB"

[State -1, Air Dash Forward]
type = ChangeState
value = 107
triggerall = StateType = A && !Var(59)
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 50)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "FF"

[State -1, Air Dash Back]
type = ChangeState
value = 108
triggerall = StateType = A && !Var(59)
triggerall = (Ctrl)
triggerall =(StateNo != 107)
triggerall =  (StateNo != 108)
triggerall =  (StateNo != 50)
triggerall =  (prevStateNo != 107)
triggerall =  (prevStateNo != 108)
trigger1 = Command = "BB"

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(23) = 10000 && !Var(59)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

; Overhead Throw
[State -1, Throw]
type = ChangeState
value = 1800
triggerall = var(23) = 0 && !Var(59)
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

;-----------------------------
[State -1, Flight Mode]
type = ChangeState
value = ifelse((stateno >1100) && (stateno <1199),50,1100)
trigger1 = command = "Flight"
trigger1 = ctrl

[State -1, Flight Mode]
type = ChangeState
value =50
triggerall = (stateno >1100) && (stateno <1199)
trigger1 = command = "Flight"

[State -1, Taunt]
type = ChangeState
value = 195
;triggerall = var(23) = 0 && !Var(59)
triggerall = Command = "Taunt"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

;;[State -1, Taunt]
;type = ChangeState
;value = 10195
;triggerall = var(23) = 10000 && !Var(59)
;triggerall = command = "s"
;trigger1 = statetype != A
;trigger1 = ctrl

[state -1, super_jump]
type = changestate
triggerall = statetype = S || statetype = C && !Var(59)
trigger1 = command = "super_jump"
trigger1 = ctrl
trigger2 = command = "super_jump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holddown") && (statetype != A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400)
trigger5 = movecontact
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200, 440])) && movecontact = 1 && stateno != 420 && stateno !=220 && stateno !=250 && var(18) < 7


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200)
trigger3 = movecontact
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430)



;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown") && (statetype = C) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact
trigger3 = stateno = 630 || stateno = 640
;---------------------------------------------------------------------------
;Roll Forward
;[State -1, Roll Forward]
;type = ChangeState
;value = 8300
;triggerall = command = "holdfwd" && !Var(59)
;triggerall = time = 1
;trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
;[State -1, Roll Back]
;type = ChangeState
;value = 8305
;triggerall = command = "holdback" && !Var(59)
;triggerall = time = 1
;trigger1 = (stateno = 5120) && (alive = 1)

[State -1, FM LP]
type = ChangeState
value = 1111
triggerall=var(59)  != 1
triggerall = (stateno >1100) && (stateno <1199)
triggerall = command = "x"
trigger1= Movetype = I
trigger2= (HitdefAttr = A, NA) && (MoveContact)  && time > 3

[State -1, FM MP]
type = ChangeState
value = 1112
triggerall=var(59)  != 1
triggerall = (stateno >1100) && (stateno <1199)
triggerall = command = "y"
trigger1= Movetype = I
trigger2= (HitdefAttr = A, NA) && (MoveContact)  && time > 3

[State -1, FM SP]
type = ChangeState
value = 1113
triggerall=var(59)  != 1
triggerall = (stateno >1100) && (stateno <1199)
triggerall = command = "z"
trigger1= Movetype = I

[State -1, FM LK]
type = ChangeState
value = 1114
triggerall=var(59)  != 1
triggerall = (stateno >1100) && (stateno <1199)
triggerall = command = "a"
trigger1= Movetype = I
trigger2= (HitdefAttr = A, NA) && (MoveContact)  && time > 3

[State -1, FM MK]
type = ChangeState
value = 1115
triggerall=var(59)  != 1
triggerall = (stateno >1100) && (stateno <1199)
triggerall = command = "b"
trigger1= (Movetype = I)
trigger2= (HitdefAttr = A, NA) && (MoveContact)  && time > 3

[State -1, FM SK]
type = ChangeState
value = 1116
triggerall=var(59)  != 1
triggerall = (stateno >1100) && (stateno <1199)
triggerall = command = "c"
trigger1= Movetype = I
