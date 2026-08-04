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

;-------------------------comands
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;--------------------Default
[Defaults]
command.time=15
command.buffer.time=1


;--------------------SINGLE BUTTON
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1


;----------------------HOLD DIR
[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1


;-----------------------HOLD BUTTON
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1


;===================<DIR>===================
[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1


;===================<SUPER MOTIONS>===================






[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F, y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,z
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~x
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~y
time=30
[Command]
name="2qcfp"
command=~D,DF,F,D,DF,F,~z
time=30



[Command]
name="vomite"
command=~D, DB, B, a+b


[Command]
name="vomite"
command=~D, DB, B, a+c


[Command]
name="vomite"
command=~D, DB, B, c+b

[Command]
name="vomite"
command=~D, DB, B, a+b


[Command]
name="vomite"
command=~D, DB, B, a+c


[Command]
name="healing factor"
command=~D, DF, F, c+b

[Command]
name="healing factor"
command=~D, DF, F, a+c

[Command]
name="healing factor"
command=~D, DF, F, a+b

[Command]
name="hammer2"
command=~D,DF,F,x+y
time=30

[Command]
name="hammer2"
command=~D,DF,F,y+z
time=30

[Command]
name="hammer2"
command=~D,DF,F,x+z
time=30



[Command]
name="hammer"
command=~D,DB,B,x+y
time=30

[Command]
name="hammer"
command=~D,DB,B,y+z
time=30

[Command]
name="hammer"
command=~D,DB,B,x+z
time=30


;===================<SPECIAL MOTIONS>===================

[Command]
name="hcbx"
command=~F,DF,D,DB,B,x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,z
time=30
[Command]
name="hcbx"
command=~F,DF,D,DB,B,~x
time=30
[Command]
name="hcby"
command=~F,DF,D,DB,B,~y
time=30
[Command]
name="hcbz"
command=~F,DF,D,DB,B,~z
time=30

[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+y
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,x+z
time=30
[Command]
name="hcb2p"
command=~F,DF,D,DB,B,y+z
time=30

[Command]
name="dfx"
command=~F,D,DF,x
time=20
[Command]
name="dfy"
command=~F,D,DF,y
time=20
[Command]
name="dfz"
command=~F,D,DF,z
time=20
[Command]
name="dfx"
command=~F,D,DF,~x
time=20
[Command]
name="dfy"
command=~F,D,DF,~y
time=20
[Command]
name="dfz"
command=~F,D,DF,~z
time=20

[Command]
name="df2p"
command=~F,D,DF,x+y
time=20
[Command]
name="df2p"
command=~F,D,DF,x+z
time=20
[Command]
name="df2p"
command=~F,D,DF,y+z
time=20

;------------------------------------------------------------------------------------------------

[Command]
name="acidx"
command=~D,DF,F,x
time=15
[Command]
name="acidy"
command=~D,DF,F,y
time=15
[Command]
name="acidz"
command=~D,DF,F,z
time=15
[Command]
name="acidx"
command=~D,DF,F,~x
time=15
[Command]
name="acidy"
command=~D,DF,F,~y
time=15
[Command]
name="acidz"
command=~D,DF,F,~z
time=15

[Command]
name="3acid"
command=~45$B,F,B,z
time=30

[Command]
name="3acid"
command=~45$B,F,B,~z
time=30

[Command]
name="spinx"
command=~D,DB,B,x
time=15
[Command]
name="spiny"
command=~D,DB,B,y
time=15
[Command]
name="spinz"
command=~D,DB,B,z
time=15
[Command]
name="spinx"
command=~D,DB,B,~x
time=15
[Command]
name="spiny"
command=~D,DB,B,~y
time=15
[Command]
name="spinz"
command=~D,DB,B,~z
time=15


;------------------------------------------------------------------------------------------------


[Command]
name="downfa"
command=~D,DF,F,a
time=30

[Command]
name="downfa"
command=D,DF,F,a
time=30

[Command]
name="downfb"
command=~D,DF,F,b
time=30

[Command]
name="downfb"
command=D,DF,F,b
time=30

[Command]
name="downfc"
command=D,DF,F,c
time=30

[Command]
name="downfc"
command=~D,DF,F,c
time=30

[Command]
name="fastkick"
command=~D,DB,B, a
time=15

[Command]
name="fastkick"
command=~D,DB,B, b
time=15

[Command]
name="fastkick"
command=~D,DB,B, c
time=15

[Command]
name="qcbb"
command=~D,DB,B,b
time=15
[Command]
name="qcbc"
command=~D,DB,B,c
time=15
[Command]
name="qcba"
command=~D,DB,B,~a
time=15
[Command]
name="qcbb"
command=~D,DB,B,~b
time=15
[Command]
name="qcbc"
command=~D,DB,B,~c
time=15

[Command]
name="qcb2k"
command=~D,DB,B,a+b
time=15
[Command]
name="qcb2k"
command=~D,DB,B,a+c
time=15
[Command]
name="qcb2k"
command=~D,DB,B,b+c
time=15

[Command]
name="bdx"
command=~B,DB,D,x
time=20
[Command]
name="bdy"
command=~B,DB,D,y
time=20
[Command]
name="bdz"
command=~B,DB,D,z
time=20
[Command]
name="bdx"
command=~B,DB,D,~x
time=20
[Command]
name="bdy"
command=~B,DB,D,~y
time=20
[Command]
name="bdz"
command=~B,DB,D,~z
time=20

[Command]
name="bda"
command=~B,DB,D,a
time=20
[Command]
name="bdb"
command=~B,DB,D,b
time=20
[Command]
name="bdc"
command=~B,DB,D,c
time=20
[Command]
name="bda"
command=~B,DB,D,~a
time=20
[Command]
name="bdb"
command=~B,DB,D,~b
time=20
[Command]
name="bdc"
command=~B,DB,D,~c
time=20


;---------------------jumping

[Command]
name = "SuperJump"
command = D,$U

[Command]
name = "SuperJump"
command = a+b+c


;----------------------------

[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10


;---------------------combos

[Command]
name="recovery"
command=x+y
time=1

[Command]
name="lasher"
command=x+a
time=1

[Command]
name="lasher2"
command=y+b
time=1

[Command]
name="lasher3"
command=z+c
time=1

[Command]
name="2k"
command=a+b
time=1
[Command]
name="2k"
command=a+c
time=1
[Command]
name="2k"
command=b+c
time=1

[Statedef -1]

[State -1, AI]
type = VarSet
triggerall = roundstate != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
trigger26  = command = "CPU26"
trigger27  = command = "CPU27"
trigger28  = command = "CPU28"
trigger29  = command = "CPU29"
trigger30  = command = "CPU30"
var(59) = 1

;===========================================================================
;===========================================================================
; A.I Commands
;-----------------------------------------------------------------------
[State -1, Combo Chooser]
type = VarRandom
trigger1 = var(59) = 1 && stateno = [5000,5300]
trigger2 = movetype != A
v = 48
range = 0,4 ;<---- Here, change the 7 to however many combos you have - Yin


;---------------------------------------------------------------------------
; AI Defense
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59) =1=1 && StateType != A && Ctrl
triggerall = Random <= 150
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

;Super Jump follow
[State -1, super_jump]
type = ChangeState
value = 9004
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype!=A
trigger1 = MoveHit
trigger1 = stateno = 420

;Super Jump
[State -1, super_jump]
type = ChangeState
value = 700
triggerall = var(59)
triggerall = roundstate = 2
triggerall = statetype!=A
trigger1 = numenemy > 0
trigger1 = (enemynear, Vel X >= 4) && ctrl


[State -1, throw ai]
type = ChangeState
value = 800
triggerall = MoveType != H && RoundState = 2 && !IsHelper
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = Random <= 150 && (statetype = S) && var(59)
trigger1 = ctrl = 1

; AI Combos Start-------------------------------------------------------------
; Stand light Punch
[State -1, Combo 1]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) && var(48) = 0 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 0 && RoundState = 2
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 210) && movecontact


;-------------------------------------------------------------------------------
; Stand light kick
[State -1, Combo 2]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand Med kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(59) && var(48) = 0 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand Hard kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && var(48) = 0 && RoundState = 2
triggerall = p2bodydist x <= 40
trigger1 = (stateno = 240) && movecontact

;------------------------------------------------------------------------------
; Stand Med Kick
[State -1, Combo 3]
type = Changestate
value = 240
triggerall = var(59) && var(48) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand ligh Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Stan Medium Punch
[State -1, Stand Med Punch]
type = ChangeState
value = 210
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand Strong kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 220) && movecontact

; Special 1
[State -1, Special 1]
type = ChangeState
value = 1000
triggerall = Numhelper(1050) = 0
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 250) && movecontact
trigger1 = time > 3

