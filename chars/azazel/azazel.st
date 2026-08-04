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
value = S7,1
volume=255

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

;[State 175,0]
;type = PlaySnd
;trigger1 = Time = 0
;value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
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

[State 180,Winpose decider]
type = ChangeState
trigger1 = Time = 0
value = 181 + ((Random * 4) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose #1 - Trash Talk
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[state 181]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1 + ((Random * 2) / 1000)
volume = 255

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,175]
flag = RoundNotOver

;-----------------------
; Winpose #2 - Should Have Run Away
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[state 182]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

;"Should have run away" Talk
[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,4
volume = 255

;Bamf! Helper
[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

;Bamf! Sound Effect
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S9,2

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

;-----------------------
; Winpose #3 - Onward to Adventure!
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 13
helpertype = normal ;player
stateno = 1010
pos = -90,0
postype = p1    ;p2,front,back,left,right
facing = -1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 182,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,5
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S9,2

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = RoundNotOver

;-----------------------
; Winpose #4 - Need Help?
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[state 184]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 184,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,3
volume = 255

[State 184,1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 3) / 1000)  ;change the 1 to however many intros you have

;-----------------------
; Intro #1 - Cloak Intro
[Statedef 191]
type = S
ctrl = 0
anim = 190
;velset = 0,0

[State 0, 2]
type = AssertSpecial
trigger1 = time = [0, 150]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = time = 20
value = S4,1 + ((Random * 2) / 1000)  ;change the 1 to however many intros you have
volume = 255

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 194
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 191
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -7,-4
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Intro #2 
[Statedef 192]
type = S
ctrl = 0
anim = 190
;velset = 0,0

[State 0, 2]
type = AssertSpecial
trigger1 = time = [0, 150]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = time = 20
value = S4,1 + ((Random * 2) / 1000)  ;change the 1 to however many intros you have
volume = 255

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 194
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 191
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = -7,-4
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Intro #3 - Bamf! Appear
[Statedef 193]
type = S
ctrl = 0
anim = 193
;velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0, 250]
flag = intro

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, Helper]
type = Helper
trigger1 = time = 56
helpertype = normal ;player
stateno = 1010
pos = 0,-80
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Bamf PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S9,2

[State 0, landing sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = S4,6
volume = 255

[State 0, Explod]
type = Explod
trigger1 = time = 70
anim = 60
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2

[State 600, EndState]
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------
; Intro #4 - Prof. X
[Statedef 194]
type = S
ctrl = 0
anim = 0

[State 0, 2]
type = AssertSpecial
trigger1 = time = [0, 225]
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 4,4
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 175
value = 4,5
volume = 255

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 275
value = 0

;---------------------------------------------------------------------------
;Taunt - Praying
[StateDef 195]
anim = 195
ctrl = 0
type = C

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S11,1 + ((Random * 3) / 1000)
volume = 255

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = s2,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-75
animtype = Light
ground.type = High
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -1
guard.velocity = -0.5
air.velocity = -2,-2

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
juggle = 4
velset = 0,0
poweradd = 35

[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = s2,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
juggle = 4
physics = S
velset = 0,0
poweradd = 65

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 220, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 65
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = s2,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,-50
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
juggle = 4
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
hitsound = s2,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-50
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
juggle = 4
physics = S
velset = 0,0
poweradd = 45

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 45
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = s2,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-80
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
juggle= 4
physics = S
velset = 0,0
poweradd = 75

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 250, HitDef]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
damage = 75
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = s2,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,-50
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
juggle = 4
velset = 0,0
poweradd = 20

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 30
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6,6
hitsound = s2,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-40
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
juggle = 4
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 45
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = s2,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-10
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -10
air.velocity = -3,-5

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
juggle = 4
physics = C
velset = 0,0
poweradd = 65

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, NA
damage = 40
guardflag = L
pausetime = 9,9
hitsound = s2,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,-40
animtype = UP
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
juggle= 4
physics = C
velset = 0,0
poweradd = 25

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 20
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 6,6
hitsound = s2,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-15
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
juggle = 4
velset = 0,0
poweradd = 30

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
damage = 45
hitflag = MAFD
guardflag = L
priority = 3, Hit
pausetime = 8,8
hitsound = s2,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-30
animtype = Hard
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,-2

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
juggle = 4
physics = C
velset = 0,0
poweradd = 25

[State 0, Explod]
type = Explod
;triggerall= vel x !=0
trigger1= time = 1
anim = 918
ID = 918
pos = 20,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, VelSet]
type = VelSet
trigger1 = time = 4
x = 20
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 12
x = 5
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 14
x = 0
y = 0

[State 450, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
hitflag = M
damage = 75
guardflag = L
priority = 3, Hit
pausetime = 10,10
hitsound = s2,2
guardsound = 6,0
sparkno = 2
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 25

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 25
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = s2,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
juggle = 4
physics = A
poweradd = 45

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 45
guardflag = MA
priority = 3, Hit
hitflag = MAF
pausetime = 8,8
hitsound = s2,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-50
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 75

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 620, hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,10
sparkno = 2
sparkxy = -10,-40
hitsound = s2,2
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
air.fall = 1
guard.kill = 0

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 22

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = A, NA
damage = 22
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
hitsound = s2,0
guardsound = 6,0
sparkno = 0
sparkxy = 0,-40
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
juggle = 4
type = A
movetype = A
physics = A
poweradd = 65

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = A, NA
damage = 65
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8,8
hitsound = s2,1
guardsound = 6,0
sparkno = 1
sparkxy = 0,-40
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -1,((vel y)-.2)

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
juggle= 4
movetype = A
physics = A
poweradd = 92

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 650, hitdef]
type = HitDef
trigger1 = animelem = 6
attr = A, NA
damage = 80
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -10,-40
hitsound = s2,2
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
air.fall = 1
guard.kill = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;===============================================================================
;Throws Ahead

;===============================================================================
;TELEPORT THROW
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 801

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
hitsound = S3,1
p2facing = 1
p1stateno = 801
p2stateno = 802
sprpriority = 1

[State 0, EndState]
type = ChangeState
trigger1 = (MoveContact = 0) && (AnimTime = 0)
value = 0
ctrl = 1

;Opponent has been grabbed (start throwing animation)
[Statedef 801]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1
volume = 20

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1
time = 30
pos = 10,0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = 1
time = 34
pos = 40,60

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = -1
time = 34
pos = 40,60

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[state 0, 2]
type = posadd
trigger1 = time = 15
x = -80
y = -150

[State 0, TargetState]
type = TargetState
trigger1 = time = 35
value = 5050

[State 0, EndState]
type = ChangeState
trigger1 = time = 35
value = 803
ctrl = 1

;Character Being Thrown
[Statedef 802]
type    = S
movetype= H
physics = N
sprpriority = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, ChangeAnim]
type = ChangeAnim2
trigger1 = time = 1
value = 1000

[State 0, VelSet]
type = VelSet
trigger1 = enemy, stateno = 3300
x = 0
y = 0

[State 0, SelfState]
type = SelfState
triggerall = enemy, stateno != [3300, 3340]
trigger1 = (enemy, stateno != [800,801])
value = 5000


;Kick Them to the ground!
[StateDef 803]
anim = 800
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 80
guardflag = HA
priority = 4
pausetime = 8, 10
sparkno = 2
sparkxy = -10,-40
hitsound = s2,2
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
getpower = 35,5
givepower = 25, 15
air.fall = 1
guard.kill = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;===============================================================================
; Tail Throw
;===============================================================================
;Begin Grabbing Opponent
[Statedef 850]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 850
juggle  = 0
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 850, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 850, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, NT
hitflag = M
priority = 5, Miss
ground.type = low
sparkno = -1
hitsound = -1
guardsound = 6,0
pausetime = 0,20
;p2facing = 1
p1stateno = 851
p2stateno = 852
snap = 50,0
sprpriority = 1

[State 850, ChangeState]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Tail Whip Throw Motion
[Statedef 851]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 5
anim = 851

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 851, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S3,1
persistent = 0

[State 851, PlaySnd]
type = PlaySnd
trigger1 = time = 12
value = S0,2
freqmul = 0.5

[State 851, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 851, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = -25,0

[State 851, TargetBind]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = -30,-15

[State 851, TargetBind]
type = targetstate
trigger1 = animelem = 3
value = 853

[State 851, ChangeState]
type = ChangeState
trigger1 = backedgedist <= 0 && animtime = 0 && Target,Vel X > -10
value = 101
ctrl = 1

[State 851, ChangeState]
type = ChangeState
trigger1 = backedgedist > 0 && animtime = 0
value = 0
ctrl = 1


;Character Being Thrown
[Statedef 852]
type    = S
movetype= H
physics = S
velset  = 0,0
anim = 852

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 852

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 0, Turn]
type = Turn
trigger1 = animelem = 1
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
[Statedef 853]
type    = A
movetype= H
physics = A
velset = -10,-5

