;---------------------------------------------------------------------------
; Basics CNS File
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------
;;------------------------------------------------------------
;Win Poses

[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,500

[state 181, Assert]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 180, 2]
type = ChangeState
trigger1 = Var(1) = [0,100]
value = 181

[State 180, 3]
type = ChangeState
trigger1 = Var(1) = [101,200]
value = 182

[State 180, 4]
type = ChangeState
trigger1 = Var(1) = [201,300]
value = 183

[State 180, 4]
type = ChangeState
trigger1 = Var(1) = [301,400]
value = 184

[State 180, 4]
type = ChangeState
trigger1 = Var(1) = [401,500]
value = 185

;---------------------------------------------------------------------------------------------
;Win Pose 1

[Statedef 181]
type = S
movetype = I
physics = S
ctrl = 0
anim = 181+(var(23))
velset = 0,0

[state 181, Assert]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 181, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = animelem = 5
value = S501,0

[State 181, VelSet]
type = VelSet
trigger1 = var(23) = 0
trigger1 = Animelem = 13
x = 0
y = -5

[State 181, VelSet]
type = VelSet
trigger1 = var(23) = 10000
trigger1 = Animelem = 3
x = 0
y = -5

[State 181, AfterImage]
type = AfterImage
trigger1 = var(23) = 0
trigger1 = AnimElem = 5
time = 40

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = animelem = 1
value = S501,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S13,2
channel = 5