;------------------------------------------------------------------------------
; Stand Med Punch
[State -1, Combo 4]
type = Changestate
value = 210
triggerall = var(59) && var(48) = 6 && statetype = S && RoundState = 2 && ctrl && random > 500
triggerall = p2statetype != L
trigger1 = (p2bodydist x = [-40, 40]) && random > 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,40]
trigger2 = random <= 400

; Stand light kick
[State -1, Stand Light kick]
type = ChangeState
value = 230
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 210) && movecontact

; Stan Medium kick
[State -1, Stand Med kick]
type = ChangeState
value = 240
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 230) && movecontact

; Stand light punch
[State -1, Stand Light punch]
type = ChangeState
value = 200
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 240) && movecontact

; Stand Strong Punch
[State -1, Stand Strong kick]
type = ChangeState
value = 250
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 200) && movecontact

; Stand Strong kick
[State -1, Stand Strong punch]
type = ChangeState
value = 220
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 250) && movecontact

; Special 1
[State -1, Special 1]
type = ChangeState
value = 1000
triggerall = Numhelper(1050) = 0
triggerall = var(59) && var(48) = 6 && RoundState = 2
triggerall = (p2bodydist x = [-40, 40])
trigger1 = (stateno = 220) && movecontact

;---------------------------------------------------------------------------
; AI Standing basics
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