[State 853, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 853

[State 853, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
ignorehitpause = 1

[State 853, SelfState]
type = SelfState
trigger1 = command = "recovery" && time <= 8
value = 854
ignorehitpause = 1
persistent = 0

[State 853, LifeAdd]
type = LifeAdd
trigger1 = time = 10
trigger2 = backedgedist <= 0
value = ceil(-100-random/20)

[State 853, SelfState]
type = SelfState
trigger1 = time >= 10
trigger2 = backedgedist <= 0
value = 5050

;---------------------------------------------------------------------------
[Statedef 854]
type    = S
movetype= I
physics = S
velset = -2,-3

[State 854, SelfState]
type = SelfState
trigger1 = time = 0
value = 5210
ctrl = 0

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

;---------------------------------------------------------------------------
; Triangle Jump
[Statedef 7730]
type = A
movetype = I
physics = N
anim = 7730
;velset = -2*Vel X,-7
ctrl = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 1430,0

[State 7740, loclcamera]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,floor(pos y)
;ignorehitpause =
;persistent =


[State 0, VelSet]
type = VelSet
trigger1 = command != "holdfwd" && time > 10
x = 6
y = -5

;[State 0, VelSet]
;type = VelSet
;trigger1 = command = "holdup"
;y = -3

;[State 0, VelSet]
;type = VelSet
;trigger1 = command = "holddown"
;y = 3

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = command = "holdup" && anim !=  7732
;value =7732

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = command = "holddown" && anim !=  7733
;value =7733

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = command != "holddown" && command != "holdup"
;value =7730

[State 0, VelSet]
type = VelSet
trigger1 = anim = 7730
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = 1
x = -1*(backedgebodydist)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 =  vel x != 0
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A         ;A,C,S,N

[State 600, EndState]
type = Changeanim
trigger1 =  vel x != 0
value = 7735
ctrl = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 7735
x = 6
y = -9

[State 600, EndState]
type = ChangeState
trigger1 = anim = 7735
trigger2 = (pos y > -5); && prevstateno != 105
value = 50
ctrl = 1

;----- begin of Hyper Effects Helpers-----
;;;;;###################################################################################
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

;===============================================================================
;BAMF1
[StateDef 1000]
type = S
movetype = A
physics = S
poweradd= 60
anim = 1000
ctrl = 0
velset = 0,0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0,]
type = Posset
trigger1 = time = 25
Triggerall = Facing = 1
x = -320
y = -100

[State 0,]
type = Posset
trigger1 = time = 25
Triggerall = Facing = -1
x = 320
y = -100

[State 0,]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 1000

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;BAMF2
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Posadd]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = -100

[State 0, Posadd]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 9801

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;BAMF3
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = -100

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = Turn
trigger1 = time = 25

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 9801

[State 0, crtlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;BAMF4
[Statedef 1003]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = -320
y = 0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320
y = 0

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 0, 1]
type = Changeanim
trigger1 = time = 39
value = 47

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, 1]
type = Changestate
trigger1 = time = 45
value = 0

;===============================================================================
;BAMF5
[Statedef 1004]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 2000, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 2000, 3]
type = velset
trigger1 = time = 25
x=0
y=0

[State 2000, 4]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = 0

[State 2000, 5]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = 0

[State 2000, 6]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 2000, 7]
type = Changeanim
trigger1 = time = 39
value = 47

[State 2000, 8]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 2000, 9]
type = ctrlset
trigger1 = time = 38
value = 1

[State 2000, 10]
type = Changestate
trigger1 = time = 45
value = 0


;===============================================================================
;BAMF6
[Statedef 1005]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 2000, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 2000, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = 0

[State 2000, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = 0

[State 2000, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = S

[State 2000, 1]
type = Changeanim
trigger1 = time = 39
value = 47

[State 2000, 1]
type = turn
trigger1 = time = 25

[State 2000, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 2000, 1]
type = Changestate
trigger1 = time = 45
value = 0


;===============================================================================
;Air_BAMF1
[Statedef 1006]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = -320
y = 0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320
y = 0

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 47

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 0

;===============================================================================
;Air_BAMF2
[Statedef 1007]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = 0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -200
y = 0

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 47

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 0

;===============================================================================
;Air_BAMF3
[Statedef 1008]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320
y = 0

[State 0, Posset]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320
y = 0

[State 0, P2Turn]
type = Turn
trigger1 = time = 25

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Air_BAMF4
[Statedef 1009]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = -320

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = 320

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Air_BAMF5
[Statedef 1011]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 200

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -200

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Air_BAMF6
[Statedef 1012]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0 
x = 0
y = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S9,1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, 0]
type = posadd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x=-15

[State 0, 1]
type = velset
trigger1 = time = 25
x=0
y=0

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = 1
x = 320

[State 0, 1]
type = Posset
trigger1 = time = 25
triggerall = facing = -1
x = -320

[State 0, P2Turn]
type = turn
trigger1 = time = 25

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, 1]
type = ctrlset
trigger1 = time = 38
value = 1

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;Teleport Attack
[statedef 1100]
type = A
movetype = A
physics = S
anim = 1100
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2
volume = 20


[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 919
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
ownpal = 1
sprpriority = -1
removeongethit = 0


[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Helper]
type = Helper
trigger1 = time = 4
helpertype = normal ;player
stateno = 1010
pos = -10,20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Posset]
type = Posset
trigger1 = time = 1
x = 10
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = S9,1
ignorehitpause = 1

[State 0, ]
type = Gravity
trigger1 = time >= 12
ignorehitpause = 0

[State 0, ]
type = VelSet
trigger1 = time = [12,22]
x = 10

[State 0, ]
type = VelSet
trigger1 = time = [12,17]
y = -1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, HitDef]
type = Hitdef
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = diagup
air.animtype = hard
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 80,5
sparkno = 2
guard.sparkno = 41
sparkxy = 10,-40
hitsound   = 5,1
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
guard.slide = 5
ground.hit = 20
air.hittime = 20
ground.velocity = 0,-3
guard.velocity = -10
air.velocity = -1,-2
airguard.velocity = -8,-2
sprpriority = 1
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0 && time > 12
value = 1110
ctrl = 0

