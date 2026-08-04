;---------------------------------------------------------------------------
; Flight Mode / Statedef's : 2000 - 2999
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Flight
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------
;===FLIGHT=====
[Statedef 1100]
type = A
movetype = I
physics = N
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1100+(var(23))
sprpriority = 2

[State 2000, 1]
type = VelSet
trigger1 = time <10
x = 0
y = -6

[State 1100, 2]
type = ChangeState
trigger1 = Time = 10
value = 1110
ctrl = 0

[Statedef 1110]
type = A
movetype = I
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = -3
y = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 2
y = -1

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 3
value = 8401,0

[State 1530]
type = PlaySnd
trigger1 = AnimElem = 7
value = 8401,1

[State 2001, 1]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y <= 0
trigger1 = Anim != 1110+(var(23))
value = 1110+(var(23))

[State 2001, 2]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = vel Y > 0
trigger1 = Anim != 1110+(var(23))
value = 1110+(var(23))

[State 2001, 3]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y <= 0
trigger1 = Anim != 1110+(var(23))
value = 1110+(var(23))

[State 2001, 4]
type = ChangeAnim
trigger1 = vel x < 0
trigger1 = vel Y > 0
trigger1 = Anim != 1110+(var(23))
value = 1110+(var(23))

[State 2001, 5]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y <= 0
trigger1 = Anim !=1110+(var(23))
value = 1110+(var(23))

[State 2001, 6]
type = ChangeAnim
trigger1 = vel x > 0
trigger1 = vel Y > 0
trigger1 = Anim != 1110+(var(23))
value = 1110+(var(23))


[State 2001, 7]
type = Turn
trigger1 = p2dist X < -30;< 0
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"

[State 2001, 8]
type = VelSet
trigger1 =  command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 2001, 9]
type = VelSet
trigger1 =  command != "holdfwd"
trigger1 =  command != "holdback"
x = 0

[State 2001, 10]
type = VelSet
trigger1 =  command = "holdback"
x = -const(velocity.walk.fwd.x)

[State 2001, 11]
type = VelSet
trigger1 = command = "holddown"
trigger1 = pos y < 0
y = const(velocity.walk.fwd.x)

[State 2001, 12]
type = VelSet
trigger1 = command != "holddown"
trigger1 = command != "holdup"
trigger2 = pos y >=0
y = 0

[State 2001, 13]
type = VelSet
trigger1 = !(screenpos y < 80)
trigger1 =  command = "Flight";"holdup"
y = -const(velocity.walk.fwd.x)

[State 2001, 14]
type = VelSet
trigger1 = !(screenpos y >= 80)
trigger1 =  command = "Flight";"holdup"
y = 0

[State 1110, 2]
type = ChangeState
trigger1 = Time = 150
value = 50
ctrl = 1


[State 1110, Drop]
type = ChangeState
trigger1 = Command = "FlightEnd";"holddown"
trigger2 = Win = 1
trigger3 = Lose = 1
value = 50
ctrl = 1
;~O~O~O~O~O~O~O~O~O~O~O~O~O~O~O~O~O~O~O~
;-------------------------------------
;=== BEGIN FLIGHT CODE=======================
;-------------------------------------
;FLY X
[Statedef 1111]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 20
velset = 0,0
ctrl = 0
anim = 601+(var(23))

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8401, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
;trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,5
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 10000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 1110
ctrl = 1

;FLY Y
[Statedef 1112]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 40
velset = 0,0
ctrl = 0
anim = 611+(var(23))

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8401, 1

[State 610, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 10010, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 1110
ctrl = 1

;FLY Z
[Statedef 1113]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd= 60
ctrl = 0
anim = 621+(var(23))

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8401, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 40,5
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
ground.type = High
air.type = Low
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 10020, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 1110
ctrl = 1

;FLY A
[Statedef 1114]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd= 20
ctrl = 0
anim = 631+(var(23))

[State 10000, STOP]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8401, 0

[State 630, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 5,5
sparkno = s8002
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)

[State 10030, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 1110
ctrl = 1

;FLY B
[Statedef 1115]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 40
velset = 0,0
ctrl = 0
anim = 641+(var(23))

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8401, 1

[State 640, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,7
sparkno = s8022
sparkxy = -15,-49
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)

[State 10040, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 1110
ctrl = 1

;FLY C
[Statedef 1116]
type    = A
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd= 60
ctrl = 0
anim = 651+(var(23))

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8401, 2

[State 650, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7,7
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
ground.type = High
air.type = Low
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 10050, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 1110
ctrl = 1

;---------------------------------------------------------------------------
; Air Dash
;---------------------------------------------------------------------------
[Statedef 1117]
type    = A
movetype= A
physics = N
anim = 100+(var(23))
sprpriority = 1
velset = 0,0

[State 100, snd]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0

[State 107, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 107, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 107, 3] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 107, 4] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 107, 2]
type = VelSet
trigger1 = animtime=0
x = 0

[State 107, End]
type = ChangeState
trigger1 = Animtime = 0
value = 50; 1110

;---------------------------------------------------------------------------
; Air Dash Back
;---------------------------------------------------------------------------
[Statedef 1118]
type    = A
movetype= A
physics = N
anim = 105+(var(23))
sprpriority = 1
velset = 0,0


[State 108, 1]
type = AfterImage
trigger1 = time = 0
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 108, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.back.x)

[State 108, 3] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 108, 4] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn


[State 107, 2]
type = VelSet
trigger1 = animtime=0
x = 0

[State 107, End]
type = ChangeState
trigger1 = Animtime = 0
value = 50; 1110

;---FLY SPECIALS--------------------------
;---------------------------------------------------------------------------------------------

;Air Feathers _X
[Statedef 1119]
type = A
movetype= A
physics = N
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
value = S500,1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projhits = 1
projid = 11000
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 10,3
getpower = 1
givepower = 2
sparkno = S8002
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
value = 50; 1110
ctrl = 1


;---------------------------------------------------------------------------------------------
;Air Feathers_Y

[Statedef 1120]
type = A
movetype= A
physics = N
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
value = S500,1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projhits = 1
projid = 11000
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
projhits = 1
projid = 11000
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

[State 3900, End]
type = ChangeState
trigger1 = animtime=0
value = 50; 1110
ctrl = 1

;---------------------------------------------------------------------------------------------
;Air Feathers_Z

[Statedef 1121]
type = A
movetype= A
physics = N
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
value = S500,1

[State 1000, 1]
type = Projectile
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
projanim = 3901
projhitanim = 3902
projhits = 1
projid = 11000
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 3,1
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = S8222
guard.sparkno = S8001
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
projhits = 1
projid = 11000
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 3,1
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = S8222
guard.sparkno = S8001
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
projhits = 1
projid = 11000
offset = (-100 + Random/5),(-120 + Random/50)
velocity = (9 - Random/250),(9 - Random/250)
attr = S, SP
damage = 3,1
getpower = 1
givepower = 2
guardflag = MA
pausetime = 5,5
sparkno = S8222
guard.sparkno = S8001
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
value = 50; 1110
ctrl = 1

;---------------------------------------------------------------------------------------------
;Air Wind
[Statedef 1122]
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
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Flight Cancel
[Statedef 1125]
type    = A
movetype= I
physics = N
juggle  = 3
ctrl = 0
velset = 0,0
sprpriority = 2


[State 1331]
type = ChangeAnim
trigger1 = Time = 0
value = 44
elem = 3


[State 1331]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.35



[State 1331]
type = CtrlSet
trigger1 = Time = 1
value = 1


[State 1331]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0