; (chain combos)
trigger1 = (stateno = 200) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact = 1)

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

; (chain combos)
trigger1= (stateno = 230) && (movecontact = 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2

; (chain combos)
trigger1 = ((stateno = 230) || (stateno = 240)) && (movecontact = 1)


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
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 800&& random >600))

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
trigger2 = (stateno = 9004) && (vel y > -6) && (random < 500)

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
trigger2 = (stateno = 9004) && (vel y > -6)

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
triggerall = var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)

;---------------------------------------------------------------------------
; AI Super Attempt
;---------------------------------------------------------------------------
[State -1, spina]
type=changestate
value = 1100
triggerall= (var(59)>=1) && (roundstate=2)
triggerall = (random = [600,799]) && (statetype!=A) && ctrl
trigger1 = p2bodydist y >-70 && p2bodydist x <= 30

[State -1, spinb]
type=changestate
value = 1110
triggerall= (var(59)>=1) && (roundstate=2)
triggerall = (random = [600,799]) && (statetype!=A) && ctrl
trigger1 = p2bodydist y >-70 && p2bodydist y <70
trigger1 = p2bodydist x = [30,100]


[State -1, spinc]
type=changestate
value = 1120
triggerall= (var(59)>=1) && (roundstate=2)
triggerall = (random = [600,799]) && (statetype!=A) && ctrl
trigger1 = p2bodydist y >-70 && p2bodydist y <70
trigger1 = p2bodydist x = [50,150]

[State -1, spinc]
type=changestate
value = 1130
triggerall= (var(59)>=1) && (roundstate=2)
triggerall = (random = [600,799]) && (statetype!=A) && ctrl
trigger1 = p2bodydist y >-70 && p2bodydist y <70
trigger1 = p2bodydist x = [50,150]

