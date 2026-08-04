; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 170,0

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[state 175]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 175,0

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[state 180]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, ChangeState]
type = ChangeState
trigger1 =  numexplod(3301)>0
value = 189
ctrl = 0

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 2) / 1000)

;-----------------------
; Winpose #1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 10
value = S180,0
volume = 255
channel = 5

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 1
value = S180,1
volume = 255
channel = 5

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,180]
flag = RoundNotOver

;-----------------------
; Winpose #2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 1
value = S180,2
volume = 0
volume = 255
channel = 5

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 24
value = S180,3
volume = 255
channel = 5

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------
; Winpose # Alternate
[Statedef 189]
type = S
ctrl = 0
anim = 189
velset = 0,0

[state 189]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 189,0]
type = PlaySnd
trigger1 = Time = 10
value = 3200,0

[State 189,1]
type = AssertSpecial
trigger1 = Time = [0,110]
flag = RoundNotOver

;-----------------------
;
[Statedef 19171]
type = S
movetype = I
physics = N
ctrl = 0
anim = 0
velset = 0,0
spriority = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time < 100
flag = Intro
;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190, 2]
type = ChangeState
triggerall = time = 0
trigger1 = enemynear, name = "BastionBoss"
trigger2 = enemynear, name = "helibonus"
value = 19171

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191+ ((Random * 3) / 1000)     ; change the 1 to however many intros you have

;-------------------------------------------------------------------------------
; Intro #1

[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 14
value = S190,0
volume = 255
channel = 5

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 14
value = S190,1
volume = 255
channel = 5

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;-------------------------------------------------------------------------------
; Intro #2

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, EnvShake]
type = EnvShake
trigger1 = AnimElem = 36
time = 78
ampl = 3
freq = 108

[State 192, PlaySnd]
type = PlaySnd
trigger1 = animelem = 20
value = S3100,0
volume = 255
channel = 5

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = Intro

;-------------------------------------------------------------------------------
; Intro #3

