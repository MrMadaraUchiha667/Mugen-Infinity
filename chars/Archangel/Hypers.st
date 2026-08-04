;---------------------------------------------------------------------------
; Hypers / Statedef's : 3000 - 3999
;----------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;;--------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;; Air Sky Scraper
;----------------------------------------------------------------------------

[Statedef 3003]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7125
sprpriority = 2


[State 73100, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 1

[State 73100, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

;------------------------------Start of Hyper Effects

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 1
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 1
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250, 0
channel = 5

[State 73100, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250, 1
channel = 0

[State 73200, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 10
y = 5

[State 73200, 2]
type = null;VelSet
trigger1 = AnimElem = 4
x = 12
y = 6

[State 73200, 3]
type = HitDef
trigger1 = TimeMod = 6,0
attr = A, HA
damage = 20, 2
animtype = Heavy
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -50
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -4,0
airguard.velocity = -2,1
air.type = Low
air.velocity = -4,1
air.hittime = 12
air.fall = 1

[State 73200, 3]
type = HitDef
trigger1 = TimeMod = 3,0
attr = A, HA
damage = 20,2
animtype = Heavy
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -50
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -4,0
airguard.velocity = -2,1
air.type = Low
air.velocity = -4,1
air.hittime = 12
air.fall = 1

[State 71200, 5]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3006

[State 73100, 10]
type = null;ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
trigger1 = Pos Y >=0
value = 3006

;---------------------------------------------------------------------------
; Sky Scraper - Angel Buster
[Statedef 3006]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7128

[State 73100, AfterImage]
type = AfterImage
trigger1 = Time <= 0
time = 1

[State 73100, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 73100, Width]
type = Width
trigger1 = Anim = 7128
trigger1 = AnimElem = 2, < 0
value = 20,0

[State 71300, 0]
type = VelSet
trigger1 = Var(4) = 0
trigger1 = Anim = 7128
trigger1 = AnimElem = 2
x = 2
y = -2

[State 73100, 2]
type = VelAdd
trigger1 = Time > 20
trigger1 = Anim = 7128
trigger1 = AnimElem = 2, > 0
y = .4

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250, 0
channel = 5

[State 73100, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250, 1
channel = 0

[State 73100, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
attr = A, HA
damage = 20, 2
hitflag = MAF
getpower = 0,0
givepower = 0,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -50
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 55
ground.hittime  = 30
ground.velocity = -6,0
airguard.velocity = -3,0
air.type = High
air.velocity = -16,0
air.hittime = 12

[State 73100, 10]
type = ChangeState
trigger1 = animtime = 0
;trigger1 = Vel Y > 0
;trigger1 = Pos Y <=0
value = 3007

;---------------------------------------------------------------------------
; Sky Scraper - Angel Uplift
[Statedef 3007]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7128
sprpriority = 2

[State 73100, AfterImageTime]
type = AfterImageTime
trigger1 = Vel Y <= 0
time = 2

[State 73100, Width]
type = Width
trigger1 = AnimElem = 3 < 0
value = 20,0

[State 73100, Width]
type = Width
trigger1 = AnimElem = 3 >= 0
value = 30,0

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1250, 0
channel = 5

[State 73100, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1250, 1
channel = 0

[State 73100, 1]
type = PosAdd
trigger1 = Anim = 7128
trigger1 = AnimElem = 4
x = 10
y = 10

[State 73100, 2]
type = VelSet
trigger1 = Anim = 7128
trigger1 = AnimElem = 4
x = 0
y = -1

[State 73100, 2]
type = VelSet
trigger1 = Anim = 7128
trigger1 = AnimElem = 4
x = 0
y = -4

[State 73100, 2]
type = VelSet
trigger1 = Anim = 7128
trigger1 = AnimElem = 4
x = 6
y = -8

[State 73100, 3]
type = VelMul
trigger1 = Time > 12
x = .9

[State 73100, 4]
type = Veladd
trigger1 = Time > 10
y = .4

[State 73100, 5]
type = VelSet
trigger1 = Time > 20
trigger1 = Vel Y >= 0
x = 0


[State 73100, 7]
type = HitDef
trigger1 = AnimElem = 3
attr = A, HA
damage = 50, 2
hitflag = MAF
getpower = 0,0
givepower = 0,0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 3
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 45
ground.hittime  = 12
ground.velocity = -24,-8
airguard.velocity = -2,-4
ground.cornerpush.veloff = 10
air.type = Low
air.velocity = -4,-8
air.hittime = 2
air.fall = 1
fall = 1

[State 73100, 7]
type = HitDef
trigger1 = AnimElem = 4 || Animelem = 5
attr = A, HA
damage = 50,2
animtype = Heavy
guardflag = MA
hitflag = MAF
getpower = 0,0
givepower = 0,0
priority = 3, Hit
pausetime = 10, 10
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -100
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 65
ground.hittime  = 12
ground.velocity = -4,-8
airguard.velocity = -2,-4
air.type = Low
air.velocity = -14,-8
air.hittime = 12
air.fall = 1
fall = 1

[State 73100, 8]
type = ChangeState
trigger1 = animtime = 0
value = 50

;Hyper1 - Aerial Sky Scraper
[Statedef 3004]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3900;+(var(23))
ctrl = 0
sprpriority = 2

[State 3004, VelSet]
type = VelSet
trigger1 =  animelem = 4
x = -3
y = -8

[State 3004, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 0
y = 0

[State 3004, 8]
type = ChangeState
trigger1 = animelem = 12
value = 3003
ctrl = 0

[State 3004, 8]
type = ChangeState
trigger1 = animtime=0
value = 50
ctrl = 0



;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;Hyper Whirlwind
;---------------------------------------------------------------------------

[Statedef 3200]
type    = A
movetype= A
physics = S
juggle  = 8
velset = 5,0
anim = 7113+(var(23))
ctrl = 0
sprpriority =1

;------------------------------Start of Hyper Effects

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 2
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 1
Time = 30
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 10


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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

;-------------

[State 240, 0]
type = varadd
trigger1 = Time = 1
value = 1
v = 26

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
value = 54,17

[State 1530]
type = PlaySnd

trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
trigger4 = AnimElem = 18
value = 54,18

[State 1530]
type = PlaySnd
triggerall = var(23) = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = 1250,1

[State 1530]
type = PlaySnd
triggerall = var(23) = 10000
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
value = 10,1

[State 240, 5]
type = varset
trigger1 = var(26) = 4
value = 0
v = 26



[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 3
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 1050, 0]
type = velset
trigger1 = Time = [0,6]
x = 1
y = -3

[State 1050, 1]
type = velset
trigger1 = Time = [7,12]
x = 10

[State 1050, 2]
type = velset
trigger1 = Time = [13,500]
x = 20

[State 0,3 ]
type = ScreenBound
trigger1 = time = [0,500]
value = 0


[State 1002, 0] ;Opponent near
type = HitDef
trigger1 = AnimElem >= 3
trigger2 = AnimElem >= 4
trigger3 = AnimElem >= 5
trigger4 = AnimElem >= 6
trigger5 = AnimElem >= 7
trigger6 = AnimElem >= 8
trigger7 = AnimElem >= 9
trigger8 = AnimElem >= 10
trigger9 = AnimElem >= 11
trigger10 = AnimElem >= 12
trigger11 = AnimElem >= 13
trigger12 = AnimElem >= 14
trigger13 = AnimElem >= 15
trigger14 = AnimElem >= 16
trigger15 = AnimElem >= 17
attr = S, HA
animtype  = Hard
damage    = 25,2
getpower = 0,0
givepower = 0,0
priority  = 8
hitflag = HLAF
guardflag = MA
pausetime = 2,4
sparkno = S8222
guard.sparkno = S8001
sparkxy = 5,-70
hitsound   = S8000,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-7
air.velocity = -6,-7
air.fall = 1

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 40
value = 14, 7

[State 1050, 5]
type = ChangeState
trigger1 = Time = 70
value = 3209

;---------------------------------------------------------------------------
; Charge back
[Statedef 3209]
type    = A
movetype= A
physics = S
juggle  = 4
velset = 5,1
sprpriority = -1


[State 0, 3]
type = PlaySnd
trigger1 = animelem = 5
value = 500, 6
volume = -100

[State 0, 3]
type = PlaySnd
trigger1 = animelem = 13
value = 500, 6
volume = -100

[State 0, 3]
type = PlaySnd
trigger1 = animelem = 21
value = 500, 6
volume = -100

[State 0, 3]
type = PlaySnd
trigger1 = animelem = 29
value = 500, 6
volume = -100

[State 0,3 ]
type = posset
trigger1 = time = 1
triggerall = facing = 1
x = -180
y = -50

[State 0,3 ]
type = posset
trigger1 = time = 1
triggerall = facing = 1
x = 180
y = -50

[State 0, 0]
type = velset
trigger1 = Time = [0,50]
x = 1.5
y = 1

[State 0,0 ]
type = ScreenBound
trigger1 = time = [0,300]
value = 0

[State 0,4 ]
type = posset
trigger1 = time = 50
y = 0

[State 0, 5]
type = ChangeState
trigger1 = time = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Charge get hit
[Statedef 3219]
type    = A
movetype= H
physics = N
velset = -1,-5
anim = 5000

[State 3219, 1]
type = ChangeAnim2
trigger1 = Time = 1
value = 5050

;[State 3219, 1]
;type = turn
;trigger1 = time = 1

[State 3219, 1]
type = velset
trigger1 = time = [1,15]
x = 1
y = -5

[State 3219, 2]
type = velset
trigger1 = time = [16,25]
x = 1
y = -3

[State 3219, 3]
type = velset
trigger1 = time = [26,30]
x = 1
y = 0

[State 3219, 3]
type = velset
trigger1 = time = [31,40]
x = 1
y = 3

[State 3219, 4]
type = velset
trigger1 = time = [41,60]
x = 1
y = 5

[State 3219, 3]
type = selfState
trigger1 = time = 50
value = 5050
;--------------------------------------------------------
;;--------------------------------------------------------
;;--------------------------------------------------------
;;--------------------------------------------------------
;;--------------------------------------------------------
;;--------------------------------------------------------
;;--------------------------------------------------------
;;--------------------------------------------------------
;;--------------------------------------------------------
;; Healing Factor
;--------------------------------------------------------

[Statedef 3300]
type    = A
movetype= A
physics = S
anim = 3300 +(var(23))
ctrl = 0

;------------------------------Start of Hyper Effects

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime =  0


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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



[State 3300, End]
type = ChangeState
trigger1 = animtime= 0
trigger1 = BackEdgeBodyDist > -1
value = 50
ctrl = 0

[State 3300, PalFX]
type = PalFX
trigger1 = animelem = 4
time = 70
add = 205,220,100
mul = 216,196,56
sinadd = 0,210,50,110
invertall = 0
color = 256

[State 3300, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 1

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

;-------------
[State 3300, sense bar]
type = Explod
trigger1 = animelem = 1
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

[State 3300, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3300, VelSet]
type = Velset
trigger1 = AnimElem = 17, = 0
y = -1

[State 3300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 17, >= 0
type = A
physics = N

[State 3300, VelSet]
type = VelMul
trigger1 = AnimElem = 17, > 0
y = .98

[State 3300, 1]
type = PlaySnd
trigger1 = Time = 17
value = 11, 2

[State 3300, 1]
type = PlaySnd
trigger1 = Time = 72
value = 1100, 0

[State 3300, 1]
type = PlaySnd
trigger1 = Time = 40
value = 1250, 1

[State 3300, 1]
type = PlaySnd
trigger1 = Time = 62
value = 1000, 1

[State 3300, Lifeadd]
type = Lifeadd
trigger1 = AnimElem >= 1
trigger2 = AnimElem >= 3
trigger3 = AnimElem >= 5
trigger4 = AnimElem >= 7
trigger5 = AnimElem >= 9
trigger6 = AnimElem >= 11
trigger7 = AnimElem >= 13
trigger8 = AnimElem >= 15
trigger9 = AnimElem >= 17
trigger10 = AnimElem >= 19
trigger11 = AnimElem >= 21
trigger12 = AnimElem >= 23
trigger13 = AnimElem >= 24
trigger14 = AnimElem >= 25
trigger15 = AnimElem >= 27
value = 23

[State 3300, Fin]
type = ChangeState
trigger1 = !animTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;;---------------------------------------------------------------------------
;; Hyper Fallen Angel
;---------------------------------------------------------------------------

;Aerial Jump
[Statedef 3100]
type    = A
physics = N
ctrl = 0
anim = 40

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
value = 0

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 28
value = 1

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 28
value = 2

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 28
value = 3

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 28
value = 5

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 28
value = 6

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 28
value = 7

[State 90, VarSet]
type = VarSet
trigger1 = 1
v = 29
value = 0

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 25
value = 0

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 25
value = 8

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 25
value = 9

[State 90, VarSet]
type = VarSet
triggerall = Time <= 1
trigger1 = Command = "FallenAngel"
v = 25
value = 10

[State 90, VarSet]
type = VarSet
trigger1 = 1
v = 26
value = 0

[State 90, VarSet]
type = VarSet
triggerall = Time = 1
trigger1 = Command = "holdback"
trigger2 = Command != "holdback"
trigger2 = Command != "holdfwd"
trigger2 = BackEdgeDist < 150
v = 0
value = 0

[State 90, VarSet]
type = VarSet
triggerall = Time = 1
trigger1 = Command = "holdfwd"
trigger2 = Command != "holdback"
trigger2 = Command != "holdfwd"
trigger2 = FrontEdgeDist <= 150
v = 0
value = 1

[State 90, Turn]
type = Turn
triggerall = Time = 1
trigger1 = Var(4) = 0

[State 90, 1]
type = VelSet
trigger1 = Time = 2
x = FrontEdgeDist / 10
y = -8

[State 90, 0]
type = ChangeAnim
trigger1 = Time = 2
value = 42

[State 90, 0]
type = ChangeAnim
trigger1 = Anim = 42
trigger1 = AnimElem = 3 >= 5
value = 45

[State 90, 2]
type = VelAdd
trigger1 = Time > 5
y = .4

[State 90, VarSet]
type = VarSet
trigger1 = Time = 5
v = 0
value = 5

[State 90, 4]
type = ChangeState
triggerall = Time > 10
triggerall = Pos Y < -50
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 3101

[State 90, State]
type = ChangeState
trigger1 = Time > 20
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 50

;---------------------------------------------------------------------------

; Wall Jump
[Statedef 3101]
type = A
physics = A
anim = 2990
ctrl = 0


;[State 3000, 2]
;type = SuperPause
;trigger1 = AnimElem = 8
;time = 13
;anim = -1
;pos = 10,-70
;unhittable = 1

;------------------------------Start of Hyper Effects

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 1
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 1
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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



[State 60, AfterImage]
type = AfterImage
triggerall = Var(28) > 0
trigger1 = Time = 1
time = 0

[State 60, AfterImageTime]
type = AfterImageTime
trigger1 = Var(28) > 0
time = 2

[State 60, 0]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 60, 0]
type = Turn
triggerall = Time = 0
trigger1 = Var(0) = 0
trigger1 = Command = "holdback"
trigger2 = Var(0) > 0
trigger2 = P2BodyDist X < 0

[State 60, 1]
type = VelSet
trigger1 = Var(0) = 0
trigger1 = Time = 4
x = const(velocity.jump.fwd.x)
y = const(velocity.jump.y)

[State 60, 2]
type = ChangeAnim
trigger1 = var(0) = 0
value = 1100

[State 60, 3]
type = ChangeState
trigger1 = Var(0) = 0
trigger1 = Time >= 4
value = 50
ctrl = 1

[State 60, 4]
type = PosAdd
triggerall = Var(0) > 0
trigger1 = AnimTime = 0
x = 40

[State 60, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3102
ctrl = 0

;---------------------------------------------------------------------------
; Climb - Stop
[Statedef 3102]
type    = A
movetype = I
physics = N
ctrl = 0
velset = 0,0

[State 3602, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3602, sprpriority]
type = sprpriority
trigger1 = 1
value = -5

[State 3602, PosAdd]
type = PosAdd
trigger1 = Var(9) = 0
trigger1 = Time = 0
x = 50

[State 3602, 0]
type = VarRandom
trigger1 = 1
v = 7
range = 0,2

[State 3602, 0]
type = VarRandom
trigger1 = 1
v = 8
range = -1,1

[State 3602, 1]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = animtime = 0
value = 3104

[State 3602, 2]
type = PosAdd
triggerall = Var(9) > 0
trigger1 = Time = 50
y = -10
;---------------------------------------------------------------------------
; Jump Off Wall
[Statedef 3104]
type = A
movetype = A
physics = N
anim = 7127
ctrl = 0

[State 3604, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2


[State 3604, Width]
type = Width
trigger1 = Var(26) = 0
trigger1 = Anim = 7127
value = 25,25

[State 3604, Width]
type = Width
trigger1 = Var(26) > 0
trigger1 = Anim = 7127
value = 50,50

[State 3604, VelSet]
type = VelSet
trigger1 = Time = 0
x = 15
y = Var(25)

[State 3604, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 1250,2
channel = 0

[State 3604, VelAdd]
type = VelAdd
trigger1 = Time > 0
trigger1 = Time < 30
trigger1 = Vel Y > 0
y = -1

[State 3604, VelSet]
type = VelSet
trigger1 = Time > 0
trigger1 = Time < 30
trigger1 = Vel Y < 0
y = 0

[State 3604, VelAdd]
type = VelAdd
trigger1 = Time > 30
y = .5

[State 3604, 2]
type = HitDef
triggerall = Var(28) = 0
triggerall = Var(2) = 0
trigger1 = Time = 0
attr = A, HA
damage = 15, 1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
airguard.velocity = -4,-1
air.type = Low
air.velocity = -6,-2
air.hittime = 16

[State 3604, 2]
type = HitDef
triggerall = Var(28) = 0
triggerall = Var(2) > 0
trigger1 = Time = 0
attr = A, HA
damage = 15, 1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -8
airguard.velocity = -4,-1
air.type = Low
air.velocity = -6,-2
air.hittime = 16

[State 3604, Drill]
type = Explod
triggerall = Var(28) > 0
trigger1 = Anim = 7127
trigger1 = AnimElem = 2
id = 1115
anim = 1115
pos = 55,-72
postype = p1
bindtime = -1
supermove = 1
persistent = 0
scale = .5,.5
removetime = -1
sprpriority = 5
ignorehitpause = 1

[State 3110, Remove]
type = RemoveExplod
trigger1 = Anim = 1111
id = 1115

[State 3604, 2]
type = HitDef
triggerall = Var(28) = 5
triggerall = Var(2) = 0
trigger1 = TimeMod = 5,0
attr = A, HA
damage = 15, 1
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -10,-2
airguard.velocity = -5,-1
air.type = Low
air.velocity = -10,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 3604, 2]
type = HitDef
triggerall = Var(28) = 5
triggerall = Var(2) > 0
trigger1 = TimeMod = 5,0
attr = A, HA
damage = 15, 1
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -10,-2
airguard.velocity = -5,-1
air.type = Low
air.velocity = -10,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 3604, 2]
type = HitDef
triggerall = Var(28) = 6
triggerall = Var(2) = 0
trigger1 = TimeMod = 4,0
attr = A, HA
damage = 25, 1
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -10,-2
airguard.velocity = -5,-1
air.type = Low
air.velocity = -10,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 3604, 2]
type = HitDef
triggerall = Var(28) = 6
triggerall = Var(2) > 0
trigger1 = TimeMod = 4,0
attr = A, HA
damage = 25, 1
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -10,-2
airguard.velocity = -5,-1
air.type = Low
air.velocity = -10,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 3604, 2]
type = HitDef
triggerall = Var(28) >= 7
triggerall = Var(2) = 0
trigger1 = TimeMod = 3,0
attr = A, HA
damage = 25, 1
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -10,-2
airguard.velocity = -5,-1
air.type = Low
air.velocity = -10,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 3604, 2]
type = HitDef
;triggerall = Var(28) >= 7
;triggerall = Var(2) > 0
trigger1 = TimeMod = 3,0
attr = A, HA
damage = 25, 11
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000, 2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -10,-2
airguard.velocity = -5,-1
air.type = Low
air.velocity = -10,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 3604, VelSet]
type = VelSet
trigger1 = Var(28) = 0
trigger1 = MoveContact
x = -2
y = -10

[State 3604, State]
type = ChangeState
triggerall = Time > 10
triggerall = Var(28) = 0
triggerall = Anim = 7127
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 50

[State 71110, State]
type = ChangeState
triggerall = Var(28) = 0
trigger1 = MoveContact
value = 50

[State 71110, State]
type = ChangeState
trigger1 = Time > 30
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 50


;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;--------------------------- ARCHANGEL SUPERS-----------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Hyper1 - Aerial Hyper Pinots
[Statedef 3900]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3900+(var(23))
ctrl = 0
sprpriority = 2

;------------------------------Start of Hyper Effects

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = time = 1
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = time = 1
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 26


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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


[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S10,1

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S13,2

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S500,1

[State 0, VelSet]
type = VelSet
trigger1 =  animelem = 4
x = -3
y = -8

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 0
y = 0

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
;fall=1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 17
projanim = 3901
projhitanim = 3902
projcancelanim = 3902
projhits = 1
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 25,2
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,0
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1
fall=1

[State 39000, End]
type = ChangeState
trigger1 = animtime=0
value = 1201
ctrl = 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;;Hyper Swoop
;---------------------------------------------------------------------------

[Statedef 3800]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 3000
sprpriority = 2

[State 3800, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 10
y = 0

[State 3800, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 0
y = 0

;------------------------------Start of Hyper Effects

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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



[State 3000, End]
type = ChangeState
trigger1 = movehit != 0
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3807
ctrl = 0

;-------------

[State 240, 2]
type = HitDef
trigger1 = Animelem >= 3
trigger2 = Animelem >= 4
attr = S, NA
damage    = 65
hitflag = HMAF
guardflag = HA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard,sparkno = S8001
sparkxy = 0,-80
hitsound   = S500, 6
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-5
airguard.velocity = -2,-1
ground.35,5
givepower = 5,5
cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 1
P1stateno = 3811
P2stateno = 5401
fall = 0
air.fall = 0
fall.recover = 0
air.fall.recover = 0


[State 230, 3]
type = ChangeState
trigger1 = Time = 70;144
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; incapacitated
;---------------------------------------------------------------------------
[Statedef 5401]
type = S
movetype= U
physics = N
velset = 0,0

[State 5401, anim]
type = Changeanim
trigger1 = time = 0
value = 5300

[State 5401, color]
type = palFX
trigger1 = time = 0
add = 155,55,155
mul = 190, 98, 190
sinadd = 100,20,150, 5
color = 216
time = 17

;Prevents characters from cloning due to reversal def moves you never know 0___0
[State DestroyHelper]
type=destroyself
trigger1=ishelper
ignorehitpause=1
pausemovetime=9999999
supermovetime=9999999

[State 5401, 1]
type = VarSet
trigger1 = !time
v = 1
value = 0

[State 5401, SelfState]
type = SelfState
trigger1 = time = 100
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 5401, End]
type = ChangeState
trigger1 = time = 25
trigger1 = Pos Y < 0
value = 5402

;-------------------------------------------------------------

[Statedef 5402]
type    = S
movetype= H
physics = N
velset = 0,2
ctrl = 0
anim = 5070

[State 5402, 0]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 5402, 1]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 5402, 2]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 5402, 3]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100
ctrl = 1

;---------------------------------------------------------------------------
;Fly Back
[Statedef 3811]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
velset = 25,-0.5
anim = 30000
sprpriority = 2

[State 3911, VelSet]
type = VelSet
trigger1 = Animtime = 85
x = -34
y = 0

[State 240, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S, NA
damage  = 25,7
hitflag = HMAF
guardflag = HA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard,sparkno = S8001
sparkxy = 0,-80
hitsound   = S500, 6
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-15
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-1
ground.35,5
givepower = 5,5
cornerpush.veloff = -6
air.cornerpush.veloff = -14
getpower = 1
P1stateno = 3807
P2stateno = 5401
fall = 0
air.fall = 0
fall.recover = 0
air.fall.recover = 0

[State 3911, TargetState]
type = TargetState
trigger1 = anim =30000
value = 5401
ID = 1

[State 3911, 3]
type = ChangeState
trigger1 = Time = 70;144
value = 3807
ctrl = 1

;---------------------------------------------------------------------------
;Hyper Swoop Again
;------------------------------------------
[Statedef 3807]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
sprpriority = 2


[State 610, 4]
type = PlaySnd
trigger1 = Time = 80
trigger2 = Time = 120
trigger3 = Time = 160
trigger4 = Time = 200
trigger5 = Time = 240
trigger6 = Time = 320
trigger7 = Time = 360
value = 10, 1

[State 610, 4]
type = PlaySnd
trigger1 = Time = 80
trigger2 = Time = 100
trigger3 = Time = 120
trigger4 = Time = 140
trigger5 = Time = 160
trigger6 = Time = 200
trigger7 = Time = 240
trigger8 = Time = 280
trigger9 = Time = 320
trigger10 = Time = 360
value = 1250, 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >70
flag = invisible

[State 1410, 2]
type = Helper
ID = 3809
helpertype = normal
pos = 0, 150
postype = p1
stateno = 3809
trigger1 = time = 80
value = 3809

[State 1410, 2]
type = Helper
ID = 3840
helpertype = normal
facing = -1
pos = 100, -100
postype = p1
stateno = 3840
trigger1 = time = 100
value = 3840

[State 1410, 2]
type = Helper
ID =3841
helpertype = normal
pos = -100, -40
postype = p1
stateno = 3841
trigger1 = time = 130
value = 3841

[State 1410, 2]
type = Helper
ID =3840
helpertype = normal
facing = -1
pos = 100, -100
postype = p1
stateno = 3840
trigger1 = time = 160
value = 3840

[State 1410, 2]
type = Helper
ID = 3809
helpertype = normal
pos = -100, -150
postype = p1
stateno = 3809
trigger1 = time = 180
value = 3809

[State 1410, 2]
type = Helper
ID =3841
helpertype = normal
facing = -1
pos = 100, -40
postype = p1
stateno = 3841
trigger1 = time = 200
value = 3841

[State 1410, 2]
type = Helper
ID = 3840
helpertype = normal
facing = -1
pos = -100, -20
postype = p1
stateno = 3840
trigger1 = time = 220
value = 3840

[State 1410, 2]
type = Helper
ID =3841
helpertype = normal
pos = 100, -100
postype = p1
stateno = 3841
trigger1 = time = 240
value = 3841

[State 1410, 2]
type = Helper
ID =3842
helpertype = normal
facing = -1
pos = 100, -40
postype = p1
stateno = 3842
trigger1 = time = 260
value = 3842

[State 100, 5]
type = posset
trigger1 = Time = 300
triggerall = facing = 1
x = -100
y = -150

[State 0, ]
type = RemoveExplod
trigger1 = movetype = H
trigger2 = time = 300
ID = 8962
ignorehitpause = 1

[State 0, ]
type = RemoveExplod
trigger1 = movetype = H
trigger2 = time = 300
ID = 8961
ignorehitpause = 1

[State 230, 3]
type = Changeanim
trigger1 = Time = 300
value = 47

[State 230, 3]
type = ChangeState
trigger1 = Time = 340
value = 3808
ctrl = 1
;---------------------------------------------------------------------------
;Hyper Swoop Ends
[Statedef 3808]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3101
sprpriority = 0
facep2 = 1

[State 3808, BindToTarget]
type = BindToTarget
trigger1 = animelem = 1
time = 150
;ID =  3808
pos = 0,-10,;"Mid";"Head"

[State 1519]
type = PlaySnd
trigger1 = AnimElem = 8
value = S9999,4
channel = 5

[State 1519]
type = PlaySnd
trigger1 = AnimElem = 5
value = 501,10
channel = 4

[State 1519]
type = HitDef
attr = S, SA
trigger1 = hitcount < 2
trigger1 = moveguarded < 1
damage = 30,3
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
getpower = 0,0
givepower = 0,0
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S500, 6
guardsound = S6,0
sparkno = S8222
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,0;-11
air.velocity = -3,0;-9
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7
fall = 1
air.fall = 1


[State 1519]
type = VelSet
trigger1 = AnimElem = 3
x = 6
y = -15

[State 1519]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1519]
type = VelAdd
trigger1 = AnimElem = 4, >= 0
y = 2;0.4


[State 1519]
type = ChangeState
trigger1 = Time >= 20 && StateType != A
value = 0
ctrl = 1



[State 1519]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;-------------------------------------------------------
[Statedef 3809]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30001
sprpriority = 5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = 25
y = 1

[State 240, 2]
type = HitDef
trigger1 = Animelem >=2
attr = A, NA
damage = 30,3
hitflag = HMAF
guardflag = HA
pausetime = 4,44
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
getpower = 0,0
givepower = 0,0
hitsound   = S500, 6
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 0
fall.recover = 0
air.fall.recover = 0

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 2
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100

;-------------------------------------------------------
[Statedef 3840]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30001
sprpriority = 5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1

time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = 15
y = -2

[State 240, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A, NA
damage = 30,3
hitflag = HMAF
guardflag = HA
pausetime = 4,44
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
getpower = 0,0
givepower = 0,0
hitsound   = S500, 6
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 0
fall.recover = 0
air.fall.recover = 0

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 6
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100

;-------------------------------------------------------
[Statedef 3841]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30001
sprpriority = 5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = 20
y = -2

[State 240, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A, NA
damage = 30,3
hitflag = HMAF
guardflag = HA
pausetime = 4,44
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
hitsound   = S500, 6
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 0
fall.recover = 0
air.fall.recover = 0

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 7
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100

;-------------------------------------------------------
[Statedef 3842]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30001
sprpriority = 5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = 20
y = 1

[State 240, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A, NA
damage = 30,3
hitflag = HMAF
guardflag = HA
pausetime = 12,22
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
hitsound   = S500, 6
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 1
fall.recover = 0
air.fall.recover = 0

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 10
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100

;------------------------------------------------------------------
;------------------------------------------
;;------------------------------------------
;;------------------------------------------
;;------------------------------------------
;;------------------------------------------
;; The 4 Horsemen Of the Apocalypse
;---------------------------------------------------------------------------

[Statedef 3707]
type    = U
movetype= A
physics = N
juggle  = 3
ctrl = 0
velset = 0,0
anim = 1510
sprpriority = 0
facep2 = 1

;------------------------------Start of Hyper Effects

[State 3000, assertspecial]
type = assertspecial
triggerall = !Var(29)
trigger1 = AnimElem = 3
flag = noBG
flag2 = noFG
ignorehitpause = 1

[State 3000, SuperPause]
type = SuperPause
triggerall = !Var(29)
trigger1 = AnimElem = 3
Time = 60
;anim =-1;s3012
pos = 25,-65
sound = S8889,0
poweradd = -1000
movetime = 60


[State -2, Helper]
type = Helper
triggerall = !Var(29)
triggerall = !numhelper(40001)
trigger1 = time = 5
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


[State 1520]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1510,0

[State 1520]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1480,1

[State 1520]
type = HitDef
attr = S, SA
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 20,0
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S19,1
guardsound = S19,2
sparkno = S8022
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7
fall = 0
air.fall = 0
getpower = 50,25


[State 1520]
type = VelSet
trigger1 = AnimElem = 4
x = 0
y = -5

[State 1520]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1520]
type = VelAdd
trigger1 = AnimElem = 4, >= 0
y = 0.4

[State 1520]
type = ChangeState
trigger1 = Time >= 20 && StateType != A
value = 0
ctrl = 1


[State 1520]
type = ChangeState
trigger1 = Time >= 20 && StateType = A
value = 1700
ctrl = 0

;---------------------------------------------------------------------------
;fly trap
[Statedef 1700]
type    = A
movetype= A
physics = S
juggle  = 4
velset = 5,0
anim = 1300
ctrl = 0
sprpriority = -1


[State 240, 0]
type = varadd
trigger1 = Time = 1
value = 1
v = 25


[State 610, 4]
type = PlaySnd
triggerall = var(25) = 2
trigger1 = Time = 2
value = 500, 1

[State 610, 4]
type = PlaySnd
trigger1 = Time = 7
value = 500, 1


[State 240, 5]
type = varset
trigger1 = var(25) = 4
value = 0
v = 25



[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 3
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 1050, 0]
type = velset
trigger1 = Time = [0,6]
x = 5
y = -3

[State 1050, 1]
type = velset
trigger1 = Time = [7,12]
x = 10

[State 1050, 2]
type = velset
trigger1 = Time = [13,500]
x = 20

[State 0,3 ]
type = ScreenBound
trigger1 = time = [0,500]
value = 0


[State 1002, 0] ;Opponent near
type = HitDef
trigger1 = AnimElem >= 3
attr = S, SA
animtype  = Hard
damage    = 50
priority  = 8
hitflag = HLAF
guardflag = MA
getpower = 0,0
givepower = 0,0
pausetime = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 5,-70
hitsound   = S19,3
guardsound = S19,2
ground.type = Low
ground.slidetime = 0
ground.hittime  = 1
ground.velocity = 0,0
air.velocity = 0,0
p2stateno = 1702
p2facing=-1

[State 1050, 5]
type = ChangeState
trigger1 = Time = 50
value = 1701

;---------------------------------------------------------------------------
; Fly Trap Charge back
[Statedef 1701]
type    = A
movetype= A
physics = S
juggle  = 4
velset = 5,1
anim = 9800
sprpriority = -1


[State 0, 3]
type = PlaySnd
trigger1 = animelem = 5
value = 500, 6
volume = -100

[State 0, 3]
type = PlaySnd
trigger1 = animelem = 13
value = 500, 6
volume = -100

[State 0, 3]
type = PlaySnd
trigger1 = animelem = 21
value = 500, 6
volume = -100

[State 0, 3]
type = PlaySnd
trigger1 = animelem = 29
value = 500, 6
volume = -100

[State 0,3 ]
type = posset
trigger1 = time = 1
triggerall = facing = 1
x = -180
y = -50

[State 0,3 ]
type = posset
trigger1 = time = 1
triggerall = facing = 1
x = 180
y = -50

[State 0, 0]
type = velset
trigger1 = Time = [0,50]
x = 1.5
y = 1

[State 0,0 ]
type = ScreenBound
trigger1 = time = [0,300]
value = 0

[State 0,4 ]
type = posset
trigger1 = time = 50
y = 0

[State 0, 5]
type = ChangeState
trigger1 = time = 0
value = 3719
ctrl = 1

;---------------------------------------------------------------------------
; Fly Trap Custom get hit State
[Statedef 1702]
type    = A
movetype= H
physics = N
velset = -1,-5


[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 1
value = 5050

[State 2011, 1]
type = turn
trigger1 = time = 1


[State 2011, 1]
type = velset
trigger1 = time = [1,15]
x = 1
y = -5



[State 2011, 2]
type = velset
trigger1 = time = [16,25]
x = 1
y = -3




[State 2011, 3]
type = velset
trigger1 = time = [26,30]
x = 1
y = 0



[State 2011, 3]
type = velset
trigger1 = time = [31,40]
x = 1
y = 3



[State 2011, 4]
type = velset
trigger1 = time = [41,60]
x = 1
y = 5


[State 2010, 3]
type = selfState
trigger1 = time = 10
value = 5050

;------------------------------------------
;Hyper Swoop

[Statedef 3719]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
sprpriority = 2


[State 610, 4]
type = PlaySnd
trigger1 = Time = 15
trigger2 = Time = 95
trigger3 = Time = 185
trigger4 = Time = 280
value = 1000, 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >70
flag = invisible

;Polaris
[State 1410, 2]
type = Helper
ID = 3947
helpertype = normal
pos = -200,-100
postype = p1
stateno = 3947
trigger1 = time = 5
value = 3947

;Deathbird
[State 1410, 2]
type = Helper
ID =3949
helpertype = normal
pos = 200, -40
postype = p1
stateno = 3949
trigger1 = time = 45
value = 3949

;Deathbird
[State 1410, 2]
type = Helper
ID =3949
helpertype = normal
FACING = -1
pos = -200, -50
postype = p1
stateno = 3949
trigger1 = time = 110
value = 3949

;Deathbird
[State 1410, 2]
type = Helper
ID = 3949
helpertype = normal
pos = 200, -60
postype = p1
stateno = 3949
trigger1 = time = 185
value = 3949

;Deathbird
[State 1410, 2]
type = Helper
ID =3949
helpertype = normal
FACING = -1
pos = -200, -70
postype = p1
stateno = 3949
trigger1 = time = 240
value = 3949

;Sunfire
[State 1410, 2]
type = Helper
ID = 3951
helpertype = normal
pos = -200, -120
FACING = -1
postype = p1
stateno = 3951
trigger1 = time = 30
value = 3951

;Sunfire
[State 1410, 2]
type = Helper
ID = 3951
helpertype = normal
pos = 200, -110
postype = p1
stateno = 3951
trigger1 = time = 90
value = 3951

;Sunfire
[State 1410, 2]
type = Helper
ID = 3951
helpertype = normal
FACING = -1
pos = -200, -100
postype = p1
stateno = 3951
trigger1 = time = 160
value = 3951

;Sunfire
[State 1410, 2]
type = Helper
ID = 3951
helpertype = normal
pos = 200, -90
postype = p1
stateno = 3951
trigger1 = time = 230
value = 3951

;Sunfire Bomb
[State 1410, 2]
type = Helper
ID =3958
helpertype = normal
FACING = -1
pos = 60, -50
postype = p1
stateno = 3958
trigger1 = time =  345
value = 3958

;Archangel
[State 1410, 2]
type = Helper
ID =3953
helpertype = normal
pos = 200, -140
postype = p1
stateno = 3953
trigger1 = time = 15
value = 3953

;Archangel
[State 1410, 2]
type = Helper
ID =3953
helpertype = normal
FACING = -1
pos = -200, -120
postype = p1
stateno = 3953
trigger1 = time = 95
value = 3953

;Archangel
[State 1410, 2]
type = Helper
ID =3953
helpertype = normal
pos = 200, -100
postype = p1
stateno = 3953
trigger1 = time = 185
value = 3953

;Archangel
[State 1410, 2]
type = Helper
ID =3953
helpertype = normal
FACING = -1
pos = -200, -80
postype = p1
stateno = 3953
trigger1 = time = 280
value = 3953

[State 100, 5]
type = posset
trigger1 = Time = 300
triggerall = facing = 1
x = -100
y = -150

[State 0, ]
type = RemoveExplod
trigger1 = movetype = H
trigger2 = time = 300
ID = 8962
ignorehitpause = 1

[State 0, ]
type = RemoveExplod
trigger1 = movetype = H
trigger2 = time = 300
ID = 8961
ignorehitpause = 1

[State 230, 3]
type = Changeanim
trigger1 = Time = 330
value = 47

[State 230, 3]
type = ChangeState
trigger1 = Time = 400
value = 52
ctrl = 1

;---------------------------------------------------------------------------
;Archangel Dive Ends
;[Statedef 3918]
;type    = U
;movetype= A
;physics = N
;juggle  = 3
;poweradd= 0
;ctrl = 0
;velset = 0,0
;anim = 3101
;sprpriority = 0
;facep2 = 1


;[State 1519]
;type = HitDef
;attr = S, SA
;trigger1 = hitcount < 2
;trigger1 = moveguarded < 1
;damage = 20,0
;animtype = Medium
;priority  = 5, Hit
;guardflag = MA
;pausetime = 7,7
;getpower = 0,0
;givepower = 0,0
;sparkxy = -10,-70+floor(P2Dist Y)
;hitsound   = S8000,5
;guardsound = S6,0
;sparkno = S8222
;guard.sparkno = S8001
;ground.type = High
;ground.slidetime = 15
;ground.hittime  = 20
;ground.velocity = -3,-11
;air.velocity = -3,-11
;ground.cornerpush.veloff = -7
;air.cornerpush.veloff = -7
;ground.cornerpush.veloff = -7
;guard.cornerpush.veloff = -7
;airguard.cornerpush.veloff = -7
;fall = 1
;air.fall = 1


;[State 1519]
;type = VelSet
;trigger1 = AnimElem = 3
;x = 3
;y = -3

;[State 1519]
;type = StateTypeSet
;trigger1 = Pos Y < 0
;statetype = A
;persistent = 0

;[State 1519]
;type = VelAdd
;trigger1 = AnimElem = 4, >= 0
;y = 0.4


;[State 1519]
;type = ChangeState
;trigger1 = Time >= 10 && StateType != A
;value = 0
;ctrl = 1

;[State 1519]
;type = ChangeState
;trigger1 = Pos Y >= 0
;trigger1 = Vel Y > 0
;value = 52
;ctrl = 0

;-------------------------------------------------------

;Polaris= PESTILENCE
[Statedef 3947]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30005
sprpriority = 5

[State 3719, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S81,2
channel = 5

[State 3719, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = S92,2
channel = 5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = .5
y = .75

[State 100, 5]
type = velset
trigger1 = Time = [100,200]
x = 1.25
y = .35

[State 100, 5]
type = velset
trigger1 = Time = [200,350]
x = 1.75
y = .15

[State 240, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A, NA
damage    = 65,7
hitflag = HMAF
guardflag = HA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
hitsound   = S8000,2
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 1
fall.recover = 0
air.fall.recover = -1

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 10
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 350

;Deathbird= WAR
[Statedef 3949]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30004
sprpriority = 5

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = -7
y = 0

[State 240, 2]
type = HitDef
trigger1 = Animelem >=2
attr = A, NA
damage    = 65,10
hitflag = HMAF
guardflag = HA
pausetime = 6,6
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
getpower = 0,0
givepower = 0,0
hitsound   = S19,0
guardsound = S19,2
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 1
fall.recover = 0
air.fall.recover = -1

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 2
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100

;-------------------------------------------------------

;Sunfire= FAMINE
[Statedef 3951]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30007
sprpriority = 5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1

time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = -9
y = 0

[State 240, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A, NA
damage    = 26,2
hitflag = HMAF
guardflag = HA
pausetime = 12,12
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
getpower = 0,0
givepower = 0,0
hitsound   = S8000,2
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 0
fall.recover = 0
air.fall.recover = -1

[State 30006, Explod]
type = Explod
trigger1 = animelem = 1
anim = 30008
ID = 3951
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 100
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1.5,1.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 6
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100


;---------------------------------------------------------------------------
;Sunfire Bomb Ends
[Statedef 3958]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 0
ctrl = 0
velset = 0,0
anim = 30010
sprpriority = 0
facep2 = 1


[State 1519]
type = HitDef
attr = S, SA
trigger1 = hitcount < 2
trigger1 = moveguarded < 1
damage = 60,0
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
getpower = 0,0
givepower = 0,0
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,5
guardsound = S6,0
sparkno = S8222
guard.sparkno = S8001
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7
fall = 1
air.fall = 1

[State 3918, Explod]
type = Explod
trigger1 = animelem = 1
anim = 30009
ID = 3958
pos = -25,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 250
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 2,2
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3918, Explod]
type = Explod
trigger1 = animelem = 1
anim = 30009
ID = 3958
pos = -25,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 250
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1519]
type = VelSet
trigger1 = AnimElem = 3
x = 3
y = -3

[State 1519]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1519]
type = VelAdd
trigger1 = AnimElem = 4, >= 0
y = 0.4


[State 1519]
type = ChangeState
trigger1 = Time >= 30 && StateType != A
value = 0
ctrl = 1

[State 1519, 4]
type = DestroySelf
trigger1 = time = 70

;-------------------------------------------------------

;Archangel= DEATH
[Statedef 3953]
type = S
movetype= A
physics = S
juggle  = 3
anim = 30002
sprpriority = 5

[state 100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 40
color = 0
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100, 5]
type = velset
trigger1 = Time = [1,100]
x = -15
y = 0

[State 240, 2]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A, NA
damage    = 65,7
hitflag = HMAF
guardflag = HA
pausetime = 12,12
getpower = 0,0
givepower = 0,0
sparkno = S8222
guard.sparkno = S8001
sparkxy = 0,-80
hitsound   = S8000,2
guardsound = S6,0
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = High
air.type = High
ground.slidetime = 40
ground.hittime = 40
ground.velocity = -1,-16
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 0
air.fall = 1
fall.recover = 0
air.fall.recover = -1

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = time = 20
value = 14, 10
volume = 100

[State 901, 4]
type = DestroySelf
trigger1 = time = 100




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