[State -1, splitz]
type=changestate
value = 740
triggerall = ((p2bodydist x > 40) && (p2bodydist x < 60))
trigger1=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=!var(20)&&!numhelper(775)&&!var(40)&&ctrl
trigger1=random<50&&!inguarddist&&p2movetype!=A&&p2dist x>=160

[State -1, splitz]
type=changestate
value = 743
triggerall = ((p2bodydist x > 60) && (p2bodydist x < 80))
trigger1=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=!var(20)&&!numhelper(775)&&!var(40)&&ctrl
trigger1=random<50&&!inguarddist&&p2movetype!=A&&p2dist x>=160


[State -1, splitz]
type=changestate
value = 746
triggerall = ((p2bodydist x > 80) && (p2bodydist x < 100))
trigger1=var(59)>=1&&roundstate=2&&statetype!=A
trigger1=!var(20)&&!numhelper(775)&&!var(40)&&ctrl
trigger1=random<50&&!inguarddist&&p2movetype!=A&&p2dist x>=160



[State -1, Gacid1]
type = ChangeState
value = 1000
triggerall = (roundstate = 2) && (var(59) != 0)&& NumHelper(1005) < 1
triggerall = (Ctrl) && (Statetype = S) && (random = [500,550])
triggerall = StateType != A && MoveType != H
trigger1 = p2bodydist Y = [-50,10]
trigger1 = p2movetype != H
trigger2 = (p2bodydist X = [20,49]) && prevstateno != 5120 && enemynear, numproj = 0 && (numhelper = 0)

[State -1, Gacid2]
type = ChangeState
value = 1010
triggerall = (roundstate = 2) && (var(59) != 0) && NumHelper(1006) < 1
triggerall = (Ctrl) && (Statetype = S) && (random = [500,550])
triggerall = StateType != A && MoveType != H
trigger1 = p2bodydist Y = [-50,10]
trigger1 = p2movetype != H
trigger2 = (p2bodydist X = [50,150]) && enemynear, numproj = 0 && (numhelper = 0)


[State -1, Gacid3]
type = ChangeState
value = 1020
triggerall = (roundstate = 2) && (var(59) != 0)&& NumHelper(1008) < 1
triggerall = (Ctrl) && (Statetype = S) && (random = [500,550])
triggerall = StateType != A && MoveType != H
trigger1 = p2bodydist x > 200 && (numhelper = 0) || p2movetype != H

[State -1, Aacid1]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype = A) && (random = [0,75])
trigger1 =(prevstateno != 5120)
trigger1 = p2bodydist y >40 && p2bodydist x > 40 && p2bodydist x < 150
value = 1011

[State -1, Aacid2]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype = A) && (random = [0,75])
trigger1 =(prevstateno != 5120)
trigger1 = p2bodydist y >10 && p2bodydist y <40 && p2bodydist x > 50
value = 1021


[State -1, Aacid3]
type = ChangeState
triggerall = (roundstate = 2) && (var(0) >=1) && numprojid(1001) = 0
triggerall = (Ctrl) && (Statetype = A) && (random = [0,75])
trigger1 =(prevstateno != 5120)
trigger1 = p2bodydist y >-10 && p2bodydist y <22 && p2bodydist x > 50
value = 1021


[State -1, acid3]
type = ChangeState
value = 1030
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [500,550])
triggerall = StateType != A && MoveType != H
trigger1 = p2bodydist x > 200 && (numhelper = 0) || p2movetype != H


[State -1, fastkick]
type = ChangeState
value = 2000
triggerall = (roundstate = 2) && (var(59) != 0) && (numhelper (2010) = 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [800,999])
triggerall = StateType != A && MoveType != H
trigger1 = p2bodydist x < 90 && (p2bodydist Y = [-70,10]) && prevstateno != 5120


