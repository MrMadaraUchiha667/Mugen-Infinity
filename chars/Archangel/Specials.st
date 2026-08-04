;---------------------------------------------------------------------------
; Specials / Statdef's : 1000 - 1999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Special 1
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Wind
;---------------------------------------------------------------------------
[Statedef 1250]
type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1700
poweradd = 80

[State 12042]
type = Explod
trigger1 = facing = 1
trigger1 = time >= 25
sprpriority = 3
id = 12042
anim = 12042
postype = p1
pos = 140,150
random = 20,40
vel = 0,1
accel = .43,0
bindtime = 0;-1
removetime = 50

[State 12042]
type = Explod
trigger1 = facing = -1
trigger1 = time >= 25
sprpriority = 3
id = 12042
anim = 12042
postype = p1
pos = -140,150
random = 20,40
vel = 0,1
accel = .43,0
bindtime = 0;-1
removetime = 50


[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S13,0
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = S1250,1
channel = 5
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1250,3
channel = 5
volume = 255

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
projanim = 12042
projhitanim = 99999
projcancelanim = 99999
projid = 1250
projhits = 1
offset = 0, -60
velocity = 6,5
attr = S, SP
damage = 10,1
getpower = 10
givepower = 10
guardflag = MA
pausetime = 2,2
sparkno = s8002
guard.sparkno = S8001
hitsound = S1250,0
guardsound = S6,0
ground.type = Trip
ground.slidetime = 25
ground.hittime = 20
ground.velocity = -18
airguard.velocity = -3.5,-2.75
air.velocity = -12.5,-5.5
air.juggle = 3
air.fall = 1
fall = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 1

;---------------------------------------------------------------------------
;Spinning Halox X
[Statedef 1510]
type    = U
movetype= A
physics = N
juggle  = 8
poweradd = 80
ctrl = 0
velset = 0,0
anim = 7112 +(var(23))
sprpriority = 0
facep2 = 1

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1250,3

[State 1530]
type = PlaySnd
triggerall = var(23) = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
value = 1250,0

[State 1530]
type = PlaySnd
triggerall = var(23) = 10000
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
value = 10,0

[State 1510, Explod]
type = Explod
trigger1 = animelem = 3
anim = 7111
ID = 1510
pos = -5,10
postype = p1
facing = 1
vfacing = 1
bindtime = 25
vel = 0,0
scale = 2,0.55
sprpriority = 10
ontop = 1

[State 1510]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger1 = moveguarded < 1
damage = 15,2
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 1,1
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,2
sparkno = S8002
guard.sparkno = S8001
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
air.juggle = 8
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7
fall = 1
air.fall = 1
getpower = 50,25


[State 1510]
type = VelSet
trigger1 = AnimElem = 4
x = 0.5
y = -7

[State 1510]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1510]
type = VelAdd
trigger1 = AnimElem = 4, >= 0
y = 0.4


[State 1510]
type = ChangeState
trigger1 = Time >= 25 && StateType != A
value = 0
ctrl = 1


[State 1510]
type = ChangeState
trigger1 = Time >= 25 && StateType = A
value = 50
ctrl = 0



;---------------------------------------------------------------------------
;Spinning Halox Y
[Statedef 1520]
type    = U
movetype= A
physics = N
juggle  = 8
poweradd = 80
ctrl = 0
velset = 0,0
anim = 7112 +(var(23))
sprpriority = 0
facep2 = 1

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1250,3

[State 1530]
type = PlaySnd
triggerall = var(23) = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
value = 1250,0

[State 1530]
type = PlaySnd
triggerall = var(23) = 10000
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
value = 10,0

[State 1510, Explod]
type = Explod
trigger1 = animelem = 3
anim = 7111
ID = 1510
pos = -5,10
postype = p1
facing = 1
vfacing = 1
bindtime = 25
vel = 0,0
scale = 2,0.55
sprpriority = 10
ontop = 1


[State 1520]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger1 = moveguarded < 1
damage = 15,2
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 3,3
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,2
sparkno = S8022
guard.sparkno = S8001
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
air.juggle = 8
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7
fall = 1
air.fall = 1
getpower = 50,25


[State 1520]
type = VelSet
trigger1 = AnimElem = 4
x = 1
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
trigger1 = Time >= 40 && StateType != A
value = 0
ctrl = 1


[State 1520]
type = ChangeState
trigger1 = Time >= 40 && StateType = A
value = 50
ctrl = 0