;===============================================================================
;Teleport Attack End
[statedef 1110]
type = C
movetype = I
physics = S
anim = 1110
velset = 10,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;===============================================================================
;Sword Attack1
[statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
poweradd = 50
velset = 6,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S5,1+random%3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S13,1

[State 0, Posset]
type = Posset
trigger1 = time = 1 && P2BodyDist X > 24
;Triggerall = Facing = 1
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime = 10,10
animtype = heavy          ;light,medium,hard,back,up,diagup
air.animtype = heavy
damage = 60,0
sparkno = S9993
sparkxy = -20,-60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = trip
ground.slide
ground.hit
air.hittime = 20
ground.velocity = -6,-2
air.velocity = 0,0
sprpriority = 2
fall = 1
fall.recover = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 52
ctrl = 1

;===============================================================================
;Sword Attack2
[statedef 1210]
type = S
movetype = A
physics = S
anim = 1210
poweradd = 50
velset = 6,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S13,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 8
value = S5,1+random%3

[State 0, Posset]
type = Posset
trigger1 = time = 1
y = 0

[State 0, Explod]
type = Explod
trigger1 = animtime = 0
anim = 1230
pos = -40,-40
postype = p1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermove = 0
sprpriority = 1
ontop = 1
removeongethit = 0
velocity = 0, 4

[State 0, Posset]
type = Posset
trigger1 = time = 1 && P2BodyDist X > 24
;Triggerall = Facing = 1
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 4
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime= 4,24
animtype = medium
air.animtype = medium
damage = 40,0
sparkno = S9993
sparkxy = -30,-60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = high
ground.velocity = -1,0
air.velocity = 0,0
sprpriority = 2
fall = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 7
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime = 4,10
animtype = heavy
air.animtype = heavy
damage = 40,0
sparkno = S9994
sparkxy = -30,-60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = heavy
ground.slide
ground.hit
air.hittime = 20
ground.velocity = -6,-1
air.velocity = -6,-1
sprpriority = 2
fall = 1
fall.recover = 0

[State 0, landing sound]
type = PlaySnd
trigger1 = animelem = 7
value = S8,1
volume = 255

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 8
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;===============================================================================
;Sword Attack3
[statedef 1220]
type = S
movetype = A
physics = S
anim = 1220
velset = 6,0
poweradd = 50
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 8
trigger3 = animelem = 14
value = S5,1+random%3


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S13,1

[State 0, Posset]
type = Posset
trigger1 = time = 1 && P2BodyDist X > 24
;Triggerall = Facing = 1
x = 0
y = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime= 4,24
animtype = medium
air.animtype = medium
damage = 40,2
sparkno = S9993
sparkxy = -20,-60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = high
ground.velocity = -1,0
air.velocity = 0,0
sprpriority = 2
fall = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 9
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime= 4,24
animtype = low
air.animtype = low
damage = 40,2
sparkno = S9994
sparkxy = -30,-60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = low
ground.velocity = -1,0
air.velocity = 0,0
sprpriority = 2
fall = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem = 15
attr = S, SP
hitflag = MAF
guardflag = MA
pausetime = 8,12
animtype = heavy
air.animtype = heavy
damage = 45,0
sparkno = S9993
sparkxy = -30,-60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = heavy
ground.slide
ground.hit
air.hittime = 20
ground.velocity = -6,-1
air.velocity = -6,-1
sprpriority = 2
fall = 1
fall.recover = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================================================================
;BAMF! Effect Helper
;===============================================================================
; Special Helper - Bamf! effect
[StateDef 1010]
type = A
movetype = A
physics = C
anim = 1000
ctrl = 0

[State 0, Explod] ;Purple Light Effect
type = Explod
triggerall = parent, palno != 5
trigger1 = time=0
anim = 9991
pos = 0,-50
postype = p1  ;p2,front,back,left,right
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

[State 0, Explod] ;Orange Light Effect
type = Explod
triggerall = parent, palno>4
trigger1 = time=0
anim = 9992
pos = 0,-50
postype = p1  ;p2,front,back,left,right
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

[State 0, Explod] ;Cloud Effect
type = Explod
trigger1 = time=0
anim = 1012
pos = 0,0
postype = p1  ;p2,front,back,left,right
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

[State 1010, DestroySelf]
type = DestroySelf
trigger1 = parent, AnimTime = 0

;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes) (taken with permission from McCready's StrongGuy char)
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

;[State 8900, 2]
;type = Explod
;triggerall = (NumExplod(8900) < 1)
;trigger1 = Time = 0
;persistent = 0
;anim = 8900
;ID = 8900
;postype = left
;pos = 0, 0
;velocity = 0, 0
;accel = 0, 0
;removetime = -2
;sprpriority = -4
;bindtime = -1
;ontop = 1
;ownpal = 1
;supermovetime = 1000
;pausemovetime = 1000
;ignorehitpause = 1

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

;---------------------------------------------------------------------------
;K.O.?
[Statedef 8901]
type = S
movetype = I
physics = N
anim = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S1,2

;---------------------------------------------------------------------------
; States file for -- Hypers
;---------------------------------------------------------------------------
; Vars:
;  0: for Super Jump (0=vertical, 1=forward, -1=backward)
;  1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
;  Helpers:
;  0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper Attacks
;---------------------------------------------------------------------------

; Hyper 1 - Buccaneer Hyper
[Statedef 3000]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3000                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 11
value = S5,1+random%3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 16
value = S0,2

[State 0, AfterImage]
type = AfterImage
trigger1 = time = 6
time = 40
length = 180
framegap = 15
trans = add1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S13,1
volume=255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S12,1
volume=255

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
;anim =-1;s3012
pos = 18,-50
sound = S8889,0
poweradd = -1000
movetime = 0


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


;------------End of Hyper Effects

[State 0, VelSet]
type = VelSet
trigger1 = time = 10
x = 5
y = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 3)
trigger2 = (animelem = 12)
attr = S, HA
damage = 21, 8
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 15
sparkno = S8310+random%1
sparkxy = -30, -60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5, 4
ground.type = High
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = -7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
kill = 0
getpower = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 7)
attr = S, HA
damage = 21, 8
animtype = low
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 15
sparkno = S8310+random%1
sparkxy = -30, -60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5, 4
ground.type = low
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = -7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
kill = 0
getpower = 0

[State 0, HitDef]
type = HitDef
trigger1 = animelem =17
attr = C, NA
damage = 30
guardflag = MA
hitflag = MAF
pausetime = 5,5
hitsound = s2,2
guardsound = 6,0
sparkno = S8210+random%1
sparkxy = -30,-20
animtype = UP
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11
fall = 1
air.recover = 0
kill = 0
getpower = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && movehit
value = 3010
ctrl = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 65
x = 0
y = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 19 && movehit
helpertype = normal ;player
stateno = 1010
pos = 15,5
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove
ontop = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && !movehit
value = 0
ctrl = 1

; Hyper 1 - Buccaneer Contintued
[Statedef 3010]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3010                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = 1
x = -100
y = -65

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = -1
x = 100
y = -65

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 7
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S9,2
volume = 20

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, hitdef]
type = HitDef
trigger1 = animelem = 3
attr = A, NA
damage = 50
guardflag = MA
hitflag = MAF
priority = 4
pausetime = 9, 15
sparkno = S8310+random%1
sparkxy = -30,-60
hitsound = S2,2
guardsound = S3,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15,5
ground.cornerpush.veloff = -30
air.velocity = -8,10
air.fall = 1
guard.kill = 1
getpower = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;======================================================================
;======================================================================
; Hyper 2 - Teleport Hyper
[Statedef 3100]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3100                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S12,4
volume=255

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 80
;anim =-1;s3012
pos = 20,-30
sound = S8889,0
poweradd = -1000
movetime = 0


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


;------------End of Hyper Effects


[State 0, ]
type = VelSet
trigger1 = time = 12
x = 3

[State 0, ]
type = VelSet
trigger1 = movecontact || animtime = 0
x = 0

[State 420, HitDef]
type = HitDef
trigger1 = animelem = 3
attr = C, HA
hitflag = MAF
damage = 25
guardflag = MA
pausetime = 5,5
hitsound = s2,2
guardsound = 6,0
sparkno = S8200+random%3
sparkxy = 0,-40
animtype = UP
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 1,-12
guard.velocity = 0
air.velocity = 0,-11
fall=1
air.recover = 0
fall.recover = 0
kill = 0
getpower = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && movehit
value = 3110
ctrl = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0 && !movehit
value = 0
ctrl = 1

;======================================================================
;======================================================================

; Hyper 2 - Teleport Hyper continued
[Statedef 3110]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3110                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 0

;[State 0, ]
;type = EnvColor
;triggerall = movehit
;trigger1 = (animelem = 3)
;trigger2 = (animelem = 7)
;trigger3 = (animelem = 13)
;trigger4 = (animelem = 19)
;trigger5 = (animelem = 24)
;time = 2
;value = 255,255,255
;under = 0
;ignorehitpause = 1
;persistent = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 2 ;Strong Punch
time = 2
pos = 20,-6