[State 181, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------------------------
;Win Pose 2

[Statedef 182]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1110+(var(23))
velset = 0,-3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = animelem = 1
value = S502,7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = time = 0
value = S501,12
Channel = 5

[state 181, Assert]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 182, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------------------------
;Win Pose 3

[Statedef 183]
type = S
movetype = I
physics = S
ctrl = 0
anim = 183+(var(23))
velset = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[state 181, Assert]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = animelem = 8
value = S502,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = animelem = 1
value = S501,10

[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 183,1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;------------------------------------------------------------------------------
;Win Pose 4
[Statedef 184]
type = S
movetype = I
physics = S
ctrl = 0
anim = 182+(var(23))
velset = 0,0

[state 181, Assert]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = animelem = 6
value = S501,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = animelem = 13
value = S92,2
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = animelem = 1
value = S501,3
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = animelem = 8
value = S92,2
channel = 4


[State 182, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184,1]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = RoundNotOver

;------------------------------------------------------------------------------
;;Win Pose 5
[Statedef 185]
type = S
movetype = I
physics = S
ctrl = 0
anim = 183+(var(23))
velset = 0,0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[state 185, Assert]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 185, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = animelem = 1
value = S502,10

[State 185, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = animelem = 1
value = S501,9

[State 185, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------------------------------------------------
;Introductions

[Statedef 190]
type = S

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
triggerall = var(23)=0
value = 191 + ((Random * 4) / 1000)     ; change the 1 to however many intros you have

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
triggerall = var(23)=10000
value = 196 + ((Random * 3) / 1000)


;---------------------------------------------------------------------------------------------
;Intro 1
[Statedef 191]
type = S
movetype = I
physics = N
ctrl = 0
anim = 184
velset = 0,0
spriority = 0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,100

[State 190, PlaySnd]
type = PlaySnd
trigger1 = Var(1) = [1,50]
trigger1 = animelem = 2
value = S502,1
volume = 255
channel = 4

[State 190, PlaySnd]
type = PlaySnd
trigger1 = Var(1) = [50,100]
trigger1 = animelem = 10
value = S502,4
volume = 255
channel = 4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Dust1]
type = explod
trigger1 = Time = 0
persistent = 0
sprpriority = 2
pos = -110,0
anim = 7000
scale = 1,1

[State 190, Dust2]
type = explod
trigger1 = Time = 0
persistent = 0
sprpriority = 2
pos = 8,8
anim = 7000
scale = 1,1

[State 190, AterrisageEffect]
type = explod
trigger1 = Time = 70
persistent = 0
sprpriority = 0
pos = 0,10
anim = 8510
scale = 1,1

[State 190, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-------------------------------------------------------------------------------

;Intro 2
[Statedef 192]
type = S
movetype = I
physics = N
ctrl = 0
anim = 191
velset = 0,0
spriority = 1

[State 192, PalFX]
type = PalFX
trigger1 = animelem = 4
time = 30
add = 155,20,200
mul = 216,96,156
sinadd = 0,210,50,110
invertall = 0
color = 256

[State 192, AterrisageEffect]
type = explod
trigger1 = Time = 35
persistent = 1
sprpriority = 0
pos = 0,10
anim = 194
scale = 1.1,1.1

[State 192, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1944
ID = 1944
pos = -20,-60
postype = p1
facing = -1
vfacing = 1
bindtime = 1
vel = -8,0
accel = -1,0
random = 2,0
removetime = -2
scale = 2,1
sprpriority = 2
ontop = 1

[State 192, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1944
ID = 1944
pos = 20,-60
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 8,0
accel = 1,0
random = 2,0
removetime = -2
scale = 2,1
sprpriority = 2
ontop = 1

[State 192, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1944
ID = 1944
pos = -15,-40
postype = p1
facing = -1
vfacing = 1
bindtime = 1
vel = -8,-3
accel = -1,-1
random = 2,0
removetime = -2
scale = 1,1.5
sprpriority = 2
ontop = 1

[State 192, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1944
ID = 1944
pos = 15,-40
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 8,-3
accel = 1,-1
random = 2,0
removetime = -2
scale = 1,1.5
sprpriority = 2
ontop = 1

[State 192, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1944
ID = 1944
pos = -10,-50
postype = p1
facing = -1
vfacing = 1
bindtime = 1
vel = -8,-4
accel = -1,-2
random = 2,0
removetime = -2
scale = 2,1
sprpriority = 2
ontop = 1

[State 192, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1944
ID = 1944
pos = 10,-50
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 8,-4
accel = 1,-2
random = 2,0
removetime = -2
scale = 2,1
sprpriority = 2
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S15,0
channel = 5
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = S15,0
channel = 5
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S15,0
channel = 5
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
value = S15,0
channel = 5
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S15,0
channel = 5
[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S13,2
channel = 4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------------------------
;Intro3
[Statedef 193]
type = S
movetype = I
physics = N
ctrl = 0
anim = 193
velset = 0,0
spriority = 0

[State 0, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 6,8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, Dust1]
type = explod
trigger1 = Time = 0
persistent = 0
sprpriority = 2
pos = -10,0
anim = 7000
scale = 1,1

[State 193, Dust2]
type = explod
trigger1 = Time = 0
persistent = 0
sprpriority = 2
pos = 8,8
anim = 7000
scale = 1,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S502,2
channel = 5

[State 193, AterrisageEffect]
type = explod
trigger1 = Time = 70
persistent = 0
sprpriority = 0
pos = 0,10
anim = 8510
scale = 1,1

[State 193, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------------------------
;Intro 2a
[Statedef 194]
type = S
movetype = I
physics = N
ctrl = 0
anim = 192
velset = 0,0
spriority = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 192

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S86,2
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = S501,11
channel = 5


;---------------------------------------------------------------------------------------------
;Taunt

[Statedef 195]
type = A
movetype = I
physics = N
ctrl = 0
anim = 195+(var(23))
velset = 0,0
sprpriority = 0

[State 195, VarSet]
type = VarRandom
trigger1 = time =0
v = 1
range = 0,200

[State 195, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = Var(1) = [1,100]
trigger1 =  AnimElem = 1
value = 502,3
channel = 3

[State 195, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 0
trigger1 = Var(1) = [101,200]
trigger1 =  AnimElem = 1
value = 502,4
channel = 3

[State 195, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = Var(1) = [1,100]
trigger1 =  AnimElem = 1
value = 501,7
channel = 3

[State 195, PlaySnd]
type = PlaySnd
trigger1 = var(23) = 10000
trigger1 = Var(1) = [101,200]
trigger1 =  AnimElem = 1
value = 501,4
channel = 3

[State 195, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------------
;Intro 2a
[Statedef 196]
type = S
movetype = I
physics = N
ctrl = 0
anim = 192
velset = 0,0
spriority = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;192

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S86,2
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = S502,8
channel = 5
;---------------------------------------------------------------------------------------------

;Intro 2b
[Statedef 197]
type = S
movetype = I
physics = N
ctrl = 0
anim = 192
velset = 0,0
spriority = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;192

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S87,2
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 28
value = S502,0
channel = 5
Volume = 255
;---------------------------------------------------------------------------------------------
;Intro 2c
[Statedef 198]
type = S
movetype = I
physics = N
ctrl = 0
anim = 192
velset = 0,0
spriority = 0

[State 198, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 198, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S79,2
channel = 3

[State 198, PlaySnd]
type = PlaySnd
trigger1 = animelem = 28
value = S501,0
channel = 5

[State 198, PalFX]
type = PalFX
trigger1 = animelem = 4
time = 70
add = 155,20,200
mul = 216,96,156
sinadd = 0,210,50,110
invertall = 0
color = 256

[State 198, AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 1

[State 198, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 198, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;192
;---------------------------------------------------------------------------------------------



;---------------------------------------------------------------------------
; Standing Light Punch
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 200+(var(23))
poweradd = 20
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 200, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -10, -50
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 5,0
anim = 210+(var(23))
poweradd = 40
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 210, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.type = Low
air.hittime = 15
air.velocity = -6,-5
envshake.time = 1
envshake.ampl = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 210, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 220+(var(23))
poweradd = 60
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 220, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -30,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-4
air.type = Low
air.hittime = 18
air.velocity = -6,-7
envshake.time = 7
envshake.ampl = 4
fall=1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 10
y = 0
;ignorehitpause =
;persistent =

[State 220, VelSet]
type = VelSet
trigger1 = anim = 6
x = 0
y = 0
;ignorehitpause =
;persistent =


[State 220, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 230+(var(23))
poweradd = 20
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 230, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-65
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 240+(var(23))
poweradd = 40
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 240, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 240, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
Velset = 5,0
anim=250+(var(23))
poweradd= 60
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 250, 1]
type = PlaySnd
trigger1 = Time = 16
value = 8400, 2

[State 250, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = S,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5,5
sparkno = s8222
sparkxy = -15,-79
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250, End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400+(var(23))
poweradd = 20
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 400, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.velocity = -5,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 400, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410+(var(23))
poweradd = 40
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 410, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S6,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 14
ground.velocity = -4,0
air.velocity = -5,0
airguard.velocity = -6,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 410, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 420+(var(23))
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 40

[State 420, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 420, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C, NA
damage = 72,1
priority = 4, Hit
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12
envshake.time = 7
envshake.ampl = 4

[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430+(var(23))
poweradd = 20
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 430, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 28,1
animtype = Light
hitflag = MAF
guardflag = MA
priority = 2, Hit
pausetime = 8,8
sparkno = s8002
sparkxy = -15,-10
guard.sparkno = s8001
hitsound = s8000,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3,0
air.type = Low
air.hittime = 3
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 430, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440+(var(23))
poweradd = 40
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

[State 440, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 52,1
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 10,10
sparkno = s8022
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
air.type = Low
air.hittime = 5
air.velocity = -5,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 440, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
velset = 10,0
ctrl = 0
anim = 450+(var(23))
poweradd = 60
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 450, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = C,NA
damage = 72,1
animtype = High
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
ground.type = low;trip
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -10,0
air.type = Low
air.hittime = 5
air.velocity = -10,0
envshake.time = 7
envshake.ampl = 4

[State 450, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600+(var(23))
poweradd = 20
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

[State 600, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 28,1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 2, Hit
pausetime = 8,8
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
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 600, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Jumping Medium Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610+(var(23))
poweradd = 40
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

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
pausetime = 10,10
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
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 610, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Jumping Strong Punch
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620+(var(23))
poweradd=60
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

[State 620, HitDef]
type = HitDef
trigger1 = !movehit
trigger1 = !moveguarded
attr = A,NA
damage = 72,1
animtype = High
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12,12
sparkno = s8222
sparkxy = 0,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
air.hittime = 25
ground.velocity = -9
air.velocity = -7,17
fall = (enemynear,statetype = A)
air.fall = 1
fall.recover =0
envshake.time = 7
envshake.ampl = 4
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 620, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Jumping Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630+(var(23))
poweradd = 20
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 0

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
pausetime = 8,8
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
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 630, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Jumping Medium Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640+(var(23))
poweradd = 40
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 1

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
pausetime = 10,10
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
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 640, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Jumping Strong Kick
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
velset = 5,0
ctrl = 0
anim = 650+(var(23))
poweradd=60
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 6
value = 8400, 2

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
pausetime = 12,12
sparkno = s8222
sparkxy = -15,-59
guard.sparkno = s8001
hitsound = s8000,2
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
air.velocity = -17,7
air.fall = 1
fall.recover =0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------------------------
;Throw = Flight

[Statedef 1800]
type    = U
movetype= A
physics = N
juggle  = 1
velset = 0, 0
poweradd = 0
anim = 800
ctrl = 0
sprpriority = 0

[State 1800, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1800, VelSet]
type = VelSet
trigger1 = time = 32
x = 17
y = 0

[State 1800, Ground Flash]
type = Explod
trigger1 = time = 15
anim = 6666
ID = 8400
postype = P1
pos = -40,0
sprpriority = 3
ownpal = 1
supermovetime = 80

[State 1800, HitDef]
type = HitDef
trigger1 = animelem = 1
damage = 15,1
animtype = light
guardflag = MA
attr = SA, HA
hitflag = MA
priority = 1, Miss
pausetime = 0,0
sparkno = s7700
sparkxy = -10,-60
hitsound = 5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 2,0
air.type = Low
air.hittime = 15
air.velocity = 2,-5
envshake.time = 1
envshake.ampl = 1
p1stateno = 1810
p2stateno = 1815
id = 1815

[State 1800, 1] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 1800, 2] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1800, 4]
type = PlaySnd
trigger1 = time = 19
value = 8100,0

[State 1800, 5]
type = PlaySnd
trigger1 = AnimElem = 7
value = 2, 4

[State 1800, 6]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 1
ID = 41
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -1, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 1800, 7]
type = Explod
trigger1 = time < 15
trigger1 = (time % 4) = 0
ID = 42
anim = 2222
postype = p1
pos = -20, -40
bindtime = 1
removetime = -2
vel = -.8, 0
ownpal = 1
random = 20, 60
sprpriority = 2

[State 1800, 8]
type = VelAdd
triggerall = Vel X > 0
trigger1 = time > 15
x = -.3

[State 1800, 10]
type = ChangeState
trigger1 = time = 45
ctrl = 1
value = 0

;---------------------------
[Statedef 1810]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0, 0
poweradd = 0
anim = 1810
ctrl = 0
sprpriority = 7

[State 1810, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S54,18

[State 1810, VelSet]
type = VelSet
trigger1 = time = 2
x = 0
y = -7

[State 1810, VelSet]
type = VelSet
trigger1 = time = 40
x = 0
y = 0

[State 1810, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1810, TargetBind]
type = TargetBind
trigger1 = 1
id = 1815
pos = 100,3

[State 1810, ChangeAnim]
type = Changestate
trigger1 = time = 70
value = 1820

;---------------------------
[Statedef 1815]
type    = A
movetype= H
physics = N
velset = 0,0
ID = 1815
sprpriority = 7

[State 1815, VelSet]
type = VelSet
trigger1 = time = 2
x = 0
y = -3

[State 1815, VelSet]
type = VelSet
trigger1 = time = 10
x = 0
y = 0

[State 1800, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1815, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1815

[State 1815]
type = Changeanim2
trigger1 = P2stateno = 1820
trigger1 = Anim != 1825
value = 1825

[State 1815, VelSet]
type = VelSet
trigger1 = P2stateno = 1820
x = 0
y = .1

[State 1815, VelSet]
type = VelSet
trigger1 = P2stateno = 1821
x = 0
y = 9

[State 1815, LifeAdd]
type = LifeAdd
trigger1 = vel y = 9
value = -3

[State 1815, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------
[Statedef 1820]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0, 0
poweradd = 0
anim = 1820
ctrl = 0
sprpriority = 7

[State 1820, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S54,17

[State 1820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1820, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = .1

[State 1820, End]
type = ChangeState
trigger1 = time = 10
value = 1821
ctrl = 0

;---------------------------
[Statedef 1821]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0, 9
poweradd = 0
anim = 1821
ctrl = 0
sprpriority = 7

[State 1821, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 1821, End]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1840
ctrl = 1

;---------------------------

[Statedef 1840]
type    = S
physics = S
anim = 1840
ctrl = 0
sprpriority = 1

[State 1840, PosAdd]
type = PosAdd
trigger1 = animelem =1
x = 50
y = -40

[State 1840, 2]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 1840, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 1840, 4]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 1840, 5]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 1840, 6]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)
y = const(velocity.jump.y) - 2

[State 1840, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-----------------------------------------------------------------------
;Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
poweradd = 70
juggle = 1
anim = 8000
ctrl = 0
sprpriority = 2

[State 800, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 800, 2]
type = HitDef
trigger1 = Time = 0
trigger1 = P2BodyDist X < 40
attr = S, NT
hitflag = M
animtype  = Medium
damage    = 0, 0
priority  = 2
guardflag =
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-49
hitsound = S8600,0
guardsound = S1, 7
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = 0,0
p2stateno = 820
p1stateno = 805
numhits = 0

[State 800, 3]
type = PlaySnd
trigger1 = Time = 7
value = 5, 4

[State 800, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;--------------------------------------------------------------
;Throw - Bitting
[Statedef 805]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 80005
ctrl = 0
sprpriority = 2

[State 805, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 14
trigger6 = AnimElem = 18
value = 500,6

[State 805, 2]
type = TargetBind
trigger1 = Time = 0
time = 70
pos = 29, 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 14
trigger6 = AnimElem = 18
anim = 7770
pos = 30,-30
postype = p1
ontop = 1

[State 805, 3]
type = TargetDrop
trigger1 = AnimTime = 0

[State 805, 4]
type = HitAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 14
trigger6 = AnimElem = 18
value = 1

[State 805, 5]
type = Explod
trigger1 = AnimElem = 2, 3
trigger2 = AnimElem = 4, 3
trigger3 = AnimElem = 7, 3
trigger4 = AnimElem = 10, 3
trigger5 = AnimElem = 14, 3
trigger6 = AnimElem = 18, 3
anim = 6030
id = 805
postype = P2
pos = -4, -67
ontop = 1
ownpal = 1

[State 805, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 810
ctrl = 0

;-----------------------------------------------------------------------
;Throw - End
[Statedef 810]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 80010
ctrl = 0
sprpriority = 2

[State 810, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0
volume = 110

[State 810, 2]
type = PlaySnd
trigger1 = AnimElem = 3, 3
value = 1, 3
volume = 110

[State 810, 3]
type = VelSet
trigger1 = AnimElem = 3
x = -7
y = -3

[State 810, 5]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
physics = A

[State 810, 6]
type = StateTypeSet
trigger1 = Time > 23
statetype = S
physics = S

[State 810, 7]
type = VelSet
trigger1 = Time > 23
y = 0

[State 810, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 1

;-----------------------------------------------------------------------
;Thow - P2 - Bitting
[Statedef 820]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 915, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 80020

[State 820, 2]
type = LifeAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
trigger6 = AnimElem = 19
value = -50

[State 820, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 501, 10
volume = 110

[State 820, 3]
type = LifeAdd
trigger1 = Time = 85
value = -30

[State 820, 7]
type = ChangeState
trigger1 = Time = 85
value = 825

;-----------------------------------------------------------------------
; Throw - P2 - Kick
[Statedef 825]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 5061

[State 825, 1]
type = VelSet
trigger1 = Time = 0
x = -13.5
y = -4.5

[State 825, 2]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 825, 7]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;-----------------------------------------------------------------------
; Throw - P2
[Statedef 804]
type    = A
physics = N
movetype = H
ctrl = 0
anim = 804

[State 825, 1]
type = VelSet
trigger1 = Time = 0
x = -3.5
y = -4.5

[State 825, 2]
type = VelAdd
trigger1 = Time > 2
y = 0.45

[State 825, 7]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;---------------------------------------------------------------------------
; HIT_LIEDEAD
;---------------------------------------------------------------------------
[Statedef 835]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 2] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 3] ;Match over anim
type = ChangeAnim
persistent = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 4] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 5] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 6] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, End]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 820]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;---------------------------------------------------------------------------