[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 0,1

[State 193, PlaySnd]
type = PlaySnd
triggerall = Var(6) = 0
trigger1 = time = 1
value = S194,0
volume = 255
channel = 3

[State 193, PlaySnd]
type = PlaySnd
triggerall = Var(6) = 1
trigger1 = time = 1
value = S194,1
volume = 255
channel = 3

[State 193, StopSnd]
type = StopSnd
trigger1 = time = 400
channel = 3

[State 193, EnvShake]
type = EnvShake
trigger1 = AnimElem = 16
time = 78
ampl = 3
freq = 108

[State 193, 1]
type = Playsnd
trigger1 = AnimElem = 16
value = 30,0
channel = 4

[State 193, Explod]
type = Explod
trigger1 = animelem = 1
anim = 194
ID = 194
pos = 0,0
postype = p1
removetime = 337
scale = 1,1
sprpriority = 10
ontop = -10

[State 193, Explod]
type = Explod
trigger1 = animelem = 16
anim = 1150
ID = 193
pos = 0,10
postype = p1
removetime = 120
scale = 1,1
sprpriority = 10
ontop = -10

[State 193, Explod]
type = Explod
trigger1 = animelem = 16
anim = 1202
ID = 193
pos = -50,10
postype = p1
facing = 1
removetime = 21
scale = 1,1
sprpriority = 10
ontop = 1

[State 193, Explod]
type = Explod
trigger1 = animelem = 16
anim = 1202
ID = 193
pos = 50,10
postype = p1
facing = -1
removetime = 21
scale = 1,1
sprpriority = -10
ontop = 1

[State 193, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 370
value = S190,2
volume = 255
channel = 5

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 365
value = S190,3
volume = 255
channel = 5

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = Intro

;---------------------------------------------------------------------------
; Taunt
[StateDef 195]
type    = S
movetype= H
physics = S
juggle  = 4
ctrl = 0
anim = 195
sprpriority = 2

[State 195, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S195,0
volume = 255
channel = 0

[State 195, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 200
poweradd = 10
sprpriority = 2

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0


[State 200, HitDef]
type = HitDef
trigger1 = time=0
attr = S,NA
damage = 12
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -70
hitsound = S172,10
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -4
air.type = Low
air.hittime = 20
air.velocity = -6,0

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 210
poweradd = 35
sprpriority = 2

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 35
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 15,15
sparkno = 1
sparkxy = -10,-70
;guard.sparkno = 8430
hitsound = S172,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
air.type = Low
air.hittime = 15
air.velocity = -6,-5


[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 220
poweradd = 30
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 40
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -90
;guard.sparkno = 8430
hitsound = S172,8
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3
air.type = Low
air.hittime = 18
air.velocity = -6,-7
fall = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 230
poweradd = 15
sprpriority = 2

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = 1
sparkxy = -10, -10
;guard.sparkno = 8430
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 240
poweradd = 35
sprpriority = 2

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-60
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,0
air.type = Low
air.hittime = 5
air.velocity = -5,0


[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 250
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 75
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -70
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -8,0
air.type = Low
air.hittime = 5
air.velocity = -7,0
fall= 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
poweradd = 15
sprpriority = 2

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = S172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -2,0
air.type = Low
air.hittime = 3
air.velocity = -5,0


[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 410
poweradd = 35
sprpriority = 2

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = time =0
attr = C,NA
damage = 35
animtype = Medium
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-53
;guard.sparkno = 8430
hitsound = S172,9
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3,0
air.type = Low
air.hittime = 5
air.velocity = -5,0


[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 420
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = time =0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
sparkno = 2
priority = 4, Hit
sparkxy = -5, -38
hitsound = S172,8
guardsound = 6,0
animtype = Up
ground.type = Hard
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-13

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 430
poweradd = 15
sprpriority = 2

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 20
animtype = Light
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 9,9
sparkno = 0
sparkxy = -10, -20
;guard.sparkno = 8430
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0


[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 440
poweradd = 35
sprpriority = 2

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 40
animtype = Medium
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10,-10
;guard.sparkno = 8430
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 450
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 10
y = 0

[State 450, HitDef]
type = HitDef
trigger1 = time = 0
attr = C,NA
damage = 80
animtype = HARD
hitflag = M
guardflag = L
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -70
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = trip
ground.velocity = -2.5, -4
guard.slidetime = 11
guard.hittime = 24
guard.velocity = -10
fall = 1
fall.recover = 0
air.type = Low
air.hittime = 5
air.velocity = -4,3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 51201
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 600
poweradd = 15
sprpriority = 2

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = time = 0
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -93
;guard.sparkno = 8430
hitsound = S172,10
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -6
air.fall = 0
air.velocity = 0, -10.5

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 610
poweradd = 35
sprpriority = 2

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 40
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10,-78
;guard.sparkno = 8430
hitsound = S172,9
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -7.5

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 620
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0


[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = time = 1
attr = A,NA
damage = 70
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2
sparkxy = -10, -53
;guard.sparkno = 8430
hitsound = S172,8
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.hittime = 25
air.fall = 1
fall= 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1



;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 630
poweradd = 15
sprpriority = 2

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -75
;guard.sparkno = 8430
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.fall = 0
air.velocity = 0, -10.5
air.hittime = 25

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 640
poweradd = 35
sprpriority = 2

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA
damage = 40
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -10,-75
;guard.sparkno = 8430
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.fall = 0
air.velocity = 0, -7.5
air.hittime = 25

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 650
poweradd = 55
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 200,0

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
damage = 80
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = -10, -33
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 25
ground.velocity = -10
air.velocity = -12,10
air.fall = 1
air.hittime = 25
fall = 1

[State 0, VelAdd]
type = VelAdd
triggerall = command = "holddown"
trigger1 = animelem = 3
x = 0
y = 15

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50


;hyper coisas
;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################

;----------------------------[2002 UM MAX2 BG]----------------------------------
[Statedef 40001]
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

;[State 40001, Tile #1-7]
;type = Explod
;triggerall = !numexplod(15600)
;trigger1 = !time
;anim = 15600
;ID = 15600
;pos = 0,0
;postype = left  ;p2,front,back,left,right
;removetime = 10
;pausemovetime = -1
;supermovetime = -1
;scale = 1.1,1.1
;sprpriority = -20
;ownpal = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0

[State 40001, Tile #1-7]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1.1,1.1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
;trigger1 = root, stateno != 3300 && root, stateno != 3350
;trigger2 = root, stateno = 3300 && root,animelemtime(61) = 1  || root, stateno = 3350 && root,animelemtime(50) = 1
trigger1 = root, stateno !=[3000,4999]
;trigger2 = root, NumHelper(8400) !=0|| root, NumHelper(8420) !=0
value = stateno+1

[Statedef 40002]
anim = 9999

;[State 40002, RemoveExplod]
;type = RemoveExplod
;trigger1 = !time
;id = 15600

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0
volume = 200

[State 40001, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--------------------------[2002 UM MAX2 PORTRAIT]------------------------------
[Statedef 40003]
anim = 9999

[State 40001, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40001, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-81)
postype = left  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40001, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-81)
postype = right  ;p2,front,back,left,right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1


;-------------------------------------------------------------------------------
;Throw

[Statedef 800]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = -2

[State 800, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0
volume = 0

[State 800]
type = HitDef
trigger1 = hitcount < 1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 810       ;On success, changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = S3,1
id = 800

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 1 || AnimTime = 0
trigger2 = animelem = 2 || AnimTime = 0
trigger3 = animelem = 3 || AnimTime = 0
value = -4

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 4 || AnimTime = 0
trigger2 = animelem = 5 || AnimTime = 0
trigger3 = animelem = 6 || AnimTime = 0
value = 1


[State 810]
type = Helper
trigger1 = Time = 0
stateno = 6810
id = 6810

[State 810];Bind 1
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 97,-130

[State 810];Bind 2
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 87,-160

[State 810];Bind 3
type = TargetBind
trigger1 = AnimElemNo(0) = 3 || AnimTime = 0
pos = 90,-150

[State 810];Bind 4
type = TargetBind
trigger1 = AnimElemNo(0) = 4
pos = 0,3

[State 810];Bind 5
type = TargetBind
trigger1 = AnimElemNo(0) = 5
pos = -7,5

[State 810];Bind 6
type = TargetBind
trigger1 = AnimElemNo(0) = 6
pos = 0,3

[State 810]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800,0

[State 810]
type = PlaySnd
trigger1 = AnimElem = 4
value = 172,12

[State 810]
type = EnvShake
trigger1 = AnimElem = 4
time = 8

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 8400
ID = 8400
pos = 0,0
postype = p2
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1
removeongethit = 0

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 8401
ID = 8401
pos = 0,0
postype = p2
removetime = -2
scale = 1,1
sprpriority = -10
ownpal = 1
removeongethit = 0

[State 1100, Rock Ground]
type = Explod
trigger1 = animelem = 4
anim = 1150
ID = 1150
pos = 20,5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = -10
ontop = 0
shadow = 50,50,50
ownpal = 1
removeongethit = 0

[State 810]
type = Explod
trigger1 = AnimElem = 4
anim = 2
ontop = 1
pos = 10,0
ownpal = 1

[State 810]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -20

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 73
value = 0,3

[State 810]
type = TargetState
trigger1 = Time = 73
value = 821

[State 810]
type = ChangeState
trigger1 = Time = 73
value = 811
ctrl = 0


[State 810]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Throw

[Statedef 811]
type    = S
movetype= A
physics = N
anim = 811
poweradd = 0
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 1 || AnimTime = 0
trigger2 = animelem = 2 || AnimTime = 0
value = -4

[State 810, SprPriority]
type = SprPriority
trigger1 = animelem = 3 || AnimTime = 0
trigger2 = animelem = 4 || AnimTime = 0
value = 1

[State 811];Bind 7
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 97,-130

[State 811];Bind 8
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 87,-160

[State 811];Bind 9
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = -63,-100

[State 811]
type = PlaySnd
trigger1 = AnimElem = 3
value = 220,0

[State 811]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -50

[State 811]
type = TargetState
trigger1 = AnimElem = 3, = 1
value = 823

[State 811]
type = ChangeState
trigger1 = AnimElem = 3, = 1
value = 813
ctrl = 0


[State 811]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Throw End

[Statedef 813]
type    = S
movetype= I
physics = N
;anim = 50
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2


[State 813]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -2

[State 820]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 820]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 820]
type = Turn
trigger1 = facing = enemynear,facing

[State 820, SprPriority]
type = SprPriority
trigger1 = animelem = 3 || AnimTime = 0
value = 1

[State 820, SprPriority]
type = SprPriority
trigger1 = animelem = 4 || AnimTime = 0
trigger2 = animelem = 5 || AnimTime = 0
trigger3 = animelem = 6 || AnimTime = 0
value = -1

[State 820]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 820]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown

[Statedef 821]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -2

[State 821]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 821]
type = ChangeAnim2
trigger1 = Time = 0
value = 821

[State 821]
type = Turn
trigger1 = facing = enemynear,facing


[State 821]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050


[State 821]
type = DestroySelf
trigger1 = ishelper


;---------------------------------------------------------------------------
;Thrown

[Statedef 823]
type    = A
movetype= H
physics = N

[State 823]
type = Turn
trigger1 = Time = 0

[State 823]
type = ChangeAnim2
Trigger1 = Time = 0
value = 823

[State 823]
type = VelSet
trigger1 = Time = 0
x = -7
y = -7

[State 823] ;Gravity
type = VelAdd
trigger1 = 1
y = .4


[State 823]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 1,0

[State 823] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



;---------------------------------------------------------------------------
;Thrown

[Statedef 824]
type    = S
movetype= H
physics = N
velset = -7,0

[State 824]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 0
movecamera = 1,0

[State 824]
type = VelSet
trigger1 = BackEdgeBodyDist < 15
trigger2 = FrontEdgeBodyDist < 15
x = 0

[State 823]
type = SelfState
trigger1 = Time = 120
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Wall Smack
[Statedef 825]
type = A
movetype = H
physics = N
;velset = 0,0


[State 825, 4]
type = ChangeAnim2
trigger1 = time = 0
trigger1 = Vel Y = 0
value = 827


[State 825, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 825, 6]
type = VelSet
trigger1 = time = 0
x = ifelse(Vel X < 0,3,-3)
y = -5



[State 825, 7]
type = VelAdd
trigger1 = time >= 0
y = .39


[State 825, 8]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;-------------------------------------------------------------------------
;Hit Ground By Throw
[Statedef 826]
type = A
movetype = H
physics = N
velset = 0,0

[State 826, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 826, 6]
type = VelSet
trigger1 = time = 0
x = 2.6

[State 826, 7]
type = VelAdd
trigger1 = time >= 0
y = .39

[State 826, 8]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;-------------------------------------------------------------------------
;Wall Smack
[Statedef 827]
type = A
movetype = H
physics = N

[State 827, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 827, 7]
type = VelAdd
trigger1 = time >= 0
y = .39


[State 827, 8]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;Throw Body
[Statedef 6810]
type = S
movetype = I
physics =N
anim = 6810
ctrl = 0
sprpriority = -10
velset = 0,0

[State 6810]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6810]
type = Turn
trigger1 = Parent,Facing != Facing

[State 6810]
type = DestroySelf
trigger1 = parent,stateno != 810

[State 6810]
type = BindToParent
trigger1 = 1

;--------------------------------------------------------------------------------------------
; Guard Push (stand)
[Statedef 7610]
type    = S
movetype= I
physics = N
poweradd= 0
velset = 10,0
ctrl = 0
anim = 7610
sprpriority = 0
facep2 = 1

[State 7610, VelMul]
type = VelMul
trigger1 = 1
x = 0.75

[State 7610, VelSet]
type = VelSet
trigger1 = Time = 10
x = 0

[State 7610, Width]
type = Width
trigger1 = 1
value = 10,0

[State 7610, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 23


[State 7610, PosAdd]
type = PosAdd
trigger1 = animelem = 2
x = 30

[State 7610, PlaySnd 2]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 7610, Spark]
type = Explod
trigger1 = AnimElem = 2;Time = 0
anim = F7020
postype = p1
pos = 31,-77
ownpal = 1
vel = 0,0
scale = 0.5,0.5
ignorehitpause = 1
sprpriority = 5

[State 7610, Guard Push Helper]
type = Helper
trigger1 = AnimElem = 2;Time = 0
helpertype = Normal
name = "GuardPush"
postype = P1
pos = -50,0
stateno = 7611
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30

[State 7610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Guard Push (Helper)

[Statedef 7611]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = Parent,Anim
sprpriority = -4


[State 7611, PlayerPush]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 7611, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 7611, VelSet 1]
type = VelSet
trigger1 = Time = [0,10]
x = 25

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time = [11,13]
x = 15

[State 7611, VelSet 2]
type = VelSet
trigger1 = Time >= 14
x = 10

[State 7611, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10

[State 7611, DestroySelf]
type = DestroySelf
trigger1 = Time >= 14


; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;;Claw Long Range
[Statedef 1000]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2
facep2 = 1

[State 1260]
type = Explod
trigger1 = AnimElem = 3
anim = 63
ownpal = 1
pos = 20,0
postype = p1
sprpriority = 10

[State 1260]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 7
value = 200,0


[State 1260]
type = VelSet
trigger1 = AnimElem = 3
x = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,3

[State 1260]
type = VelAdd
triggerall = Vel X > 0
trigger1 = AnimElem = 5, >= 0
x = -0.3


[State 1260]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 80
animtype = Hard
priority  = 3, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-40
hitsound   = S172,8
guardsound = 6,0
sparkno = 3
ground.type = Low
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = 3,-9
air.velocity = 3,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0
palfx.time = 1
palfx.add = 256,256,256


[State 1260]
type = ChangeAnim
trigger1 = MoveContact
value = 1001
ignorehitpause = 0
persistent = 0


[State 1260]
type = Explod
trigger1 = AnimElem = 4
anim = 21244
sprpriority = 5
ownpal = 1
removeongethit = 1
bindtime = -1

[State 1260]
type = Helper
trigger1 = MoveHIT;Contact
stateno = 21240
id = 21240
name = "Slash"
ownpal = 1
persistent = 0
pos = 0,-30

;[State 1260]
;type = VarAdd
;trigger1 = !MoveContact && AnimElem = 5, >= 0
;var(9) = 1
;ignorehitpause = 1
;persistent = 0

[State 1260]
type = ChangeState
trigger1 = AnimTime = 0; && StateType != A
value = 0
ctrl = 1


;Claw Effect
[Statedef 21240]
type = S
movetype = A
physics =N
anim = 9999
ctrl = 0
sprpriority = 4
velset = 0,0

[State 21240]
type = Explod
trigger1 = Time = 0
anim = 21242
sprpriority = 4
removetime = 16
ownpal = 1

[State 21240]
type = Explod
trigger1 = Time = 0
anim = 21243
sprpriority = 5
removetime = 16
ownpal = 1


[State 21240]
type = Explod
trigger1 = Time = 16
anim = 21241
sprpriority = 5
ownpal = 1

[State 21240]
type = DestroySelf
trigger1 = Time = 16



;------------------------------------------------------------------------------------------------------------
;Claw Effect
[Statedef 21241]
type = S
movetype = A
physics =N
anim = 9999
ctrl = 0
sprpriority = 4
velset = 0,0

[State 21241]
type = Explod
trigger1 = Time = 0
anim = 21245
sprpriority = 4
removetime = 16
ownpal = 1


[State 21241]
type = Explod
trigger1 = Time = 0
anim = 21246
sprpriority = 5
removetime = 16
ownpal = 1


[State 21241]
type = Explod
trigger1 = Time = 16
anim = 21247
sprpriority = 5
ownpal = 1


[State 21241]
type = DestroySelf
trigger1 = Time = 16

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4

;------------------------------
; Rock Throw
[StateDef 1100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0
velset = 0,0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S172,7

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1100,1

[State 1100, Rock Ground]
type = Explod
trigger1 = time = 0
anim = 1150
ID = 1150
pos = 20,5
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 1100, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
name = "Rock"
ID = 1150
stateno = 1150
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------------------------
;P2 state - Dizzy

[Statedef 1121]
type    = S
movetype= H
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
;anim = 5300
ctrl = 0
sprpriority = 2

[State 1121, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1121, Turn]
type = Turn
triggerall = facing = enemynear,facing
trigger1 = time = 1

[State 1121, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5300)
trigger1 = Anim !=5300
value = 5300

[State 1121, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5300)
trigger1 = Anim !=5010
value = 5010

[State 1121, VelSet]
type = VelSet
trigger1 = 1
x = 0

[State 1121, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 1121, SelfState]
type = SelfState
trigger1 = time = 90
value = 0
ctrl = 1

;------------------------------
; Rocks to be Thrown
[StateDef 1150]
type = S
movetype = A
physics = N
anim = 1151
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1150, posset]
type = PosSet
triggerall = anim != 1152
trigger1 = parent, anim = 1100
trigger1 = parent, animelem >= 8
y = -140

[State 1150, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1152
trigger1 = parent, anim = 1100
trigger1 = parent, animelem >= 8
value = 1152

[State 1150, VelSet]
type = VelSet
trigger1 = anim = 1152
x = 12
y = 3

[State 1150, HitDef]
type = HitDef
triggerall = parent, var(25) = 0
trigger1 = time = 0
attr = S, SP
damage = 80,5
guardflag = MA
pausetime = 0,12
hitsound = S1100,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
p2stateno = 1121

[State 1150, HitDef]
type = HitDef
triggerall = parent, var(25) != 0
trigger1 = time = 0
attr = S, SP
damage = 80,5
guardflag = MA
pausetime = 0,12
hitsound = S1100,2
guardsound = S3,0
sparkno = 2
sparkxy = 0,0
animtype = hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
fall = 1
air.fall = 1
p2stateno = 1121

[State 1150, ParentVarSet]
type = ParentVarSet
trigger1 =  movehit
v = 25
value = 1

[State 1150, ChangeAnim]
type = ChangeAnim
triggerall = anim != 1155
trigger1 = movecontact
trigger2 = anim = 1151
trigger2 = parent, movetype = H
value = 1155

[State 1150, VelSet]
type = VelSet
trigger1 = movecontact
x = 0
y = 0

[State 1150, PosSet]
type = PosSet
trigger1 = movecontact
x = enemynear, pos x

[State 1150, Explod]
type = Explod
triggerall = numexplod(1155) = 0
trigger1 = movecontact
anim = 1155
ID = 1155
pos = 0, -50
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
ignorehitpause = 1

[State 1150, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 1151
time = 1

[State 1150, DestroySelf]
type = DestroySelf
trigger1 = time > 200
trigger2 = anim = 1155
trigger2 = animtime = 0

;------------------------------
; Rocks to be Thrown
[StateDef 1151]
type = S
movetype = A
physics = N
anim = 1155
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1151, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 12

[State 1150, DestroySelf]
type = DestroySelf
trigger1 = time > 12

;-------------------------------------------------------------------------------
;Earthquake

[Statedef 1200]
type = S
movetype= A
physics = S
juggle  = 1
poweradd = 60
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 78
ampl = 2
freq = 118

[State 1200, 1]
type = Playsnd
trigger1 = AnimElem = 4
value = 172,2
channel = 5

[State 1200, 1]
type = Playsnd
trigger1 = AnimElem = 3
value = 30,0
channel = 4

[State 1200, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1202
ID = 1200
pos = 100,10
postype = p1
removetime = 21
scale = 1,1
sprpriority = 10
ontop = 1

[State 1200, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1202
ID = 1200
pos = 150,0
postype = p1
removetime = 21
scale = 0.9,0.8
sprpriority = -10
ontop = 0

[State 1200, blast]
type = Helper
trigger1 = AnimElem = 3
ID =1201
stateno =1201
postype = p1
pos = 105,10
name = "Rift"
ownpal = 1

[State 1200, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S,SA
damage = 52
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
sparkno = 0
sparkxy = -10, -70
hitsound = S2,2
guardsound = 3,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 9
ground.velocity = -4
air.type = Low
air.hittime = 20
air.velocity = -6,-2

[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
;Earthquake Rise

[Statedef 1201]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 1202
velset = 0,0
sprpriority = 1

[State 1200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 78
ampl = 2
freq = 118

[State 1201, 1]
type = Projectile
trigger1 = time = 0
projanim = 1201
projhitanim = 1205
projcancelanim = 1205
projhits = 3
projsprpriority = -1
offset = 0,0
velocity = 2,0
attr = S, SP
damage = 15,3
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S2,0
guardsound = 3,0
ground.type = High
ground.slidetime = 3
ground.hittime = 1
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1201, ChangeState]
type = destroyself
trigger1 = animtime = 0
trigger2 = root, stateno !=1200


;---------------------------------------------------------------------------------------------
;throw special
[StateDef 1300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 1300
velset = 0,0
sprpriority = 10

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 3
value = 1300,0

[State 1300]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1310
p2stateno = 1320
SprPriority = 10
guard.dist = 0
fall = 1
hitsound = S1,9
id = 1300
guardsound = S4,0
guard.sparkno = S8430
sparkxy = -10,-60
getpower = 0
kill = 0

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1310]
type    = S
movetype= A
physics = N
anim = 1310
sprpriority = 10

[State 1310, SprPriority]
type = SprPriority
trigger1 = Time = 1
value = 10

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 171,5

[State 1310, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 8
value = 172,8

[State 1310, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 6
value = -45

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 100,-40

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 70,-65

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 50,-95

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = -5,-129

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = -95,-160

[State 1310, SprPriority]
type = SprPriority
trigger1 = animelem = 2
value = -1

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = -70,-190

[State 1310, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1310, TargetState]
type = TargetState
trigger1 = AnimElem = 7
value = 1330

[State 0, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 5
freq = 20
ampl = -2

[State 1310, ChangeState]
type = ChangeState
trigger1 = enemynear, stateno = 1340
value = 1315
ctrl = 0

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1315]
type    = C
movetype= A
physics = C
anim = 1315
velset = 0,0
sprpriority = -1
juggle = 0

[State 1315, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = 200,0

[State 1315, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
attr = S, HA
guardflag = MA
getpower = 0,0
givepower = 0,0
SprPriority = -5
animtype = light
air.animtype = light
damage = 3
pausetime = 2,2
sparkno = -1
hitsound = S172,8
guardsound = 6,0
guard.sparkno = 0
sparkxy = -40,0
ground.type = High
ground.slide = 0
ground.hit = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
kill =0
p2stateno = 1340

[State 1315, Explod]
type = Explod
trigger1 = animelem = 2
anim = 3206
ID = 1317
pos = 10,-5
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1315, Explod]
type = Explod
trigger1 = animelem = 4
anim = 3206
ID = 1317
pos = -20,-5
postype = p1
facing = -1
bindtime = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1315, TargetBind]
type = TargetBind
trigger1 = animelem = 1
pos = 0,0

[State 1315, ChangeState]
type = ChangeState
trigger1 = time > 30
value =  1316
ctrl = 0

[Statedef 1316]
type    = C
movetype= A
physics = C
anim = 1316
velset = 0,0
sprpriority = 1
juggle = 0

[State 1316, SprPriority]
type = SprPriority
trigger1 = animelem = 1
value = -1

[State 1316, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 171,6

[State 1316, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
guardflag = MA
getpower = 0,0
givepower = 0,0
SprPriority = -5
animtype = light
air.animtype = light
damage = 10
pausetime = 0,0
sparkno = 1
sparkxy = -40,0
hitsound = S172,8
guardsound = 6,0
ground.type = High
ground.slide = 20
ground.hit = 20
air.hittime = 20
hittime = 20
ground.velocity = -8,-2
air.velocity = -8,-2
kill =1
fall = 1

[State 1316, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value =  11
ctrl = 1

[Statedef 1320]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 1320, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1320, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1320

[State 1320, SelfState]
type = SelfState
trigger1 = enemynear, name = "Abomination" && enemynear, stateno != 1310
value = 5100
ctrl = 0

[Statedef 1330]
type    = A
movetype= A
physics = N
velset = 0,3
poweradd = 0
sprpriority = 1

[State 1330, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 1330

[State 1330, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -10
Y = 40

[State 1330, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.3

[State 1330, LifeAdd]
type = LifeAdd
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = -40
kill = 0

[State 1330, SelfState]
type = changestate
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 1340
ctrl = 0

[Statedef 1340]
type    = A
movetype= H
physics = N
velset = 0,0
poweradd = 0
sprpriority = 1

[State 1340, PosSet]
type = PosSet
trigger1 =  time = 0
y = 0

[State 1340, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0)
value = 1340

; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Hyper Attacks
; 
; Hyper 1 (QCF + PP) -- state 3000
;   hyper 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper 1
;---------------------------------------------------------------------------
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 0

[State 3000, Explod]
type = Explod
trigger1 = time = 1
anim = 3002
ID = 3000
pos = 0,0
postype = p1
bindtime = 20
removetime = 20
scale = 1,1
sprpriority = 10
ontop = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 5
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 25
Time = 40
pos = 100,-68
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = AnimElem = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = AnimElem = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = AnimElem = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3000,0
channel = 5

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "Blast"
ID = 3001
stateno = 3001
pos = 110,-70
postype = p1
bindtime = -1
size.shadowoffset =0

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3001]
type = A
movetype = A
physics = N
anim = 3001
velset = 0,0
sprpriority = 99

[State 3001, PosSet]
type = PosSet
trigger1 = 1
x = parent,pos x = 110
y = parent,pos y - 70

[State 3001, BindToParent]
type = BindToParent
trigger1 = 1
time = 120
pos = 108,-70

[State 3001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3001, PlaySnd]
type = PlaySnd
triggerall = time = 40
trigger1 = timemod = 12,1
value = 10,10
channel = 4

[State 5304, color]
type = palFX
trigger1 = time != 0
add = 99,195,55
mul = 130, 255, 50
sinadd = 0,50,10,15
time = 70

[State 3001, HitDef]
type = HitDef
trigger1 = timemod= 2,1
attr = S, HA
damage = 3,1
guardflag = MA
pausetime = 0,0
hitsound = S9,2
guardsound = -1
sparkno = S6000
sparkxy = 0,floor((-60+ random/10))
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,0
guard.velocity = -5
air.velocity = -4,-1
airguard.velocity = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0
P2stateno =5304

[State 3001, StopSnd]
type = StopSnd
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000
channel = 1

[State 3001, DestroySelf]
type = DestroySelf
trigger1 =  animtime = 0
trigger2 = parent, anim != 3000

;;-------------------------------------------------------------------------
; P2 Gamma Irradiated

[Statedef 5304]
type = S
movetype= U
physics = N
velset = 0,0

[State 5304, color]
type = palFX
trigger1 = time != 0
add = 99,195,55
mul = 130, 255, 50
sinadd = 0,50,10,15
time = 370

[State 5304, LifeAdd]
type = LifeAdd
trigger1 = Timemod = 2,1
value = -8

[State 5304, PowerAdd]
type = PowerAdd
trigger1 = Timemod = 2,1
value = 18

[State 5304, anim]
type = Changeanim
trigger1 = time = 0
value = 5300

[State 5304, SelfState]
type = SelfState
trigger1 = time = 40
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 5304, End]
type = ChangeState
trigger1 = time = 15
trigger1 = Pos Y < 0
value = 15304

;-------------------------------------------------------------

[Statedef 15304]
type    = S
movetype= H
physics = N
velset = 0,2
ctrl = 0
anim = 5070

[State 15304, 0]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 15304, 1]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 15304, 2]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 15304, 3]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100
ctrl = 1

;-------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Hyper 2 = Gamma Wave

[Statedef 3100]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 60
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 0
facep2 = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time  = 7
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time  = 7
Time = 40
pos = 80,-88
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time  = 7
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time  = 7
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time  = 7
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3100,0
channel = 5

[State 3100, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 3103
ID = 3103
pos = 200,-200
removetime = 25
sprpriority = 10
vel = 0,0
accel = 0,1
ontop = 1
shadow = 0,0,0
ownpal = 1
scale = 2,2
removeongethit = 0
ignorehitpause = 1

[State 3100, Explod]
type = Explod
trigger1 = time = 60
anim = 3102
ID = 3102
pos = 180,8
removetime = -2
sprpriority = 10
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 3100, Explod]
type = Explod
trigger1 = time = 80
anim = 3102
ID = 3102
pos = 200,8
removetime = -2
sprpriority = 10
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 3100, Explod]
type = Explod
trigger1 = time = 70
anim = 3102
ID = 3102
pos = 230,8
removetime = -2
sprpriority = 10
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 3100, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1202
ID = 1202
pos = 80,8
removetime = -2
sprpriority = 0
facing = -1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1


[State 3100, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 40
value = 1

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 3
value = 172,7
channel = 4

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 4
value = 172,12
channel = 3

[State 3100, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 125
freq = 60
ampl = -4
phase = 90

[State 3100]
type = PlaySnd
trigger1 = Time = 55 -(3*var(29))
trigger2 = Time = 67 -(3*var(29)) || Time = 79 -(3*var(29)) || Time = 91 -(3*var(29))
value = 3100,1

[State 3100]
type = Helper
trigger1 = Time = 55 -(3*var(29))
stateno = 3101
id = 3101
ownpal = 1
pos = 112,0

[State 3100]
type = Helper
trigger1 = Time = 61 -(3*var(29))
stateno = 3101
id = 3101
ownpal = 1
pos = 146,0

[State 3100]
type = Helper
trigger1 = Time = 67 -(3*var(29))
stateno = 3101
id = 3101
ownpal = 1
pos = 178,0

[State 3100]
type = Helper
trigger1 = Time = 72 -(3*var(29))
stateno = 31011
id = 31011
ownpal = 1
pos = 230,0

[State 3100]
type = VarAdd
trigger1 = AnimElem = 6, >= 0
var(9) = 1
ignorehitpause = 1
persistent = 0

[State 3100, Varset]
type = varset
trigger1 = enemynear,movetype = H
fv = 29
value = 1

[State 3100]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------
;Ground Helper
[Statedef 3101]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1

[State 3101]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 3101
value = 3101

[State 3101]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3101]
type = VelSet
trigger1 = Time = 0
y = -7

[State 3101]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 3101]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 3101]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 3101]
type = HitOverride
trigger1 = 1
stateno = 31012
attr = SCA,AP
slot = 0
time = -1

[State 3101]
type = HitDef
attr = A, HP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 83,7
animtype = Medium
priority  = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 13,2
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = 2;s7702
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7,-6
air.velocity = -7,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 50,25
sprpriority = 3
air.fall = 1
fall = 1

[State 3101]
type = ChangeState
trigger1 = MoveContact
value = 31012
ignorehitpause = 1

[State 3101]
type = ChangeState
trigger1 = MoveReversed
ignorehitpause = 1
value = 31012

[State 3101]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------------------
;Ground Helper (4th hit)
[Statedef 31011]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 3
velset = 0,0
hitcountpersist = 1

[State 31011]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 3101
value = 3101

[State 31011]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 31011]
type = VelSet
trigger1 = Time = 0
y = -7

[State 31011]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 31011]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 31011]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 31011]
type = HitOverride
trigger1 = 1
stateno = 31012
attr = SCA,AP
slot = 0
time = -1

[State 31011]
type = HitDef
attr = A, HP
triggerall = parent,fvar(29)=0
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 133,15
animtype = Medium
priority  = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 13,2
sparkxy = -10,-10
hitsound   = S1,1
guardsound = S4,0
sparkno = 2;s7702
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7,-6
air.velocity = -7,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 50,25
sprpriority = 3
air.fall = 1
fall = 1

[State 31011]
type = ChangeState
trigger1 = MoveContact
value = 31012
ignorehitpause = 1

[State 31011]
type = ChangeState
trigger1 = MoveReversed
ignorehitpause = 1
value = 31012

[State 31011]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------------------------------------
;Ground End
[Statedef 31012]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 31012]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 31012]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.4

[State 31012]
type = VelSet
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 31012]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------

[Statedef 3102]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 3102]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;Hyper 3 = Ribbon Slash

[Statedef 3200]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 2
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,1
;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time  = 7
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time  = 7
Time = 40
pos = 80,-88
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time  = 7
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time  = 7
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time  = 7
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,NA
damage = 30
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S3106
sparkxy = -30,-60
hitsound = s172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = 4,0
air.type = Low
air.hittime = 5
air.velocity = 2,1
;p1stateno = 3101
kill = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = movehit
trigger1 = !moveguarded
value = 3201
ctrl = 0

[State 3200, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[StateDef 3201]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3201
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
value = 0,1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3201
trigger1 = time > 50
value = 3202

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3202
trigger1 = time > 100
value = 3203

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3203
trigger1 = time > 150
value = 3204

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim= 3204
trigger1 = time > 200
value = 3205

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 7
attr = S,HA
damage = 5,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = S3106
sparkxy = -45,floor(-70 + random/50)
hitsound = s172,10
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -0.3,0
air.type = Low
air.hittime = 5
air.velocity = -1,1
kill = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 240, HitDef]
type = HitDef
triggerall = anim = 3205
trigger1 = animelem = 3
attr = S,HA
damage = 5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S3106
sparkxy = -10,-60
hitsound = s172,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
kill = 0
p2stateno = 3202

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3205
trigger1 = animelem = 3
value = 30,0

[State 0, VelSet]
type = VelSet
triggerall = anim = 3205
trigger1 = animelem = 3
x = 20
y = 0

[State 3200, back to stance]
type = ChangeState
triggerall = anim = 3205
trigger1 = animtime = 0
value = 0
ctrl = 1

[StateDef 3202]
type    = A
physics = N
movetype = H
ctrl = 0
velset = -12,0
anim = 5002

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 70
value = -205
kill = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3200,0
channel = 5

[State 0, SelfState]
type = SelfState
trigger1 = time = 10
value = 5100

[State 0, SelfState]
type = SelfState
triggerall = time = 0
trigger1 = pos y != 0
value = 5100

;-------------------------------------------------------------------------------
;Gamma Radiation Overload
[StateDef 3300]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3300
velset = 0,0

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 6
time = 100
add = 0,155,0
mul = 156,256,156
sinadd = 10,50,10,10
;invertall = 1
color = 76

[State 0, PalFX]
type = PalFX
trigger1 = animelem = 3
time = 12
add = 0,155,0
mul = 36,156,36
sinadd = 10,150,10,2
invertall = 1
color = 76

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 10,10
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 3300,0
channel = 5

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time  = 7
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time  = 7
Time = 40
pos = 80,-88
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time  = 7
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time  = 7
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time  = 7
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3301)=0
anim = 3301
id = 3301
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -3, sense bar]
type = Explod
triggerall = animelem = 6
trigger1 = numexplod(3302)=0
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1;ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3300, VarSet]
type = VarSet
trigger1 = animelem = 6
v = 11
value = 3

[State 3300, LifeAdd]
type = LifeAdd
triggerall = life < 50
triggerall = numexplod(3302)=0
trigger1 = Timemod = 3,1
value = 18

[State 3300, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; States file for {character} -- Overrides and Common states
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   2: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; RUN_FWD
;Project X Run
; RUN_FWD
[Statedef 100]
type    = S
movetype = I
physics = N
anim = 100
sprpriority = 1
velset = 9, 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = S8,2

[State 100]
type = EnvShake
trigger1 = animelem = 4
trigger2 = animelem = 8
time = 5
ampl = -2
freq = 50
phase = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
triggerall = !Var(59)
trigger1 = command != "holdfwd";Time = 135
value = 0
ctrl = 1

[State 100, 4]
type = ChangeState
triggerall = Var(59)
trigger1 = time > 15
value = 0
ctrl = 1

; RUN_BKWD
[Statedef 105]
type    = S
movetype = I
physics = N
anim = 105
sprpriority = 1
velset = -6, 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 0,3

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 105, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S8,2

[State 105]
type = EnvShake
trigger1 = animelem = 2
time = 5
ampl = -2
freq = 50
phase = 1


[State 52, Landing Sound]
type = PlaySnd
trigger1 = Time = 18
value = S8,1

[State 52]
type = Explod
trigger1 = Time = 18
anim = F8510
sprpriority = -2
pos = -15,0
ownpal = 1



[State 100, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


 ;

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2] ;Omega Red Life Drain
type = lifeadd
triggerall = roundstate = 2
triggerall = stateno != [120,159]
triggerall = stateno != [5000,5999]
triggerall = stateno != 7730
triggerall = life < 1000
triggerall = life > 100
triggerall = var(10) < 300
trigger1 = enemynear, name = "Omega Red"
trigger1 = timemod = 20,0
value = -1

[State 0, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

[State 0, StopSnd]
type = StopSnd
trigger1 = roundstate =2
channel = 10
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno != 195
channel = 9
ignorehitpause = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno != 193
channel = 3
ignorehitpause = 1

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State 0, LifeAdd]
type = LifeAdd
triggerall = life < 1500
triggerall = life > 49
triggerall = numexplod(3301) > 0
trigger1 = timemod = 5,0
value = 1


[State 0, VarAdd]
type = VarAdd
triggerall = stateno != [120,159]
triggerall = stateno != [5000,5999]
triggerall = life < 1000
triggerall = life > 49
triggerall = var(10) < 300
trigger1 = timemod = 20,0
v =  10   ;fv =
value = 1

[State -2]
type = AfterImage
trigger1 = numexplod(3301)>0 && Time%80 = 0
time = 80
ignorehitpause = 1
PalBright = 0, 0, 0
PalContrast = 55,250,50
PalAdd = 0, 50, 0
PalMul = 1,1,1
trans = none
Length = 20
FrameGap = 4

[State -2, Set Powered Up Attack]
type = AttackMulSet
trigger1 =  var(11) = 3
value = 1.1

[State -2, Set Powered Up Attack]
type = AttackMulSet
trigger1 =  var(11) = 0
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = var(11)!= 0 && numexplod(3301) = 0
v = 11
value = 0

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3301)>0
trigger1 = lose
id = 3301

[State 0, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3302)>0
trigger1 = lose
id = 3302

[State -2, VarSet]
type = VarSet
trigger1 = ctrl && var(41) = 1
v = 41
value = 0

[State -2, gethits]         ; custom gethit sounds
type = PlaySnd
triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
trigger1 = anim = 5002  ; standing hard hit high
trigger2 = anim = 5012  ; stand hard hit low
trigger3 = anim = 5022  ; crouching hard hit
trigger4 = anim = 5030  ; air hit
trigger5 = anim = 5070  ; tripped
persistent = 0
value = 4,0


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
[State -3, Landing Dust]
type = Explod
triggerall =  NumExplod(60) < 1
triggerall = Time = 3
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fdw land
trigger3 = StateNo = 106 ;Run-back land
trigger4 = PrevStateNo = 52 && StateNo = 11 ;Jump land/crouch
persistent = 0
ID = 60
anim = F8510;60
postype = p1
pos = 0,0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -2
ownpal = 1

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1 && Var(20) != 2
trigger1 = StateNo = 52 ;Jump land
trigger2 = StateNo = 101 ;Run-fwd land
trigger3 = StateNo = 106 ;Run-back land
value = 8, 2

; desperation quote
[State -3, PlaySnd]
type = PlaySnd
trigger1 = (Life <= 150) && (var(50) = 0)
value = S11,1

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1