[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 8 ;low kick
time = 2
pos = -15,-10

[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 13 ;med punch
time = 2
pos = -65,15

[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 19 ;uppercut
time = 2
pos = 10,-15


[State 0, TargetBind]
type = TargetBind
triggerall = movecontact
trigger1 = animelem = 24 ;final kick
time = 2
pos = 25,15

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 6
trigger2 = time = 36
trigger3 = time = 66
trigger4 = time = 83
trigger5 = time = 106
value = 9,2

[State 0, Helper]
type = Helper
trigger1 = time = 1 ;uppercut1
trigger2 = time = 30 ;lowkick
trigger3 = time = 58 ;med punch
trigger4 = time = 83
trigger5 = time = 106
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, Helper]
type = Helper
trigger1 = time = 8 ;strong punch
trigger2 = time = 39 ;low kick end
trigger3 = time = 68 ;med punch end
trigger4 = time = 85
trigger5 = time = 108
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, PosSet] ;Strong Punch
type = PosSet
trigger1 = time = 7 && facing = 1
x = -30
y = -200

[State 0, PosSet] ;Low Kick
type = PosSet
trigger1 = time = 38 && facing = 1
x = 100
y = -20

[State 0, PosSet] ;Med Punch
type = PosSet
trigger1 = time = 67 && facing = 1
x = 55
y = -200

[State 0, PosSet] ;Uppercut
type = PosSet
trigger1 = time = 84 && facing = 1
x = -60
y = 0

[State 0, PosSet] ;Final Kick
type = PosSet
trigger1 = time = 107 && facing = 1
x = -15
y = -170

[State 0, PosSet] ;Strong Punch
type = PosSet
trigger1 = time = 7 && facing = -1
x = 30
y = -200

[State 0, PosSet] ;Low Kick
type = PosSet
trigger1 = time = 38 && facing = -1
x = -100
y = -20

[State 0, PosSet] ;Med Punch
type = PosSet
trigger1 = time = 67 && facing = -1
x = -55
y = -200

[State 0, PosSet] ;Uppercut
type = PosSet
trigger1 = time = 84 && facing = -1
x = 60
y = 0

[State 0, PosSet] ;Final Kick
type = PosSet
trigger1 = time = 107 && facing = -1
x = 15
y = -170

[State 0, hitdef] ;Strong Punch
type = HitDef
trigger1 = animelem = 3
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = S8200+random%3
sparkxy = -10,-40
hitsound = S2,0+random%2 
guardsound = 6,0
animtype = Med
air.velocity = -1,4.5
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower = 0

[State 0, hitdef] ;Low Kick
type = HitDef
trigger1 = animelem = 8
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = S8200+random%3
sparkxy = -10,-40
hitsound = S2,0+random%2 
guardsound = 6,0
animtype = up
air.velocity = 1,-11
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower = 0

[State 0, hitdef] ;Med Punch
type = HitDef
trigger1 = animelem = 12
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = S8200+random%3
sparkxy = -10,-40
hitsound = S2,0+random%2 
guardsound = 6,0
animtype = med
air.velocity = 0,5
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower = 0

[State 0, hitdef] ;Uppdercut
type = HitDef
trigger1 = animelem = 19
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = S8200+random%3
sparkxy = -10,-40
hitsound = S2,0+random%2 
guardsound = 6,0
animtype = up
air.velocity = -2,-10
air.fall = 1
fall.recover = 0
air.recover = 0
kill = 0
getpower= 0

[State 620, hitdef] ;Final Kick
type = HitDef
trigger1 = animelem = 24
attr = A, HA
guardflag = MA
hitflag = MAF
damage = 40
priority = 4
pausetime = 8, 10
sparkno = S8200+random%3
sparkxy = -10,-40
hitsound = S2,0+random%2 
guardsound = 6,0
animtype = heavy
air.velocity = -8,10
air.fall = 1
fall.recover = 0
air.recover = 0
getpower = 0

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1

;======================================================================
;======================================================================

; Hyper 3 - Now You See Me...
[Statedef 3200]
type = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype = A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                    ;Set velocity (x,y) (Def: no change)
ctrl = 0                      ;Set ctrl (Def: no change)
anim = 3200                   ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 3220
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 99
pausemove = 99
removeongethit = 1

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 90
;anim =-1;s3012
pos = 15,-15
sound = S8889,0
poweradd = -1000

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


;------------End of Hyper Effects

[State 0, PlaySnd] ;Be on your guard
type = PlaySnd
trigger1 = Time = 0
value = S12,2
volume = 255
ignorehitpause = 1

;[State 0, PosSet]
;type = PosSet
;trigger1 = animelemno(0) > 2 && !inGuardDist
;x = InGuardDist

[State 0, VelSet]
type = VelSet
triggerall= p2bodydist x > 30
trigger1 = animelemno(0) > 2
x = 8

[State 0, 1]
type = HitDef
trigger1 = (animelem = 7)
trigger2 = (animelem = 17)
trigger3 = (animelem = 41)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 20, 2                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = S2,0+random%2                 ;Sound to play on hit
guardsound = S6, 0                ;Sound to play on guard
ground.type = Low               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12             ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 50                ;Time before opponent regains control in air
kill = 0
getpower = 0
ground.cornerpush = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 9)
trigger2 = (animelem = 21)
trigger3 = (animelem = 33)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 20, 2                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 1                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = S2,0+random%2                ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12             ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 50                ;Time before opponent regains control in air
kill = 0
getpower = 0
ground.cornerpush = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 13)
trigger2 = (animelem = 25)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 15, 2                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 6, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 2                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = S2,0+random%2                 ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12             ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 50                ;Time before opponent regains control in air
kill = 0
getpower= 0
ground.cornerpush = 0

[State 0, 1]
type = HitDef
trigger1 = (animelem = 44)
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 45, 2                   ;Damage that move inflicts, guard damage
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 5                ;Time attacker pauses, time opponent shakes
sparkno = 2                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = S2,0+random%2                 ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 12             ;Time opponent is in hit state
air.hittime  = 12
ground.velocity = -8,-8             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -10,-1           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                ;Time before opponent regains control in air
kill = 1
givepower = 11, 5
air.fall = 1
fall = 1
fall.recover = 0
getpower = 0

[State 0, AllPalFX]
type = AllPalFX
triggerall = movehit
trigger1 = (animelem = 7)
trigger2 = (animelem = 9)
trigger3 = (animelem = 13)
trigger4 = (animelem = 17)
trigger5 = (animelem = 25)
trigger6 = (animelem = 32)
trigger7 = (animelem = 36)
trigger8 = (animelem = 44)
time = 2
add = 255,255,255

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 44
x = 0
y = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animtime = 0
trigger2 = anim != 3200

[State 0, dash back]
type = ChangeState
trigger1 = animtime = 0
value = 105
ctrl = 0

;----------------------------------------------------------------------
; Hyper 4 - X2 Syndrome
[Statedef 3300]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3300                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4,0
volume = 255

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3300, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3300, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 110
pos = -10,-50
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


;------------End of Hyper Effects


[State 0, VelSet]
type = VelSet
trigger1 = time = 6
x = 6
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0
y = 0

;[State 0, SuperPause]
;type = SuperPause
;triggerall = !Var(29)
;trigger1 = movehit
;time = 3
;anim = -1
;sound = -1,-1
;movetime = 0
;poweradd = 0
;unhittable = 0
;darken = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
damage = 50, 5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 4
sparkno = 2
sparkxy = -30, -60
hitsound = s2,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = -5, -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
getpower= 0
kill = 0
fall=1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 12
x = 0
y = -100

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 12
time = 15
pos = 10,0

[State 0, Helper]
type = Helper
trigger1 = animelem = 5 && movehit
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 5 && movehit
value = 3310
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 4 && !movehit
value = 0
ctrl = 1

;--------------------------------------------------------------------
; Hyper 4 - Part 2 - Medium Kick
[Statedef 3310]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 3310
sprpriority = -20

[State 0, Helper]
type = Helper
trigger1 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

; BAMF! sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S9,1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = -1
x = -500

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = 1
x = 500

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 5
pos = -40,0

[State 0, 1]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 90, 12
animtype = Low
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 0, 0
sparkno = 1
sparkxy = -30, -60
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 50
ground.velocity = 10, -8
airguard.velocity = -1.9,-.8
air.type = Low
air.velocity = 7,-12
getpower= 0
kill = 0
fall=1

[State 0, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = movehit
time = 2
anim = -1
sound = -1,-1
movetime = 0
poweradd = 0
unhittable = 0
darken = 0

[State 0, Helper]
type = Helper
trigger1 = animtime = 0
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3320
ctrl = 0

;-------------------------------------------------------------------------
;Hyper 4 - Part 3
[Statedef 3320]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N
anim = 3320

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

; BAMF! sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = 1
x = -500

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1 && facing = -1
x = 500

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 2
time = 15
pos = 50,-20

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 6
y = -2

; BAMF! sfx
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S3,1

[State 0, TargetState]
type = TargetState
trigger1 = animelem = 3
value = 802

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 3
value = 3330
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3540
ctrl = 1

;-------------------------------------------------------------------------
;Hyper 4 - Part 4
[Statedef 3330]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S9,1
volume = 20

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1
time = 30
pos = 10,0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = 1
time = 34
pos = 40,60

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 1 && facing = -1
time = 34
pos = 40,60

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[state 0, 2]
type = posadd
trigger1 = time = 15
x = 0
y = -150

[State 0, TargetState]
type = TargetState
trigger1 = time = 35
value = 5050

[State 0, EndState]
type = ChangeState
trigger1 = time = 35
value = 3340
ctrl = 1

;-----------------------------------------------------------------------
;Hyper 4 - Part 5 - Drop 'em!
[Statedef 3340]
anim = 3330
ctrl = 0
type = S
movetype = A
physics = N

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 2
pos = 0,0

[State 0, PosAdd]
type = PosAdd
trigger1 = animtime = 0
x = 30
y = 250

[State 0, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 0, hitdef]
type = HitDef
trigger1 = time = 3
attr = S, HA
damage = 80, 5
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 8, 10
sparkno = -1
sparkxy = -10,-40
hitsound = -1,-1
guardsound = -1,-1
animtype = Med
ground.type = trip
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-1
air.velocity = 0,-1
air.fall = 1
guard.kill = 1
kill = 1
fall = 1
getpower = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3350
ctrl = 1

;--------------------------------------------------------------------------
;Hyper 4 - Part 6 - Bamf! Return
[Statedef 3350]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S9,2

[State 0, Helper]
type = Helper
trigger1 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, TeleportFacing1]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = -100

[State 0, TeleportFacing-1]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 9801

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51


;------------------------------------------------------------------
;DEMON SHIP
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3400
ctrl = 0
facep2 = 1
sprpriority = 4

[State 3060, NotHitBy]
type = NotHitBy
triggerall = anim = 3400
trigger1 = time=[0,62]
value = SCA