;---------------------------------------------------------------------------
;Spinning Halox Z
[Statedef 1530]
type    = U
movetype= A
physics = N
juggle  = 8
poweradd = 80
ctrl = 0
velset = 0,0
anim = 7112 +(var(23))
sprpriority = 0
facep2 = 1

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1250,3

[State 1530]
type = PlaySnd
triggerall = var(23) = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = 1250,0

[State 1530]
type = PlaySnd
triggerall = var(23) = 10000
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = 10,0

[State 1510, Explod]
type = Explod
trigger1 = animelem = 3
anim = 7111
ID = 1510
pos = -5,10
postype = p1
facing = 1
vfacing = 1
bindtime = 25
vel = 0,0
scale = 2,0.55
sprpriority = 10
ontop = 1

[State 1530]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger1 = moveguarded < 1
damage = 10,2
animtype = Medium
priority  = 5, Hit
guardflag = MA
pausetime = 5,5
sparkxy = -10,-70+floor(P2Dist Y)
hitsound   = S8000,2
sparkno = S8222
guard.sparkno = S8001
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-11
air.velocity = -3,-11
air.juggle = 8
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7
fall = 1
air.fall = 1
getpower = 50,25


[State 1530]
type = VelSet
trigger1 = AnimElem = 4
x = 2
y = -3

[State 1530]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1530]
type = VelAdd
trigger1 = AnimElem = 4, >= 0
y = 0.4


[State 1530]
type = ChangeState
trigger1 = Time >= 35 && StateType != A
value = 0
ctrl = 1


[State 1530]
type = ChangeState
trigger1 = Time >= 35 && StateType = A
value = 50
ctrl = 0


;---------------------------------------------------------------------------
; Angel Uplift
[Statedef 1540]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
ctrl = 0
anim = 7128
poweradd = 60
sprpriority = 2