;---------------------------------------------------------------------------
; AI Attempt Hyper
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (p2statetype != L)
triggerall = random = [0,600]
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0)
value = 4555


[State -1, vomite]
type=changestate
value = 3000
triggerall= (var(59)>=1) && (roundstate=2) && (statetype != A) && !var(40) && NumHelper(3001) < 1
triggerall = (ctrl) &&  (random >= 500) && power>=1000
trigger1 =(P2Bodydist X > 100) &&  (p2statetype != L) && (numhelper=0) && p2movetype = A
trigger2 = p2bodydist Y = [-50,10]


[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype != A) && (p2statetype != L)
triggerall = random = [0,400]
trigger1 = (prevstateno != 5120) && (statetype != A)
trigger1 = (power >= 2000) && (numproj = 0)
value = 3400


[State -1, superhammer]
type=changestate
value = 4000
triggerall=var(59)>=1&&roundstate=2&&power>=1000&&!var(40)&&statetype=A
triggerall=!(enemynear,ctrl)&&(p2stateno!=[120,155])&&(p2statetype!=L)
triggerall=(p2bodydist x>70)&&(p2bodydist y>=-80)&&(enemynear,vel y=[-2,2])&&(enemynear,vel x>-3)
trigger1=ctrl&&random>500
trigger2=stateno=52&&prevstateno=226
;---------------------------------------------------------------------------
; AI taunt, throw
;---------------------------------------------------------------------------

[State -1, taunt]
type=changestate
value=195
trigger1=var(59)>=1&&roundstate=2&&statetype!=A&&life>=(enemynear,life)
trigger1=p2dist x>200&&(enemynear,vel y>0)&&ctrl&&random<100
trigger1=!(enemynear,ctrl)&&(enemynear,movetype=H)


[State -1, throw]
type=changestate
value=800
triggerall=var(59)>=1&&roundstate=2&&statetype=S&&stateno!=100&&ctrl
triggerall=p2statetype!=A&&p2statetype !=L
triggerall=(p2bodydist x <= 25) && (p2bodydist y <= 10)
trigger1= random < 250


;---------------------------------------------------------------------------
; -[ User Command Definitions ]-
;---------------------------------------------------------------------------  \

;---------------------------------------------------------------------------
; Hypers
;---------------------------------------------------------------------------

[State -1, Hyper 1 ground]
type = ChangeState
value = 4301
triggerall = !Var(59)
triggerall = command = "hammer"
triggerall = power >= 1000 &&!var(40)
trigger1 = Statetype != A & ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = (stateno = [1500,1502]) && (enemynear, movetype = H)


[State -1, superhammer]
type=changestate
value = 4000
triggerall=var(59)<=0&&roundstate=2&&command="hammer"&&statetype=A&&power>=1000&&!var(40)
trigger1=ctrl
trigger2=(stateno=[200,255])
trigger3=stateno=52&&prevstateno=226&&stateno = 50

[State -1, superhammer]
type=changestate
value = 4555
triggerall=var(59)<=0&&roundstate=2&&command="hammer2"&&power>=1000&&!var(40)&& statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])
trigger3=stateno=52&&prevstateno=226

[State -1, vomite]
type = ChangeState
value = 3000
triggerall = !var(59) && numhelper(3001) < 1
triggerall = command = "vomite"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)



[State -1, healing factor]
type = ChangeState
value = 3400
triggerall = power >= 2000 && numexplod(3401)=0
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (!IsHelper)
triggerall = command = "healing factor"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Specials
;---------------------------------------------------------------------------


[State -1,blade]
type=changestate
value = 1110
triggerall=var(59)<=0&&roundstate=2&&command="df2p"&&statetype!=A&&power>=500&&!var(40)
trigger1=ctrl
trigger2=(stateno=[200,255])&&(prevstateno!=[200,255])&&movecontact



[State -1, Special 1]
type = ChangeState
value = 2000
triggerall = !var(59)
triggerall = command = "fastkick"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3