;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 40
;anim =-1;s3012
pos = 0,-60
sound = S8889,0
poweradd = -1000

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


;------------End of Hyper Effects

[State -2, StillCameraFX]
type=helper
triggerall = !numhelper(3420)
trigger1= animelemtime(3)=0
helpertype=normal
stateno=3420
ID=3420
pos = -40,0
postype = front
name="StillCameraFront"
ignorehitpause=1

[State -2, StillCameraFX]
type=helper
triggerall = !numhelper(3421)
trigger1= 1
helpertype=normal
stateno=3421
ID=3421
pos = 40,0
postype = back
name="StillCameraBack"
ignorehitpause=1

[State 3000, Helper]
type = Helper
triggerall = anim = 3400
trigger1 = animelemtime(3)=0
helpertype = normal ;player
name = "The Ship"
ID = 3405
stateno = 3405
pos = -280,0;ceil(70*const(size.xscale)), ceil(0*const(size.yscale))
postype = back
size.xscale = 1.4*const(size.xscale)
size.yscale = 1.4*const(size.yscale)
sprpriority = 1
facing = 1
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3400
trigger1 = animelem=1
value = S3400,0
channel = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3400
trigger1 = animelemtime(4)>20 && !numhelper(3405)
value = 3401
ignorehitpause = 1

[State AttackDone]
type=statetypeset
trigger1= anim = 3401
movetype=I

[State 200, End]
type = ChangeState
triggerall = anim = 3401
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;========================<DEMON SHIP>=============================
[Statedef 3405]
type     =A
movetype = A
physics  = N
velset=0,0
anim=3405

[State 0, PosSet]
type = Posset
triggerall = time<22
trigger1 = time=0
;x = ifelse(facing=1,-420,420)
y = -20
ignorehitpause = 1
persistent = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3000, Helper]
type = Helper
trigger1 = time = 1
helpertype = normal ;player
name = "Cannon 1"
ID = 3407
stateno = 3407
sprpriority = 1
bindtime = -1
facing = 1
ownpal = 1

[State 3000, Helper]
type = Helper
trigger1 = time = 1
helpertype = normal ;player
name = "Cannon 2"
ID = 3408
stateno = 3408
sprpriority = 1
bindtime = -1
facing = 1
ownpal = 1

[State 0, Width]
type = Width
trigger1 = 1
value = 180,0
ignorehitpause = 1
persistent = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1
persistent = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 14.7;ifelse(parent,facing=1,9,-9)
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time = 22
x = -14.7;ifelse(parent,facing=1,9,-9)
y = 0

[State 1100, Explod]
type = Explod
trigger1 = time = 0
anim = 3406
ID = 3406
pos = 0,0
scale = 1.4 * root,const(size.xscale) ,1.4 * root,const(size.yscale)
;postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
removeongethit = 1
ignorehitpause = 0
persistent = 0

[State 1500, HitDef]
type = HitDef
triggerall = time<22
trigger1 = !movecontact;Time = 0
attr = A, HP
animtype = hard
fall.animtype = hard
damage = 14,29
hitflag = MAFD
guardflag = MA
pausetime = 10,12;0,11
getpower = 0,0
sparkno = S8310+random%1
sparkxy = 0, -60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = Low
ground.hittime  = 60
ground.velocity = -8,-10.1
guard.velocity = -1;,-1
air.hittime  = 60
air.type = low
air.velocity = -8,-9.1
fall = 1
fall.recover = 0
p2facing=1
yaccel = .5
envshake.time=8
envshake.freq=60
envshake.ampl=6