[State 3604, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 2
value = 54,17

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250,0


[State 71105, 2]
type = VelSet
trigger1 = AnimElem = 3
x = 4
y = -6

[State 71105, 2]
type = VelSet
trigger1 = AnimElem = 5
x = 5
y = -7

[State 71105, 3]
type = VelMul
trigger1 = Time > 12
x = .9

[State 71105, 4]
type = Veladd
trigger1 = Time > 10
y = .4

[State 71105, 5]
type = VelSet
trigger1 = Time > 20
trigger1 = Vel Y >= 0
x = 0

[State 71105, 6]
type = ChangeAnim
trigger1 = Time > 25
trigger1 = Vel Y >= 0
value = 45

[State 71105, 7]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
damage = 60, 10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 8
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -70
hitsound = S8000,2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-8
airguard.velocity = -2,-4
air.type = Low
air.velocity = -4,-8
air.hittime = 12
air.fall = 1
fall = 1

[State 71105, 7]
type = HitDef
trigger1 = AnimElem = 4 || Animelem = 5
attr = A, SA
damage = 30, 10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S8222
guard.sparkno = S8001
sparkxy = -10, -100
hitsound = S8000, 5
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-8
airguard.velocity = -2,-4
air.type = Low
air.velocity = -4,-8
air.hittime = 12
air.fall = 1
fall = 1


[State 71105, 8]
type = ChangeState
triggerall = Time > 20
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 50

;---------------------------------------------------------------------------
; Angel Dive

[Statedef 1550]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7125 +(var(23))
sprpriority = 2
poweradd = 80

[State 1550, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 3

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 3
value = 54,18

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250,1
channel = 5

[State 71200, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 6
y = 5

[State 71200, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
attr = A, SA
damage = 50, 5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 5
sparkno = S8222
sparkxy = -10, -50
guard.sparkno = S8001
hitsound = S8000, 5
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-6
airguard.velocity = -2,-3
air.type = Low
air.velocity = -4,-6
air.hittime = 12
air.fall = 1
fall = 1

[State 1550, Gravity]
type = Gravity
trigger1 = MoveContact

[State 1550, 4]
type = ChangeState
trigger1 = MoveContact
value = 1560

[State 1550, 5]
type = ChangeState
trigger1 = Vel Y > -30
trigger1 = Pos Y >= 0
value = 1570

[State 1550, 6]
type = ChangeState
trigger1 = Time >= 25
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Angel Dive
[Statedef 1551]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7135 +(var(23))
sprpriority = 2
poweradd = 80

[State 1550, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 3

[State 1551]
type = PlaySnd
trigger1 = AnimElem = 3
value = 54,18

[State 1551]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250,1
channel = 5

[State 1551, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 9
y = 4

[State 1551, 3]
type = HitDef
trigger1 = time = 0 ;AnimElem = 4
;trigger2 = AnimElem = 5
;trigger3 = AnimElem = 6
;trigger4 = AnimElem = 7
attr = A, SA
damage = 50, 5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 5
sparkno = S8222
sparkxy = -10, -50
guard.sparkno = S8001
hitsound = S8000, 5
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-6
airguard.velocity = -2,-3
air.type = Low
air.velocity = -4,-6
air.hittime = 12
air.fall = 1
fall = 1

[State 1551, 4]
type = ChangeState
trigger1 = MoveContact
value = 1560

[State 1551, 5]
type = ChangeState
trigger1 = Vel Y > -30
trigger1 = Pos Y >= 0
value = 1570

[State 1551, Gravity]
type = Gravity
trigger1 = MoveContact

[State 1551, 6]
type = ChangeState
trigger1 = Time >= 30
value = 50
ctrl = 1

;---------------------------------------------------------------------------

; Angel Dive
[Statedef 1552]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 7145 +(var(23))
sprpriority = 2
poweradd = 80

[State 1550, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 3

[State 1552]
type = PlaySnd
trigger1 = AnimElem = 3
value = 54,18

[State 1552]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1250,1
channel = 5

[State 1552, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 12
y = 3

[State 1552, 3]
type = HitDef
trigger1 = time = 0;trigger1 = AnimElem = 3
;trigger2 = AnimElem = 4
;trigger3 = AnimElem = 5
;trigger4 = AnimElem = 6
;trigger5 = AnimElem = 7
attr = A, SA
damage = 50, 5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 5
sparkno = S8222
sparkxy = -10, -50
guard.sparkno = S8001
hitsound = S8000, 5
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-6
airguard.velocity = -2,-3
air.type = Low
air.velocity = -4,-6
air.hittime = 12
air.fall = 1
fall = 1

[State 1560, Gravity]
type = Gravity
trigger1 = MoveContact

[State 1552, 4]
type = ChangeState
trigger1 = MoveContact
value = 1560

[State 1552, 5]
type = ChangeState
trigger1 = Vel Y > -30
trigger1 = Pos Y >= 0
value = 1570

[State 1552, 6]
type = ChangeState
trigger1 = Time >= 35
value = 50
ctrl = 1


;---------------------------------------------------------------------------

; Angel Dive Hit
[Statedef 1560]
type    = A
movetype= A
physics = N
juggle  = 1
velset = -2,-7
ctrl = 0
anim = 7126 +(var(23))
sprpriority = 2

[State 71200, 3]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 4
trigger3 = animelem = 5
trigger4 = animelem = 6
attr = A, SA
damage = 10, 2
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 1,1
sparkno = S8222
sparkxy = -10, -50
guard.sparkno = S8001
hitsound = S8000, 5
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4,-6
airguard.velocity = -2,-3
air.type = Low
air.velocity = -4,-6
air.hittime = 12
air.fall = 1
fall = 0

[State 1560, Gravity]
type = Gravity
trigger1 = MoveContact

[State 1560, 5]
type = ChangeState
trigger1 = Time >= 12
value = 50
ctrl = 1

[State 1560, 1]
type = VelAdd
trigger1 = 1
y = 0.9

[State 1560, 2]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > -20
trigger1 = Pos Y >= 0
value = 1201

;---------------------------------------------------------------------------
; Angel Dive Land
[Statedef 1570]
type    = C
movetype= I
physics = C
juggle  = 1
velset = 15,0
ctrl = 0
anim = 46 +(var(23))
sprpriority = 2

[State 1570, 1]
type = PosSet
trigger1 = AnimElem = 1
y = 0


[State 1570, MakeDust]
type = MakeDust
trigger1 = Vel X > 0
pos = 0,0
spacing = 3

[State 1570, 4]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 11

[State 1570, 5]
type = ChangeState
trigger1 = Time >= 10
value = 11
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 1400]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0,0
anim = 3900 +(var(23))
ctrl = 0
sprpriority = 2

[State 1400, VelSet]
type = VelSet
trigger1 =  animelem = 4
x = -3
y = -8

[State 1400, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 0
y = 0

[State 1400, 8]
type = ChangeState
trigger1 = animelem = 12
value = 1403
ctrl = 0

[State 1400, 8]
type = ChangeState
trigger1 = animtime=0
value = 50
ctrl = 0



; Air Swoop
[Statedef 1403]
type = A
movetype = A
physics = N
anim = 7127 +(var(23))
ctrl = 0

[State 1403, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[state 700,blur]
type = afterimage
trigger1 = AnimElem = 1
length = 45
PalBright   =  0,0,0;320, 320, 320
PalContrast =  120,120,220;0, 0, 0
PalAdd      =  0,0,0;80,80,100
PalMul      = 1,1,1;.50,.50,.50
TimeGap  = 1
FrameGap = 8
Trans = Add
time = 50

[State 1403, VarSet]
type = VarSet
trigger1 = Time <= 1
v = 26
value = 0

[State 1430]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,0

[State 1430]
type = PlaySnd
trigger1 = AnimElem = 3
value = 500,1

[State 1430]
type = PlaySnd
trigger1 = AnimElem = 4
value = 54,17

[State 1430]
type = PlaySnd
trigger1 = AnimElem = 5
value = 500,1

[State 140]
type = PlaySnd
trigger1 = AnimElem = 6
value = 54,18

[State 1403, PowerAdd]
type = PowerAdd
trigger1 = Var(26) > 0
trigger1 = Anim = 7127
trigger1 = AnimElem = 1,2
value = 60

[State 1403, Width]
type = Width
trigger1 = Var(26) = 0
trigger1 = Anim = 7127
value = 25,25

[State 1404, Width]
type = Width
trigger1 = Var(26) > 0
trigger1 = Anim = 7127
value = 50,50

[State 1403, VelSet]
type = VelSet
trigger1 = Time = 0
x = 12
y = Var(25)

[State 1403, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 10, 8
channel = 0

[State 1403, VelAdd]
type = VelAdd
trigger1 = Time > 0
trigger1 = Time < 30
trigger1 = Vel Y > 0
y = -1

[State 1403, VelSet]
type = VelSet
trigger1 = Time > 0
trigger1 = Time < 30
trigger1 = Vel Y < 0
y = 0

[State 1403, VelAdd]
type = VelAdd
trigger1 = Time > 30
y = .5

[State 1403, Explod]
type = Explod
trigger1 = animelem = 3
anim = 7130
ID = 1603
pos = 0,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 30
vel = 0,0
scale = 1,1.25
sprpriority = 10
ontop = 1

[State 1403, RemoveExplod]
type = RemoveExplod
trigger1 = Time > 30
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
id = 1403


[State 1403, 2]
type = HitDef
triggerall = Var(2) = 0
trigger1 = Time = 0
attr = A, SA
damage = 13, 3
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 1
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

[State 1403, 2]
type = HitDef
triggerall = Var(2) > 0
trigger1 = Time = 0
attr = A, SA
damage = 13, 2
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 2, Hit
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
air.velocity = -6,-1
air.hittime = 16

[State 1403, Drill]
type = Explod
trigger1 = Anim = 7127
trigger1 = AnimElem = 3
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

[State 71110, Remove]
type = RemoveExplod
trigger1 = Anim = 1111
id = 1115

[State 1403, 2]
type = HitDef
triggerall = Var(2) = 0
trigger1 = TimeMod = 5,0
attr = A, HA
damage = 9, 1
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 2
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
air.velocity = -5,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 1403, 2]
type = HitDef
triggerall = Var(2) > 0
trigger1 = TimeMod = 5,0
attr = A, HA
damage = 9, 1
getpower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 2
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
air.velocity = -5,-1
air.hittime = 16
air.fall = 1
fall = 1

[State 1403, State]
type = ChangeState
triggerall = Time > 10
triggerall = Anim = 7127
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 50

[State 1403, State]
type = ChangeState
trigger1 = Time > 30
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;---------------------------- Archangel Specials--------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Pinots (Wing Daggers) Z
[Statedef 1703]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1004
poweradd = 80

[State 1703, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S15,0

[State 1703, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S13,1

[State 1703, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S500,1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (9 - Random/250),(0 - Random/500)
attr = S, SP
damage = 10,3
sparkno = s8002
guardsparkno = S8001
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (9 - Random/250),(0 - Random/500)
attr = S, SP
damage = 10,5
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (9 - Random/250),(0 - Random/500)
attr = S, SP
damage = 10,5
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (9 - Random/250),(0 - Random/500)
attr = S, SP
damage = 10,5
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (9 - Random/250),(0 - Random/500)
attr = S, SP
damage = 10,5
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (9 - Random/250),(0 - Random/500)
attr = S, SP
damage = 10,5
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (9 - Random/250),(0 - Random/500)
attr = S, SP
damage = 10,5
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Pinots (Wing Daggers) X

[Statedef 1704]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1004
poweradd = 80

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S15,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S13,1

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S500,1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (19 - Random/250),(0 - Random/500)
attr = S, SP
damage = 55,5
getpower = 1
givepower = 2
sparkno = s8002
guardsparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Pinots (Wing Daggers) Y

[Statedef 1705]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1004
poweradd = 80


[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S15,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S13,1

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S500,1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
projid = 1000
offset = 70, (-60 + Random/50)
velocity = (12 - Random/250),(0 - Random/500)
attr = S, SP
damage = 15,3
sparkno = s8002
guardsparkno = S8001
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
offset = 70, (-60 + Random/50)
velocity = (12 - Random/250),(0 - Random/500)
attr = S, SP
damage = 15,3
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8002
guardsparkno = S8001
pausetime = 5,5
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
offset = 70, (-60 + Random/50)
velocity = (12 - Random/250),(0 - Random/500)
attr = S, SP
damage = 15,3
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1000
projhitanim = 1001
projcancelanim = 1001
projhits = 1
offset = 70, (-60 + Random/50)
velocity = (12 - Random/250),(0 - Random/500)
attr = S, SP
damage = 15,3
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = s8002
guardsparkno = S8001
hitsound = S19,3
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------

;Air Pinots (Wing Daggers)
[Statedef 1050]
type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3900+(var(23))
poweradd = 80

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S15,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S13,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S1250,1

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
damage = 10,3
getpower = 1
givepower = 2
sparkno = s8002
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,1
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3900, End]
type = ChangeState
trigger1 = animtime=0
value = 1201
ctrl = 1

;---------------------------------------------------------------------------------------------
;Special1_Y

;---------------------------------------------------------------------------------------------
;Air Pinots (Wing Daggers)
[Statedef 1060]
type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3900+(var(23))
poweradd = 80

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S15,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S13,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S1250,1

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
damage = 5,2
getpower = 1
givepower = 2
guardflag = MA
sparkno = S8022
guard.sparkno = S8001
pausetime = 5,5
hitsound = S19,1
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

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
damage = 5,2
getpower = 1
givepower = 2
sparkno = S8022
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,1
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

[State 3900, End]
type = ChangeState
trigger1 = animtime=0
value = 1201
ctrl = 1

;---------------------------------------------------------------------------------------------
;Special1_Z

;---------------------------------------------------------------------------------------------
;Air Pinots (Wing Daggers)
[Statedef 1070]
type = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3900+(var(23))
poweradd = 80

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S15,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S13,0

[State 1705, PlaySnd]
type = PlaySnd
trigger1 = animelem = 11
value = S1250,1

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
damage = 3,1
getpower = 1
givepower = 2
guardflag = MA
sparkno = s8222
guard.sparkno = S8001
pausetime = 5,5
hitsound = S19,1
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

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
damage = 3,1
sparkno = s8222
guard.sparkno = S8001
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
hitsound = S19,1
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1

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
damage = 3,1
getpower = 1
givepower = 2
sparkno = s8222
guard.sparkno = S8001
guardflag = MA
pausetime = 5,5
hitsound = S19,1
guardsound = S19,2
ground.type = High
ground.slidetime = 3
ground.hittime = 3
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.velocity = -2.5,-5.5
air.juggle = 3
air.fall = 1


[State 3900, End]
type = ChangeState
trigger1 = animtime=0
value = 1201
ctrl = 1
;---------------------------------------------------------------------------
;Falling

[Statedef 1201]
type    = A
movetype= I
physics = A
anim = 1201+(var(23))
sprpriority = 1

[State 1201, Ctrl]
type = CtrlSet
trigger1 = prevstateno = 4100
value = 0

[State 1201, Ctrl]
type = CtrlSet
triggerall = prevstateno != 4100
trigger1 = Var(12) = 0
value = 0

[State 1201, Ctrl]
type = CtrlSet
triggerall = prevstateno != 4100
trigger1 = Var(12) = 1
value = 1

[State 1201, Turn]
type = Turn
trigger1 = P2Dist X < -5

[State 1201, VelSet]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 1201, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52
;---------------------------------------------------------------------------------------------