[State -1, G Acid L]
type = ChangeState
value = 1000
triggerall = !var(59)
triggerall = command = "acidx"
triggerall = Numhelper(1005) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, A Acid L]
type = ChangeState
value = 1001
triggerall = !var(59)
triggerall = command = "acidx"
triggerall = Numhelper(1005) = 0
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, G Acid M]
type = ChangeState
value = 1010
triggerall = !var(59)
triggerall = command = "acidy"
triggerall = Numhelper(1006) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, A Acid M]
type = ChangeState
value = 1011
triggerall = !var(59)
triggerall = command = "acidy"
triggerall = Numhelper(1006) = 0
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3


[State -1, G Acid H]
type = ChangeState
value = 1020
triggerall = !var(59)
triggerall = command = "acidz"
triggerall = Numhelper(1008) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, A Acid H]
type = ChangeState
value = 1021
triggerall = !var(59)
triggerall = command = "acidz"
triggerall = Numhelper(1008) = 0
trigger1 = Statetype = A && ctrl
trigger2 = (StateType = A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3


[State -1, Special 1]
type = ChangeState
value = 1030
triggerall = !var(59)
triggerall = command = "3acid"
triggerall = Numhelper(1005) = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Special 1]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "spinx"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Special 1]
type = ChangeState
value = 1110
triggerall = !var(59)
triggerall = command = "spiny"
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Special 1]
type = ChangeState
value = 1120
triggerall = command = "spinz"
triggerall = !var(59)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3


[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Special 1]
type = ChangeState
value = 740
triggerall = command = "downfa"
triggerall = !var(59)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3

[State -1, Special 1]
type = ChangeState
value = 743
triggerall = command = "downfb"
triggerall = !var(59)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3


[State -1, Special 1]
type = ChangeState
value = 746
triggerall = command = "downfc"
triggerall = !var(59)
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && time > 3


[State -1, Dash FWD]
type = ChangeState
value = 100
triggerall = !var(59)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "FF"

[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = !var(59)
triggerall = (roundstate = 2)
triggerall = StateType = S
triggerall = (Ctrl)
triggerall = (StateNo != 100)
triggerall = (StateNo != 105)
trigger1 = Command = "BB"

guardflag = MA

[state -1, super_jump]
type = changestate
triggerall = !var(59)
triggerall = statetype = S || statetype = C
trigger1 = command = "SuperJump"
trigger1 = ctrl
trigger2 = command = "SuperJump" || command = "holdup"
trigger2 = MoveHit
trigger2 = Stateno = 420
value = 700

[State -1, taunt]
type=changestate
value=195
triggerall=var(59)<=0&&command="start"&&statetype!=A
trigger1=ctrl
trigger2=(stateno=[200,255])&&movecontact






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
triggerall = (command = "x") && (statetype = S) && !var(59)
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !var(59)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430) || (stateno = 440)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430) || (stateno = 440)
;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = [200, 450])) && movecontact = 1 && stateno != 420 && var(18) < 7 && time > 3


;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 400)

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430)



;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 220)
trigger3 = movecontact && time > 3
trigger3 = (stateno = 230) || (stateno = 240)
trigger4 = movecontact && time > 3
trigger4 = (stateno = 400) || (stateno = 410) || (stateno = 420)
trigger5 = movecontact && time > 3
trigger5 = (stateno = 430) || (stateno = 440)


;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600
trigger3 = movecontact && time > 3
trigger3 = stateno = 630


;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact && time > 3
trigger3 = stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact && time > 3
trigger3 = stateno = 630
;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !var(59)
trigger1 = ctrl
trigger2 = movecontact && time > 3
trigger2 = stateno = 600 || stateno = 610
trigger3 = movecontact && time > 3
trigger3 = stateno = 630 || stateno = 640


;Roll Forward
[State -1, Roll Forward]
type = ChangeState
value = 8300
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)

;Roll Back
[State -1, Roll Back]
type = ChangeState
value = 8305
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
trigger1 = (stateno = 5120) && (alive = 1)