[State 1500, Hit #2]
type = HitDef
triggerall = time<22
trigger1 = Movehit && (Time %4 = 0) && hitcount < 6;&& var(4)<5
attr = A, HP
animtype = hard
fall.animtype = hard
damage = 14,29
hitflag = MAFD
guardflag = MA
pausetime = 10,12;ifelse(hitcount<5,10,12),12
getpower = 0,0
sparkno = S8310+random%1
sparkxy = 0, -60
hitsound = S5,4 + ((Random * 3) / 1000)
guardsound = S5,7
ground.type = Low
ground.hittime  = 60
ground.velocity = -8,-10.1;ifelse(hitcount<5,-9,-11.9)
guard.velocity = -1
air.hittime  = 60
air.type = low
air.velocity = -8,-9.1;ifelse(hitcount<5,-9,-11.9)
fall = 1
fall.recover = 0
p2facing=1
yaccel = .5
envshake.time=8
envshake.freq=60
envshake.ampl=4

[State 910, Hitspark]
type = Helper;Explod
helpertype = normal
;triggerall = root,stateno = 1000;||root,stateno = 1010||root,stateno = 1060
trigger1 = movehit=1
;trigger1= !(target,hitshakeover)
stateno = 7020;+(random%8)
pos= ifelse(p2dist x<0, 0, ifelse(p2dist x<20, ceil(p2dist x), 225)), -25
size.xscale = 1
size.yscale = 1
bindtime = 1
sprpriority = 5
ignorehitpause = 1
persistent = 10

[State 0, ChangeState]
type = ChangeState
trigger1 = time=22 && movehit && numtarget
value = 3406
ctrl = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>22 && pos x!=[-420,420]
trigger2 = time = 60
id = 3406

[State 8999, End]
type=destroyself
;trigger1 = root,movetype=H
trigger1=time>22 && pos x!=[-420,420]
trigger2 = time = 60

;========================<DEMON SHIP ATTACK>=============================
[Statedef 3406]
type     =A
movetype = A
physics  = N
velset=0,0
;anim=3405

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1
persistent = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 130
x = -14.7;ifelse(parent,facing=1,9,-9)
y = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time>22 && pos x!=[-420,420]
trigger2 = time = 159
id = 3406

[State 8999, End]
type=destroyself
trigger1=time>22 && pos x!=[-420,420]
trigger2 = time = 159

;========================<DEMON CANNON BACK>=============================
[Statedef 3407]
type     =A
movetype = A
physics  = N
velset = 0,0
anim = 3407
sprpriority = 3

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = ceil(-10*const(size.xscale)), ceil(-29*const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno = 3406
value = 3409
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3409
trigger1 = animelem=3||animelem=9||animelem=15||animelem=21||animelem=27||animelem=33||animelem=39||animelem=45||animelem=51
value = S1203,0
channel = 2

[State 3000, Helper]
type = Helper
triggerall = anim = 3409
trigger1 = animelem=3||animelem=9||animelem=15||animelem=21||animelem=27||animelem=33||animelem=39||animelem=45||animelem=51
helpertype = normal ;player
name = "Cannon Ball"
ID = 3415
stateno = 3415
sprpriority = 3
bindtime = -1
facing = 1
ownpal = 1
size.xscale = 0.6
size.yscale = 0.7

[State 1100, Explod]
type = Explod
triggerall = anim = 3409
trigger1 = animelem=3||animelem=9||animelem=15||animelem=21||animelem=27||animelem=33||animelem=39||animelem=45||animelem=51
anim = 1204
ID = 1204
pos = 28,3
scale = .5 * root,const(size.xscale) ,.5 * root,const(size.yscale)
;postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 8999, End]
type=destroyself
trigger1=parent,time>22 && parent,pos x!=[-420,420]
trigger2 = parent, numhelper(3405) = 0

;========================<DEMON CANNON FRONT>=============================
[Statedef 3408]
type     =A
movetype = A
physics  = N
velset = 0,0
anim = 3407
sprpriority = 3

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
pos = ceil(45*const(size.xscale)), ceil(-29*const(size.yscale))
ignorehitpause = 1
persistent = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent,stateno = 3406
value = 3410
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3410
trigger1 = animelem=3||animelem=9||animelem=15||animelem=21||animelem=27||animelem=33||animelem=39||animelem=45||animelem=51
value = S1203,0
channel = 2

[State 3000, Helper]
type = Helper
triggerall = anim = 3410
trigger1 = animelem=3||animelem=9||animelem=15||animelem=21||animelem=27||animelem=33||animelem=39||animelem=45||animelem=51
helpertype = normal ;player
name = "Cannon Ball"
ID = 3415
stateno = 3415
sprpriority = 3
bindtime = -1
facing = 1
ownpal = 1
size.xscale = 0.6
size.yscale = 0.7

[State 1100, Explod]
type = Explod
triggerall = anim = 3410
trigger1 = animelem=3||animelem=9||animelem=15||animelem=21||animelem=27||animelem=33||animelem=39||animelem=45||animelem=51
anim = 1204
ID = 1204
pos = 28,3
scale = .5 * root,const(size.xscale) ,.5 * root,const(size.yscale)
;postype = p1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
ontop = 1

[State 8999, End]
type=destroyself
trigger1=parent,time>22 && parent,pos x!=[-420,420]
trigger2 = parent, numhelper(3405) = 0
;-----------------------------------
;Cannon Ball
[statedef 3415]
type    = A
movetype= A
physics = N
anim = 3415
velset = 12,-3
sprpriority = 3

[State 0, BindToParent]
type = BindToParent
trigger1 = time = 0
pos = ceil(28*const(size.xscale)), ceil(0*const(size.yscale))
time = 1
ignorehitpause = 1
persistent = 1

[State 3005, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
stateno=3416;ifelse(var(2)<14,3005,1008)
ignorehitpause=1

[State 1006, assert]
type=trans
trigger1= 1
trans=addalpha
ignorehitpause=1

[State 1500, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HP
damage = 3,4;ceil(8*root,fvar(12)),4
hitflag = MAFD
guardflag = MA
pausetime = 0,4;0,11
getpower = 0,0
hitsound = S2,3
guardsound = S6,0
sparkno = S9997
sparkxy = -10,floor(p2bodydist y)+(enemy,Const(size.mid.pos.y));-10 + 0*(var(12):=60), var(13):=floor(p2bodydist y)+(enemy,Const(size.mid.pos.y))
animtype = hard
fall.animtype = hard;Up
ground.type = Low
ground.hittime  = 60
ground.velocity = -2,-2
guard.velocity = -1;,-1
air.hittime  = 60
air.type = low
air.velocity = -2,ifelse(p2dist y<-60,-.1,-2)
p2facing=1
fall = 1
fall.recover = 0
envshake.time=8
envshake.freq=60
envshake.ampl=6
yaccel = .5

[State 910, Hitspark]
type = Helper;Explod
helpertype = normal
trigger1 = movehit=1
;trigger1= !(target,hitshakeover)
stateno = 7020;+(random%8)
pos=0,0;ifelse(p2dist x<0, 0, ifelse(p2dist x<20, ceil(p2dist x), 20)), 0
size.xscale = 1
size.yscale = 1
bindtime = 1
sprpriority = 5
ignorehitpause = 1
persistent = 3
supermovetime = 300

[state 1003]
type = playerpush
trigger1 = 1
value = 0

[State 8001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state 1003]
type = playerpush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3005,hitby]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact||moveguarded
trigger2 = frontedgedist <15
value = 3416
ctrl = 0
ignorehitpause = 1
;-----------------------------------
;Cannon Ball Explod
[statedef 3416]
type    = A
movetype= A
physics = N
anim = 3416
velset = 0,0
sprpriority = 3

[State 1100, Explod]
type = Explod
trigger1 = time = 0
anim = 3417
ID = 3417
pos = 0,0
scale = .6,.6;1.4 * root,const(size.xscale) ,1.4 * root,const(size.yscale)
;postype = p1  ;p2,front,back,left,right
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
persistent = 0


[State 1006, assert]
type=trans
trigger1= 1
trans=addalpha
ignorehitpause=1

[State 1500, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, HP
damage = 12,4;ceil(7*root,fvar(12)),4
hitflag = MAFD
guardflag = MA
pausetime = 0,4;0,11
getpower = 0,0
hitsound = S2,3
guardsound = S6,0
sparkno = S9997
sparkxy = -10,floor(p2bodydist y)+(enemy,Const(size.mid.pos.y));-10 + 0*(var(12):=60), var(13):=floor(p2bodydist y)+(enemy,Const(size.mid.pos.y))
animtype = hard
fall.animtype = hard;Up
ground.type = Low
ground.hittime  = 60
ground.velocity = -2,-2
guard.velocity = -1;,-1
air.hittime  = 60
air.type = low
air.velocity = -2,ifelse(p2dist y<-60,-.1,-2)
p2facing=1
fall = 1
fall.recover = 0
envshake.time=8
envshake.freq=60
envshake.ampl=6
yaccel = .5

[State 910, Hitspark]
type = Helper;Explod
helpertype = normal
trigger1 = movehit=1
;trigger1= !(target,hitshakeover)
stateno = 7010;+(random%8)
pos=0,0;ifelse(p2dist x<0, 0, ifelse(p2dist x<20, ceil(p2dist x), 20)), 0
size.xscale = 1
size.yscale = 1
bindtime = 1
sprpriority = 5
ignorehitpause = 1
persistent = 3
supermovetime = 300

[state 1003]
type = playerpush
trigger1 = 1
value = 0

[State 8001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3405, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256
ignorehitpause=1

[state 1003]
type = playerpush
trigger1 = 1
value = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
ignorehitpause = 1
;---------------------------------------------------------------------------
; DEMON SHIP(Camera Holder) - Front
[Statedef 3420]
type    = S
movetype= A
physics = N
sprpriority = 1
velset = 0,0
anim = 9997

[State 3010, 1]
type = Screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3010, 2]
type = PosAdd
trigger1 = FrontEdgeDist > 60
x = FrontEdgeDist - 60

[State 3010, 3]
type = DestroySelf
trigger1 = parent, numhelper(3405) = 0

;---------------------------------------------------------------------------
; DEMON SHIP (Camera Holder) - Back
[Statedef 3421]
type    = S
movetype= A
physics = N
sprpriority = 1
velset = 0,0
anim = 9997

[State 3011, 1]
type = Screenbound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3011, 3]
type = DestroySelf
trigger1 = parent, numhelper(3405) = 0

;--------------------------------------------------
;========================<TEST CAMERA CONTROL>=============================
[Statedef 8997]
type=S
velset=0,0
anim=9997

[State 0, PosSet]
type = Posset
trigger1 = time=0
x = 0;*facing
y = 0
ignorehitpause = 1
;persistent = 1

[State 0, Width]
type = Width
trigger1 = 1
value = 140,140;150
ignorehitpause = 1
persistent = 1

[State 8999, bound]
type=screenbound
trigger1= time>1
value=1
movecamera=1,1
ignorehitpause = 1

[State 8999, End]
type=destroyself
trigger1= parent,anim = 3401
trigger2 = parent,movetype=H
trigger3 = !numhelper(3405)



;------------------------------------------------------------------
;Hyper Finish Background
[Statedef 12000]
type = S
movetype = I
physics = N
anim = 12000
sprpriority = -20

[State 0, PalFXWiz] ;Purple
type = PalFX
trigger1 = 1
time = 10
add = 80,0,160
mul = 100,20,124
sinadd = 85,100,75,10
invertall = 0
color = 0

[state 12000, a1]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay
flag2 = Noshadow

[state 12000, a1]
type = assertspecial
triggerall = numexplod(12010)
trigger1 = 1
flag = NoBG
flag2 = NoFG

[State 12000, a9] ;bgscreen
type = Explod
trigger1 = !time
anim = 12000
id = 12000
pos = 0,0
postype = back
facing = 1
bindtime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = -6
scale = 1,1
removeongethit = 1
IgnoreHitPause = 1
;ownpal=1

[State 12000, a4] ;Face BG Appear
type = Explod
trigger1 = !time
anim = 12010
id = 12010
pos = 0,0
postype = back
facing = 1
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = -5;-15
scale = 1,1
removeongethit = 1
IgnoreHitPause = 1

[State 12000, a6]
type = destroyself
trigger1 = time >= 300
trigger2 = animtime = 0


;--------------------------------------------------------------------
;Hyper Finish Background 2
[Statedef 12100]
type = S
movetype = I
physics = N
anim = 12100
sprpriority = -20

[State 0, PalFXWiz] ;Gold
type = PalFX
trigger1 = 1
time = 10
add = 103,52,-35
mul = 394,276,326
sinadd = 0,0,0,1
invertall = 0
color = 256

[state 12100, a1]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay
flag2 = Noshadow

[state 12100, a1]
type = assertspecial
triggerall = numexplod(12100)
trigger1 = 1
flag = NoBG
flag2 = NoFG

[State 12100, a4] ;Excalibur BG Appear
type = Explod
trigger1 = !time
anim = 12100
id = 12100
pos = -60,-50
postype = back
facing = 0
bindtime = -1
supermovetime =999
pausemovetime =999
sprpriority = -6
scale = 1.4,1.4
removeongethit = 1
IgnoreHitPause = 1

[State 12100, a6]
type = destroyself
trigger1 = time >= 300
trigger2 = animtime = 0
;===============================================================
;Helpers
;===============================================================
;========Normal Hitspark========
[Statedef 7000]
type=A
physics=N
movetype=I
anim=7000
velset=0,0
sprpriority=4

[State 7000, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7000, Angle]
type=angleset
trigger1= !time
value=30*(random%18)

[State 7000, Scale]
type=angledraw
trigger1= time>=0 && time<10
scale= .29-(time*.029), .29-(time*.029)

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 7000, Scale]
type=angledraw
trigger1= time>=10
scale=0,0

[State 7000, Trans]
type=trans
trigger1= time>=0
trans=addalpha
alpha=256,256

[State 7000, Streaks]
type=explod
trigger1= time=1
anim=7001
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.0625+(.009*time),.0625+(.009*time)
trans=addalpha
alpha=256-(16*time),256

[State 7000, Residue]
type=explod
trigger1= time=1
anim=7002
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=12
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.19525,.19525;.3-(.02*time),.3-(.02*time)
trans=addalpha
alpha=256,256

[State 7000, Impact]
type=explod
trigger1= time=0
anim=7005
ID=3
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=12
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale=.18125-(.005*time),.18125-(.005*time);.19525-(.02*time),.3-(.02*time)
trans=addalpha
alpha=192-(16*time),256

[State 7000, End]
type=removeexplod
trigger1= time>=16

[State 7000, End]
type=destroyself
trigger1= time>=21
;========Special Hitspark========
[Statedef 7010]
type=A
physics=N
movetype=I
anim=7010
velset=0,0
sprpriority=4

[State 7000, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7000, Angle]
type=angleset
trigger1= !time
value=30*(random%18)

[State 7000, Scale]
type=angledraw
trigger1= time>=0 && time<12
scale= .37-(time*.030833), .37-(time*.030833)

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 7000, Scale]
type=angledraw
trigger1= time>=12
scale=0,0

[State 7000, Trans]
type=trans
trigger1= time>=0
trans=addalpha
alpha=256,256

[State 7000, Streaks]
type=explod
trigger1= time=1
anim=7001
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.078125+(.01125*time),.078125+(.01125*time)
trans=addalpha
alpha=256-(16*time),256

[State 7000, Residue]
type=explod
trigger1= time=1
anim=7002
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=12
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.19525,.19525;.2440625,.2440625;.3-(.02*time),.3-(.02*time)
trans=addalpha
alpha=256,256

[State 7000, Impact]
type=explod
trigger1= time=0
anim=7005
ID=3
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=12
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale=.2425-(.005*time),.2425-(.005*time);.19525-(.02*time),.3-(.02*time)
trans=addalpha
alpha=192-(16*time),256

[State 7000, End]
type=removeexplod
trigger1= time>=16

[State 7000, End]
type=destroyself
trigger1= time>=21

;------------------------------

[Statedef 7020]
type=A
physics=N
movetype=I
anim=7020
velset=0,0
sprpriority=4

[State 7000, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7000, Angle]
type=angleset
trigger1= !time
value=30*(random%18)

[State 7000, Scale]
type=angledraw
trigger1= time>=0 && time<14
scale= .45-(time*.032142), .45-(time*.032142)

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 7000, Scale]
type=angledraw
trigger1= time>=14
scale=0,0

[State 7000, Trans]
type=trans
trigger1= time>=0
trans=addalpha
alpha=256,256

[State 7000, Streaks]
type=explod
trigger1= time=1
anim=7001
ID=1
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=16
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale=.078125+(.0125*time),.078125+(.0125*time)
trans=addalpha
alpha=256-(16*time),256

[State 7000, Residue]
type=explod
trigger1= time=1
anim=7002
ID=2
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=5
removetime=12
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale=.19525,.19525;.2440625,.2440625;.3-(.02*time),.3-(.02*time)
trans=addalpha
alpha=256,256

[State 7000, Impact]
type=explod
trigger1= time=0
anim=7005
ID=3
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
sprpriority=3
removetime=12
pausemovetime=-1
supermovetime=-1

[State 7000, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale=.2425-(.005*time),.2425-(.005*time);.19525-(.02*time),.3-(.02*time)
trans=addalpha
alpha=192-(16*time),256

[State 7000, End]
type=removeexplod
trigger1= time>=16

[State 7000, End]
type=destroyself
trigger1= time>=21

;---------------------------------------------------
;Bamf Sprites
[Statedef 3600]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3601
ctrl = 0
sprpriority = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S12,6
;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 =  time = 5
Time = 45
;anim =-1;s3012
pos = 0,-75
sound = S8889,0
poweradd = -1000
movetime = 0

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 5
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 5
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 5
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1
;------------End of Hyper Effects

[State 3000]
type = ChangeState
trigger1 = animtime = 0
value = 3601
ctrl = 0

;-------------------------------------------------
;Bamf Sprites
[Statedef 3601]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3600

[State 3000,Create Bamf Sprites]
type = Helper
trigger1 = animelem = 2
trigger2 = animelem = 3
postype = back
facing = 1
stateno = 3602
ownpal = var(44)
size.xscale = 0.8
size.yscale = 0.8

;Sprite Laughter
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2 && random <= 200
value = S15,0+random%1

[State 3001]
type = ChangeState
trigger1 = Time > 150 && StateType != A
value = 0
ctrl = 1

[State 3001]
type = ChangeState
trigger1 = Time > 150 && StateType = A
value = 0
ctrl = 1

;-----------------------------------------------------
;Bamf Sprites
[Statedef 3602]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3615+random%4

[State 0, Gravity]
type = Gravity
trigger1 =1

[State 3001, PosSet]
type = PosSet
trigger1 = !time
y = 0-random%31

[State 3001, VelSet]
type = VelSet
trigger1 = !time
x = 5+random%5


[State 3001, VelSet]
type = VelSet
trigger1 = !time
y = -4-random%12

[State 3001, 2]
type = HitDef
trigger1 = movecontact = 0
attr = S, NA
animtype  = hard
damage    = floor((8*(Const(data.attack))*0.01))-floor((Const(data.attack))*(((root,Var(30)+root,Var(32))*0.1))*0.0015), 1
guardflag = MA
hitflag = MAFD
pausetime = 0,12
sparkno = S9110
guard.sparkno = S153
sparkxy = -10,0
hitsound = s2,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -1,-1
air.hittime  = 12
air.velocity = -2.5,-4.5
fall = 1
fall.yvelocity = -2
fall.recovertime = 30
down.bounce = 1
getpower = 20,0
givepower = 20, 10

[State 3001, VelSet]
type = VelSet
trigger1 = pos y >= -10
y = -8

[State 3001,3 ]
type = HitOverride
trigger1 = 1
slot = 1
time = 1
stateno = 9922
attr = SCA, NP, NA, SP, HP, SA,AA
ignorehitpause = 1

[State 3001, DestroySelf]
type = changestate
trigger1 = frontedgedist <= -15
trigger2 = time>100
value = 3622

;-------------------------------
;ÁÅ
[Statedef 3622]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9999

[State 3622, DestroySelf];Áð
type = DestroySelf
trigger1 = !time

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

;------- End of Hyper effects helpers

;===============================================================================
;Excalibur!
;===============================================================================
;Hyper Begin
[Statedef 3500]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0
volume = 10

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1000

[State 0, Explod] ;calling friends
type = Explod
trigger1 = time = 0
anim = 3500
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = -1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S12,5
volume = 255

;------------Hyper Effects-----------
;---------------------[NEW Version]---------------------
[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 5
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, superpause]
type = SuperPause
trigger1 = time = 1 ;AnimElem = 2
time = 105
sound = S10,1
pos = 8,-45
darken = 1
poweradd = -1000

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 =  time = 1
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40003)
trigger1 = time = 1
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40004)
trigger1 = time = 1
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1


;------------End of Hyper Effects

[State 0, ChangeState]
type = ChangeState
trigger1 = animelem = 3
value = 3510
ctrl = 0

;===============================================================================
;===============================================================================
;Teleport Attack
[statedef 3510]
type = A
movetype = A
physics = S
anim = 3516
poweradd = 20
velset = 0,0
ctrl = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 9,2

[State 0, Helper]
type = Helper
trigger1 = time = 0
trigger2 = time = 2
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 2000, TeleportFacing1]
type = Posset
trigger1 = time = 1
Triggerall = Facing = 1
x = 10
y = -10

[State 0, TeleportFacing-1]
type = Posset
trigger1 = time = 1
Triggerall = Facing = -1
x = 10
y = -10

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = S9,1
ignorehitpause = 1

[State 0, ]
type = Gravity
trigger1 = time >= 12
ignorehitpause = 0

[State 0, ]
type = VelSet
trigger1 = time = [12,22]
x = 10

[State 0, ]
type = VelSet
trigger1 = time = [12,17]
y = -2

[State 0, ]
type = EnvColor
trigger1 = Time >= 0 && movecontact
value = 255,255,255
time = 1
under = 0
ignorehitpause = 1
persistent = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0 && movecontact
value = 0
ignorehitpause = 1

[State 0, HitDef]
type = Hitdef
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag = MA
getpower = 0,0
givepower = 10,2
animtype = diagup
air.animtype = hard
fall.animtype = Back
priority = 7,Hit   ;Hit,Miss,Dodge
damage = 0,0
guard.pause 10,10
sparkno = 1
guard.sparkno = 41
sparkxy = 10,-40
hitsound   = 5,2
guardsound = 6,0
ground.type = High      ;Low,Trip,None
ground.slide = 20
guard.slide = 5
ground.hit = 20
air.hittime = 20
ground.velocity = 0,-3
guard.velocity = -10
air.velocity = -1,-2
airguard.velocity = -8,-2
sprpriority = 1
fall = 1
air.fall = 1
P2Stateno = 3530

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0 && time > 12
value = 3515
ctrl = 0

;===============================================================================
;"The Decider"
[statedef 3515]
type = C
movetype = I
physics = S
anim = 1120
velset = 10,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50 && P2StateNo = 3530
value = 3520
ctrl = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50 && P2StateNo != 3530
value = 12
ctrl = 1

;===============================================================================
;READY OR NOT!
[Statedef 3520]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0
poweradd = -3000                 ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 1023                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)
hitcountpersist = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 9,2

;Bamf! effect
[State 0, Helper]
type = Helper
trigger1 = time = 3
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S12,3
volume = 255

[State 0, TeleportFacing1]
type = Posadd
trigger1 = time = 15
x = -300
y = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = time = 16
time = 1
pos = 100,0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 6
value = 1000

;Rachael Summers
[State 0, Explod]
type = Explod
trigger1 = time = 55
anim = 3506
pos = -10,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = -2

;Phoenix Fireballs
[State 0, Projectile]
type = Projectile
trigger1 = time = 80
trigger2 = time = 90
trigger3 = time = 100
trigger4 = time = 110
projanim = 3507
projhitanim = 3508
offset = -20, -140
velocity = 6, 4
projremovetime = 150
attr = S, SP
damage = 50,4
sparkno = -1
sparkxy = 0, 35
hitsound = S13,0
animtype = Medium
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
sprpriority = 2
ontop = 1

;Captain Britain Appear
[State 0, Explod]
type = Explod
trigger1 = time = 25
anim = 3502
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 2

;Captain Britain ChangeAnim
[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 45
value = 3501

[State 0, VelSet]
type = VelSet
trigger1 = time = 45
x = 1
y = 0
ignorehitpause = 0

;Captain Britain Force Field
[State 0, Explod]
type = Explod
trigger1 = time = 46
anim = 3503
pos = 20,-10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 140
scale = 1,1
sprpriority = 5
ontop = 0

;Kitty Pryde Appear
[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 3509
pos = -5,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 1
ontop=1

;Kitty Pryde Attack
[State 0, Projectile]
type = Projectile
trigger1 = time = 71
projanim = 3510
projhitanim = 3511
offset = -5,0
velocity = 9, 0
projremovetime = 150
attr = S, SP
damage = 50,4
sparkno = 1
hitsound = 5,1
animtype = Medium
guardflag = MA
pausetime = 2,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
sprpriority = 1
ontop = 1

[State 0, HitDef]
type = HitDef
trigger1 = Time % 6 = 0 && Time < 150
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 25, 6                   ;Damage that move inflicts, guard damage
animtype = Medium                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 5, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 6, 9                 ;Time attacker pauses, time opponent shakes
sparkno = 2                      ;Spark anim no (Def: set above)
sparkxy = -10, -50               ;X-offset for the "hit spark" rel. to p2,
hitsound = 5,1 + ((Random * 2) / 1000)  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12            ;Time that the opponent slides back
ground.hittime  = 50             ;Time opponent is in hit state
ground.velocity = -5             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-1.5         ;X-velocity at which opponent is pushed,
air.hittime = 50                 ;Time before opponent regains control in air
kill = 0
givepower = 10, 5
ground.cornerpush = 0
envshake.time = 5
envshake.ampl = 6

;Ground Errupt
[State 0, Projectile]
type = Projectile
trigger1 = time = 95
projanim = 3514
projhitanim = 3515
offset = (time-5), 0
facing = -1
attr = S, SP
damage = 20,4
sparkno = 1
hitsound = 5,2
animtype = Light
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

;Ground Errupt 2
[State 0, Projectile]
type = Projectile
trigger1 = time = 95
projanim = 3512
projhitanim = 3513
offset = (time-5), 0
velocity = 0, 0
attr = S, SP
damage = 20,4
sparkno = 1
hitsound = 5,1
animtype = Light
guardflag = MA
pausetime = 0,9
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

;Meggan
[State 0, Explod]
type = Explod
trigger1 = time = 55
anim = 3504
pos = -15,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 0

;Birds
[State 0, Explod]
type = Explod
trigger1 = (time%8 = 0) && (Animelemtime(1) > 4) && (Animelemtime(1) < 15)
anim = 3505
pos = -200,50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,-4
accel = 0,0
random = 120,0
removetime = 100
supermove
pausemove
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
supermovetime = -1

[State 0, PosSet]
type = PosSet
trigger1 = time = 150 && !InGuardDist-50
x = InGuardDist-50
y = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 150
v = 0
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 151
value = 3540
ctrl = 1

;===============================================================================
;Opponent Dizzy State
[Statedef 3530]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5300

[State 0, ]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 0, End The Dizzy]
type = SelfState
trigger1 = Time = 200
ctrl = 1
value = 5070


;===============================================================================
;Bamf! Return
[Statedef 3540]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 0

; sfx
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 20
value = S9,2

[State 0, Helper]
type = Helper
trigger1 = time = 35
helpertype = normal ;player
stateno = 1010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove
pausemove

[State 0, TeleportFacing1]
type = Posadd
trigger1 = time = 25
triggerall = facing = 1
x = 200
y = -100

[State 0, TeleportFacing-1]
type = Posadd
trigger1 = time = 25
triggerall = facing = -1
x = 200
y = -100

[State 0, 1]
type = StateTypeSet
trigger1 = time = 25
statetype = A

[State 0, P2Turn]
type = turn
trigger1 = time = 25
trigger1 = P2BodyDist X <= -1

[State 0, keepAnimBlank]
type = Changeanim
trigger1 = time = 25
value = 9801

[State 0, ctrlset]
type = ctrlset
trigger1 = time = 34
value = 1

[State 0, ChangeToFallAnim]
type = Changeanim
trigger1 = time = 41
value = 44

[State 0, ChangeToFall]
type = Changestate
trigger1 = time = 41
value = 51

;===============================================================================
;End of Excalibur Hyper
;===============================================================================
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



;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State 0, PowerSet]
type = PowerSet
triggerall = enemynear, name ="Trainingroom"
trigger1 = power != 3000
value = 3000

[State -2, debug]       ; (debug clipboard)
type = DisplayToClipboard
trigger1 = 1 ;Alive
text = "PalNo: %d - Pos Y: %f"
params = PalNo, Pos Y

[State -2, PosSet]
type = PosSet
trigger1 = Alive
z = 0.9

[State -2, jump landing sound]   ; custom jump-landing sound
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 106
type = PlaySnd
persistent = 0
value = 8,1

;[State -2, fall landing sound]   ; custom fall-landing sound
;trigger1 = stateno = [5100, 5110]
;trigger1 = Time = 1
;type = PlaySnd
;persistent = 0
;value = 8,2

;[State -2, gethits]         ; custom gethit sounds
;type = PlaySnd
;triggerall = (stateno = [5000,5210]) && (Time = 0) && (!IsHelper)
;trigger1 = anim = 5002  ; standing hard hit high
;trigger2 = anim = 5012  ; stand hard hit low
;trigger3 = anim = 5022  ; crouching hard hit
;trigger4 = anim = 5030  ; air hit
;trigger5 = anim = 5070  ; tripped
;persistent = 0
;value = 4,0

;[State -2, superjump opponent locator]
;type = Helper
;triggerall = (NumHelper(0) = 0)
;trigger1 = (Pos Y < -200) && (P2Dist Y > 50)
;ID = 0
;pos = 0,-120
;postype = p2
;stateno = 910
;facing = 1



;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]

;Player 1 Indicator
[State -3]
type = Explod
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 909 - ((enemy,id)<id)
id = 909
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
removetime = 1
scale= const(size.xscale),const(size.yscale)

;Player 2 Indicator
[State -3]
type = Explod
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 910 - ((enemy,id)<id)
id = 910
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
removetime = 1
scale= const(size.xscale),const(size.yscale)

;-------------------------------------------------------------------------------
; Level-up sounds (uses Var(2))

;-------------------------------------------------------------------------------

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
anim = 60
postype = p1
pos = 7, 3
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
value = 8, 1

;--------------------------------
; based on FlowaGirl and Ethan Lives codes
; taken with permission from McCready's Guido char

[State -3, VarSet]
type = VarSet
trigger1 = Life <= 150
v = 50
value = 1
