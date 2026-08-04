
;-------------COMMON STATES

[Statedef 725]
type=C
physics=C
movetype=I
anim=725
velset=0,0
ctrl=0
sprpriority=-1
[State 725, snd]
type=playsnd
trigger1=animelem=1
value=3,ifelse(random<500,1,2)
channel=0
[State 725, snd]
type=playsnd
trigger1=animelem=1
value=5,4
[State 725, vel]
type=velset
trigger1=animelemtime(2)>=0&&animelemtime(6)<0
x=-5
[State 725, push]
type=playerpush
trigger1=1
value=0
[State 725, hb]
type=hitby
trigger1=animelemtime(9)<0
value=SCA,AT
time=1
[State 725, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1



;====================<STANDING>====================
[Statedef 0]
type=S
physics=S
movetype=I
velset=0,0
sprpriority=0

[State 0, gone]
type=removeexplod
trigger1=ishelper
[State 0, gone]
type=destroyself
trigger1=ishelper

[State 0, ChangeAnim]
type = Changestate
triggerall = prevstateno = 192
trigger1 = var(14) = 0
value = 193




[State 0, anim]
type=changeanim
trigger1=anim!=(var(40)>0)&&anim!=5
trigger2=anim=5&&!animtime
value=(var(40)>0)
[State 0, pos]
type=posset
trigger1=!time
y=0
[State 0, dead]
type=changestate
trigger1=!alive
value=5050


;==========<WALK>==========
[Statedef 20]
type=S
physics=S
sprpriority=0
[State 20, vel]
type=velset
trigger1=1
x=ifelse(command="holdfwd",const(velocity.walk.fwd.x),ifelse(command="holdback",const(velocity.walk.back.x),vel x))
[State 20, anim]
type=changeanim
triggerall=vel x>0
trigger1=anim!=20&&anim!=5
trigger2=anim=5&&!animtime
value=20
[State 20, anim]
type=changeanim
triggerall=vel x<0
trigger1=anim!=21&&anim!=5
trigger2=anim=5&&!animtime
value=21

postype=p1
pos=ifelse(!animelemtime(1),14,-24),ifelse(!animelemtime(1),-96,-92)
sprpriority=ifelse(!animelemtime(1),-1,2)
bindtime=-1
removetime=-1
removeongethit=1



;---------------------------------------------------------------------------
; Jump Start
;---------------------------------------------------------------------------
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = AfterImage
triggerall = !time
trigger1 = prevstateno = 100
trigger2 = prevstateno = 11
trigger3 = prevstateno = 12
trigger4 = prevstateno = 10
time 		= 15
timegap		= 2
framegap 	= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, 0, .50
palcontrast 	= 100,50,150
trans 		= add

[State 40, 2]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 4]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 6]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)
y = const(velocity.jump.y) - 2

[State 40, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; AirJump Start
;---------------------------------------------------------------------------
[Statedef 45]
type    = A
physics = N
ctrl = 0
velset = 0,0

[State 45, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 45, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 45, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 45, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 45, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 45, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 45, 7]
type = Turn
trigger1 = p2dist X < -4
trigger1 = Time = 0

[State 45, End]
type = ChangeState
trigger1 = Time = 2
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Up
;---------------------------------------------------------------------------
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
;---------------------------------------------------------------------------
[Statedef 51]
type    = A
physics = A

[State 51, 1]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
; Jump Land
;---------------------------------------------------------------------------
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52]
type = Turn
trigger1 = P2dist X < -30

[State 52, 3]
type = CtrlSet
trigger1 = Time = 1
value = 1

[state 1051, land explod]
type = helper
trigger1 = time = 0 & numhelper(8010) = 0
name = "land explod"
id = 77010
stateno = 77010
postype = p1
pos = 0,0
sprpriority = -1
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 52, snd]
type=playsnd
trigger1=!time
value=0,52

[State 52, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;dust land explod
[statedef 77010]
type = a
movetype = i
physics = n
anim = 9999
velset = 0,0
sprpriority = -1

[state 8010]
type = explod
trigger1 = time = 0
pausemovetime = 100
supermovetime = 100
removetime = 20
bindtime = -1
anim = 8005
pos = 10, 5
scale = 0,0
sprpriority = -5
id = 8005
removeongethit = 1

[state 8010]
type = modifyexplod
trigger1 = 1
id = 8005
scale = ifelse(time<=6,time/6.0,1+(time-4)/30.0),ifelse(time<=6.0,time/9.0,0.5+(time-4)/30.0)

[state 8010,1]
type = palfx
trigger1 = time = 0
time = 5
add = 0,0,0
color = 0

[state 8010,1]
type = palfx
trigger1 = time = [5,20]
time = 1
add = ceil(-time/7.0*100),ceil(-time/7.0*100),ceil(-time/7.0*100)
color = 0

[state 8080, remove]
type = Destroyself
trigger1 = time >= 20

;---------------------------------------------------------------------------
; Super Jump
;---------------------------------------------------------------------------
[statedef 700]
type = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1


[State 700, 1]
type = VelSet
trigger1 = !Animtime
y = const(velocity.jump.y)*1.50

[State 700,end]
type = ChangeState
trigger1 = AnimTime = 0
value = 701
ctrl = 1


[statedef 701]
type = A
physics = A
anim = 41

[State 0,PlaySnd]
type = PlaySnd
trigger1 = Time = 2
value = 7, 9



[State 660, 2]
type = Explod
trigger1 = !time
ID = 8004
anim = 8004
postype = p1
pos = 0, 15
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 2

[state 700,blur]
type = afterimage
trigger1 = time = 1
length = 30;100
PalBright   =  0,0,0;320, 320, 320
PalContrast =  120,120,220;0, 0, 0
PalAdd      =  0,0,0;80,80,100
PalMul      = 1,1,1;.50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20


[State 7001, VelAdd]
type = VelAdd
triggerall = Vel X >= -2
trigger1 = command = "holdback"
trigger1 = Anim != 43
x = -1.60

[State 7001, VelAdd]
type = VelAdd
triggerall = Vel X <= 2.5
trigger1 = command = "holdfwd"
trigger1 = Anim != 42
x = 1.60

[State 7001, VelSet]
type = VelSet
trigger1 = Anim = 42
trigger1 = Time = [0,5]
x = 4

[State 7001, VelSet]
type = VelSet
trigger1 = Anim = 43
trigger1 = Time = [0,5]
x = -3.5

[state 701, noturn]
type = assertspecial
trigger1 = 1
flag = noautoturn


[State 0, ]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 0, ]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 7711]
type = turn
trigger1 = p2dist x < -5


;------------------
;Superjump follow
[Statedef 9004]
type = A
physics = N
velset = 1,-11.5
ctrl = 0

[State 9004, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 41

;[State 9004, PlaySnd]
;type = PlaySnd
;trigger1 = Time = 0
;value = *,*

[state 9004, CtrlSet]
type = CtrlSet
trigger1 = Time >= 1
value = 1

[state 9004, VelSetFwd]
type = VelAdd
trigger1 = command = "holdfwd"
trigger1 = var(59) = 0
trigger2 = var(59) = 1
x = .1

[state 9004, VelSetBack]
type = VelAdd
trigger1 = command = "holdback"
trigger1 = var(59) = 0
x = -.1

[state 9004, VelAdd]
type = VelAdd
trigger1 = Time > 5
x = 0
y = .4

[State 9004, speedlines]
type = Explod
trigger1 = TimeMod = 4, 1
trigger1= vel y < -8
anim = 4005
scale = .5, .75
pos = 0, -20
random = 40, 40
postype = p1
removetime = 10
sprpriority = 5
shadow = 0, 0, 0
ownpal = 1

[state 9004, End]
type = ChangeState
trigger1 = Pos Y >= 1
trigger2= vel y > 0
trigger2= pos y > -vel y
value = 52
ctrl

;---------------------------------------------------------------------------
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
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

[State 100, snd]
type = PlaySnd
trigger1 = time = 3
value = 1100,1
channel = 0



[State 0, Dust]
type = Explod
trigger1 = Time%12=0
anim = 8104
ID = 8104
pos = -20,0
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 0, Dust]
type = Explod
trigger1 = Time%4=0
anim = 8102
ID = 8102
pos = -20,-random%90
postype = p1  ;p2,front,back,left,right
facing = 1
velocity = -1,0
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 100, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 3] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 4] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, ChangeState]
type = ChangeState
trigger1 =  command != "holdfwd"
value = 101
ctrl = 0


[State 100, End]
type = ChangeState
trigger1 = animtime=0
value = 0

[Statedef 101]
type    = S
physics = S
anim = 106
ctrl = 0

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal ;player
name = "dust"
stateno = 7100
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Jump Backwards
;---------------------------------------------------------------------------
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
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

[State 105, 2]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 3]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 105, End]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; Run Backwards 2 (land)
;---------------------------------------------------------------------------
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, snd]
type=playsnd
trigger1=!time
value=0,52

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, End]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Air Dash Forward
;---------------------------------------------------------------------------
[Statedef 107]
type    = A
physics = N
anim = 100
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
trigger1 = animtime=0
value = 50

;---------------------------------------------------------------------------
; Air Dash Back
;---------------------------------------------------------------------------
[Statedef 108]
type    = A
physics = N
anim = 105
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

[State 108, End]
type = ChangeState
trigger1 = animtime=0
value = 50


;-------------block
;---START---
[Statedef 120]
type=U
physics=U
[State 120, anim]
type=changeanim
trigger1=!time
value=120+(statetype=C)+(statetype=A)*2
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=S
physics=S
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=C
physics=C
[State 120, sts]
type=statetypeset
trigger1=!time&&statetype=A
physics=A
[State 120, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 120, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 120, end]
type=changestate
trigger1=!animtime
value=130+(statetype=C)+(statetype=A)*2
[State 120, stop]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140


;---STAND GUARD (guarding)---
[Statedef 130]
type=S
physics=S
[State 130, anim]
type=changeanim
trigger1=anim!=130
value=130
[State 130, Hi to Lo]
type=changestate
trigger1=var(59)<=0&&command="holddown"
trigger2=var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype=C)
value=131
[State 130, Stop Guarding]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140


;---CROUCH GUARD (guarding)---
[Statedef 131]
type=C
physics=C
[State 131, anim]
type=changeanim
trigger1=anim!=131
value=131
[State 131, Lo to Hi]
type=changestate
trigger1=var(59)<=0&&command!="holddown"
trigger2=var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
value=130
[State 131, Stop Guarding]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140


;---AIR GUARD (guarding)---
[Statedef 132]
type=A
physics=N
[State 132, anim]
type=changeanim
trigger1=anim!=132
value=132
[State 132, grav]
type=veladd
trigger1=1
y=const(movement.yaccel)
[State 132, var]
type=varset
trigger1=1
sysvar(0)=(pos y>=0)&&(vel y>0)
[State 132, vel]
type=velset
trigger1=sysvar(0)
y=0
[State 132, pos]
type=posset
trigger1=sysvar(0)
y=0
[State 132, end]
type=changestate
trigger1=sysvar(0)&&inguarddist
trigger1=(var(59)<=0&&command="holdback")||var(59)>=1
value=130
[State 132, end]
type=changestate
trigger1=sysvar(0)
value=52
[State 132, stop guarding]
type=changestate
trigger1=(var(59)<=0&&command!="holdback")
trigger2=!inguarddist
value=140

;---GUARD (end)---
[Statedef 140]
type=U
physics=U
ctrl=1
[State 140, anim]
type=changeanim
trigger1=!time
value=140+(statetype=C)+(statetype=A)*2
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=S
physics=S
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=C
physics=C
[State 140, sts]
type=statetypeset
trigger1=!time&&statetype=A
physics=A
[State 140, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 140, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 140, 5]
type=changestate
trigger1=!animtime
value=(statetype=C)*11+(statetype=A)*51

;---SGUARDHIT (shaking)---
[Statedef 150]
type=S
movetype=H
physics=N
velset=0,0
[State 150, anim]
type=changeanim
trigger1=1
value=150
[State 150, end]
type=changestate
trigger1=hitshakeover
value=151+2*((var(59)<=0&&command="holddown")||(var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype=C)))
[State 150, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 150, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S

;---SGUARDHIT2 (knocked back)---
[Statedef 151]
type=S
movetype=H
physics=S
anim=150
[State 151, vel]
type=hitvelset
trigger1=!time
x=1
[State 151, vel]
type=velset
trigger1=time=gethitvar(slidetime)
trigger2=hitover
x=0
[State 151, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 151, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 151, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 151, end]
type=changestate
trigger1=hitover
value=130
ctrl=1

;---CGUARDHIT (shaking)---
[Statedef 152]
type=C
movetype=H
physics=N
velset=0,0
[State 152, anim]
type=changeanim
trigger1=1
value=151
[State 152, end]
type=changestate
trigger1=hitshakeover
value=151+2*((var(59)<=0&&command="holddown")||(var(59)>=1&&(enemynear,movetype=A)&&(enemynear,statetype=C)))
[State 152, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 152, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S

;---CGUARDHIT2 (knocked back)---
[Statedef 153]
type=C
movetype=H
physics=C
anim=151
[State 153, vel]
type=hitvelset
trigger1=!time
x=1
[State 153, vel]
type=velset
trigger1=time=gethitvar(slidetime)
trigger2=hitover
x=0
[State 153, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 153, Hi to Lo]
type=statetypeset
trigger1=var(59)<=0&&statetype=S&&command="holddown"
trigger2=var(59)>=1&&statetype=S&&(enemynear,movetype=A)&&(enemynear,statetype=C)
statetype=C
physics=C
[State 153, Lo to Hi]
type=statetypeset
trigger1=var(59)<=0&&statetype=C&&command!="holddown"
trigger2=var(59)>=1&&statetype=C&&(enemynear,movetype=A)&&(enemynear,statetype!=C)
statetype=S
physics=S
[State 153, end]
type=changestate
trigger1=hitover
value=131
ctrl=1

;---AGUARDHIT (shaking)---
[Statedef 154]
type=A
movetype=H
physics=N
velset=0,0
[State 154, anim]
type=changeanim
trigger1=1
value=152
[State 154, end]
type=changestate
trigger1=hitshakeover
value=155

;---AGUARDHIT2 (knocked away)---
[Statedef 155]
type=A
movetype=H
physics=N
anim=152
[State 155, vel]
type=hitvelset
trigger1=!time
x=1
y=1
[State 155, vel]
type=veladd
trigger1=1
y=const(movement.yaccel)
[State 155, ctrl]
type=ctrlset
trigger1=time=gethitvar(ctrltime)
value=1
[State 155, var]
type=varset
trigger1=1
sysvar(0)=(pos y>=0)&&(vel y>0)
[State 155, vel]
type=velset
trigger1=sysvar(0)
y=0
[State 155, pos]
type=posset
trigger1=sysvar(0)
y=0
[State 155, end]
type=changestate
trigger1=sysvar(0)&&inguarddist
trigger1=(var(59)<=0&&command="holdback")||var(59)>=1
value=130
[State 155, end]
type=changestate
trigger1=sysvar(0)
value=52



[Statedef 5130]
type=S
movetype=H
physics=S
anim=5130
[State 5130, nhb]
type=nothitby
trigger1=!alive
value=SCA
[State 5130, pos]
type=posset
trigger1=1
y=0
[State 5130, end]
type=changestate
trigger1=!animtime
value=5131

[Statedef 5131]
type=L
movetype=H
physics=C
anim=5131
[State 5131, nhb]
type=nothitby
trigger1=!alive
value=SCA
[State 5131, pos]
type=posset
trigger1=1
y=0
[State 5131, sts]
type=statetypeset
trigger1=animelemtime(8)>=0
statetype=L
physics=C
[State 5131, posfix]
type=posadd
trigger1=animelem=8||animelem=9
x=ifelse((animelem=8),-4,-12)
[State 5131, snd]
type=playsnd
trigger1=!time
trigger1=animelem=8
value=0,52
[State 5131, dust]
type=explod
trigger1=!time
anim=7104
ID=7104
sprpriority=-4
postype=p1
pos=4,0
scale=.5,.5
ownpal=1
[State 5131, dust]
type=explod
trigger1=animelem=8
anim=7102
ID=7102
sprpriority=-5
postype=p1
pos=0,0
scale=.66,.66
ownpal=1
[State 5131, end]
type=changestate
trigger1=!animtime
value=ifelse(alive,5110,5150)


[Statedef 195]
type=S
movetype=I
physics=S
anim=195
velset=0,0
sprpriority=1
ctrl=0

[State 5131, snd]
type=playsnd
trigger1=time = 1
value=195,1
volume = 255
channel = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1



;==========<LOSE (Time over)>==========
[Statedef 170]
type=S
ctrl=0
anim= 170
velset=0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S170,0
volume = 0
channel = -1



[State 170, nhb]
type=nothitby
trigger1=1
value=SCA
time=1



;==========<DRAWGAME (Time over)>==========
[Statedef 175]
type=S
ctrl=0
velset=0,0
[State 175, switch]
type=changestate
trigger1=!time
value=170
[State 175, nhb]
type=nothitby
trigger1=1
value=SCA
time=1


;==========<PREINTRO>==========
[Statedef 190]
type=S
ctrl=0
velset=0,0


[State 190, 3]
type = ChangeState
trigger1 = P2name = "Spiderman" || P2name = "Symbiote spider-man" || P2name = "Spider-man symbiote"
trigger2 = P2name = "Spectacular Spiderman" || P2name = "Amazing Spiderman" || p2name = "Scarlet Spiderman"
trigger3 = P2name = "Agony"
trigger1 = !time
value = 194


[State 190, 1]
type = VarRandom
trigger1 = time = 0
v = 5
range = 0, 200

[State 190, 2]
type = ChangeState
trigger1 = Var(5) = [0,99]
trigger2 = p2name = "Scream" || p2name = "Venom" || p2name = "Carnage"
value = 191


[State 190, 3]
type = ChangeState
triggerall = P2name != "scream"
triggerall = p2name != "venom"
trigger1 = Var(5) = [100,200]
trigger1 = time = 0
value = 192





;==========<INTRO 1>==========
[Statedef 191]
type=S
physics=N
anim=191

[State 191, intro]
type=assertspecial
trigger1=1
flag=intro



[State 191, snd]
type=playsnd
trigger1= animelem=8 || animelem=13 || animelem=31
value=191,0
channel = 7

[State 191, snd]
type=playsnd
triggerall = p2name != "phage"
triggerall = p2name != "Venom"
triggerall = p2name != "Carnage"
triggerall = p2name != "Scream"
trigger1= animelem=15
value=191,1
channel = 8

[State 191, snd]
type=playsnd
triggerall = p2name = "Scream"
trigger1= animelem=15
value=191,3
channel = 8
volume = 180

[State 191, snd]
type=playsnd
triggerall = p2name = "Venom"
trigger1= animelem=15
value=191,2
channel = 8
volume = 180

[State 191, snd]
type=playsnd
triggerall = p2name = "Carnage"
trigger1= animelem=15
value=191,4
channel = 8
volume = 180


[State 191, end]
type=changestate
trigger1=animtime = 0
value=0


[Statedef 192]
type=S
physics=N
anim=192

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0, 360]
flag = Intro

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S193,0
volume = 255
channel = 8



[State 191, end]
type=changeanim
trigger1= time = 300
value=193

[State 0, VarSet]
type = VarSet
trigger1 = time > 300
v = 14    ;fv = 10
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 360
value = 0



[Statedef 193]
type=S
physics=N
anim=194

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 1
channel = 1



[State 193, changeanim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 194



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = S195,6
volume = 0
channel = 6

[Statedef 194]
type=A
physics=N
anim=197

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(1)= 20 && p2name != "Agony"
value = S197,0
volume = 0
channel = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelemtime(1)= 20 && p2name = "Agony"
value = S197,1
volume = 0
channel = 8

[State 100, Explod]
type = Explod
trigger1 = animelem = 8
anim = 199
ID = 7106
pos = 0,-32
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3


[State 100, Explod]
type = Explod
trigger1 = animelem = 8
anim = 199
ID = 7106
pos = 20,-32
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3



[State 192, A3]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 0, VelSet]
type = Veladd
trigger1 =  animelemtime(8) = 8
x = 0
y = .9


[State 192, A8]
type = ChangeState
trigger1 = pos y > 15
value = 196


[Statedef 196]
type=S
physics=N
anim=47





[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S0,40
volume = 7
channel = -1



[State 192, A3]
type = AssertSpecial
trigger1 = 1
flag = Intro



[State 192, A6]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 192, A7]
type = PosSet
trigger1 = Pos Y >= 0
y = 0


[State 191, end]
type=changestate
trigger1=animtime = 0
value=0





















;==========<WIN POSE DECIDER>==========
[Statedef 180]
type=S
ctrl = 0

[State 190, 1]
type = VarRandom
trigger1 = time = 0
v = 6
range = 0, 49

[State 0, ChangeState]
type = ChangeState
trigger1 = var(6) > 49
value = 182
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = var(6) < 49
value = 183
ctrl = 0


[State 180]
type = ChangeState
trigger1 = enemy, name = "venom"
trigger2 = enemy, name = "Carnage"
trigger3 = enemy, name = "Spider-man" || enemy, name = "symbiote spider-man"
trigger4 = enemy, name = "phage"
trigger5 = enemy, name = "scream"
value = 181; +random%2





;==========<WIN 1>==========
[Statedef 181]
type=S
anim=180
ctrl=0


[State 191, snd]
type=playsnd
triggerall = enemy, name != "Phage"
triggerall = enemy, name != "Venom"
triggerall = enemy, name != "Carnage"
triggerall = enemy, name != "Scream"
triggerall = enemy, name != "Riot"
trigger1= animelem=5
value=195,0
channel = 1

[State 191, snd]
type=playsnd
triggerall = enemy, name = "Venom"
trigger1= animelem=5
value=195,2
channel = 1

[State 191, snd]
type=playsnd
triggerall = enemy, name = "Scream"
trigger1= animelem=5
value=195,3
channel = 1

[State 191, snd]
type=playsnd
triggerall = enemy, name = "riot"
trigger1= animelem=5
value=195,4
channel = 1

[State 191, snd]
type=playsnd
triggerall = enemy, name = "carnage"
trigger1= animelem=5
value=195,5
channel = 1



[State 182, wait]
type=assertspecial
trigger1=time<180
flag=roundnotover

[State 182, pos]
type=posset
trigger1=pos y
y=0

;==========<WIN 2>==========
[Statedef 182]
type=S
anim=181
ctrl=0




[State 182, snd]
type=playsnd
trigger1=time = 53
value=181,1
volume = 255
persistent=1
channel = 1



[State 182, wait]
type=assertspecial
trigger1=time<200
flag=roundnotover


;==========<WIN 3>==========
[Statedef 183]
type=S
anim=182
ctrl=0

[State 182, snd]
type=playsnd
trigger1= animelem = 3
value=181,2
volume = 255
persistent=1
channel = 1

[State 182, snd]
type=playsnd
trigger1= animelem = 2
value=181,3
volume = 255
persistent=1
channel = 2


[State 182, wait]
type=assertspecial
trigger1=time<500
flag=roundnotover



;==========<FALL RECOVERY>==========
[Statedef 5200]
type=A
movetype=H
physics=N
[State 5200, anim]
type=changeanim
trigger1=anim=5035&&!animtime
value=5050
[State 5200, vel]
type=veladd
trigger1=1
y=gethitvar(yaccel)
[State 5200, end]
type=selfstate
trigger1=vel y>0&&pos y>=-10
value=5201

[Statedef 5201]
type=A
movetype=I
physics=N
anim=5200
velset=0,vel y

[State 5201, pos]
type=posset
trigger1=pos y>=0
y=0
[State 5201, vel]
type=velset
trigger1=pos y>=0
y=0
[State 5201, snd]
type=playsnd
trigger1=animelem=1
value=3,3
channel=0
[State 5201, flash]
type=palfx
trigger1=!time
add=20,50,75
sinadd=20,50,75,6
time=12
[State 5201, nhb]
type=nothitby
trigger1=animelemtime(3)<0
value=SCA
time=1
[State 5201, dust]
type=explod
trigger1=!time
anim=6050
ID=6050
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
ownpal=1
scale=.66,.66
[State 5201, end]
type=changestate
trigger1=!animtime
value=52

[Statedef 5210]
type=A
movetype=I
physics=N
anim=5210
ctrl=0
[State 5210, snd]
type=playsnd
trigger1=!time
value=3,3
channel=0
[State 5210, flash]
type=palfx
trigger1=!time
add=20,50,75
sinadd=20,50,75,6
time=12
[State 5210, turn]
type=turn
trigger1=!time&&vel x>0
[State 5210, vel]
type=velset
trigger1=!time
x=ifelse(command="holdback",-4,ifelse(command="holdfwd",-1.33,-2.67))
y=-7.4
[State 5210, grav]
type=veladd
trigger1=1
y=.5
[State 5210, nhb]
type=nothitby
trigger1=time<14
value=SCA
time=1
[State 5210, ctrl]
type=ctrlset
trigger1=time>=14
value=1
[State 5210, land]
type=changestate
trigger1=vel y>0&&pos y>=0
value=52

[Statedef 70]
type    = A
movetype= I
physics = A
anim = 49
sprpriority = 1
ctrl = 1

[State 70, 1]
type = Turn
trigger1 = P2Dist X < -5

[State 70, 2]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 70, End]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52


[Statedef 71]
type    = A
movetype= I
physics = A
anim = 49
sprpriority = 1
ctrl = 1

[State 70, 1]
type = Turn
trigger1 = P2Dist X < -5

[State 70, 2]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 70, End]
type = ChangeState
trigger1 = (Pos Y > 0) && (Vel Y > 0)
value = 52

[Statedef 72]
type    = A
movetype= I
physics = A
anim = 51
sprpriority = 1
ctrl = 1

[State 70, 1]
type = Turn
trigger1 = P2Dist X < -5

[State 70, 2]
type = VelSet
trigger1 = FrontEdgeBodyDist <= 0
x = 0

[State 70, End]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52


;-------------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
;-------------------------------------------------------------------------------
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

[State 0, PalFXWiz]
type = PalFX
trigger1 =1
time = 10
add = 100,0,100
mul = 120,20,124
sinadd = 85,110,55,10
invertall = 0
color = 0
ignorehitpause = 0

[state 8900, a1]
type = assertspecial
trigger1 = 1
flag = NoBarDisplay
flag2 = Noshadow

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

[State 8901, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = !time
anim = 8901
id = 8901
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 999
pausemovetime= 999
sprpriority = 20
removetime = -2
ignorehitpause = 1
scale = 1,1
removeongethit = 1
ownpal = 1

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
pos = 0,0
postype = back
;facing = 1
bindtime = -1
supermovetime = 999
pausemovetime= 999
sprpriority = 20
removetime = -2
ignorehitpause = 1
scale = .5,.5
removeongethit = 1
ownpal = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 9999, 4
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4

; END

;---------------------------------------------------------

[Statedef -2]

[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2 && prevstateno != 193
channel = 7

[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2 && prevstateno != 193
channel = 8

[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2 && prevstateno != 193
channel = 9

[State -2, attackvarbyhits]
type=varadd
trigger1=time=1&&movetype=A
trigger1=(stateno!=[800,899])&&(stateno!=[1301,1305])&&(stateno!=[1321,1325])&&stateno!=4001
trigger1=(prevstateno=[200,699])^^(stateno!=[200,699])
fvar(10)=ifelse((stateno=[3000,4999]),.33,.1)
ignorehitpause=1
[State -2, attackvarbyhits]
type=varset
trigger1=fvar(10)>.9
fvar(10)=.9
ignorehitpause=1
[State -2, attackvarbyhitsreset]
type=varset
trigger1=numenemy&&fvar(10)
trigger1=(enemynear,movetype!=H)
fvar(10)=0
ignorehitpause=1
[State -2, attackvarbypower]
type=varset
trigger1=1
fvar(11)=ifelse(power>=3000,.05,ifelse(power>=2000,.02,ifelse(power>=1000,.01,0)))
ignorehitpause=1
[State -2, dampenervar]
type=varset
trigger1=1
fvar(12)=(ifelse(fvar(10)>=.9,.1,1-fvar(10))+(fvar(11)*!var(40))+(.2*var(29)))/(4.0/(4-(var(40)>0)))
ignorehitpause=1
[State -2, dampener]
type=attackmulset
trigger1=1
value=fvar(12)
ignorehitpause=1

[State -2, varDF]
type=varadd
trigger1=var(40)>0
var(40)=ifelse(var(40)=1,-2,-1)
ignorehitpause=1
[State -2, varDF]
type=varset
trigger1=var(40)&&roundstate!=2
var(40)=0
ignorehitpause=1


[State -2, varKOsnd]
type=varset
trigger1=alive&&var(8)>0
trigger2=!alive&&var(8)<2
var(8)=ifelse(alive,0,var(8)+1)
ignorehitpause=1
[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(8)=1
trigger1=var(8):=2
value=11,ifelse(stateno=5130,2,1)
ignorehitpause=1
[State -2, voicepos]
type=sndpan
trigger1=1
channel=0
pan=0
ignorehitpause=1


[State -2, VarAdd] ; heal
type = VarAdd

triggerall = life > 0
triggerall = var(13) > 0
trigger1 = timemod = 20,0
v =  13  ;fv =
value = -1

[State 0, LifeAdd]
type = LifeAdd

triggerall = var(13) > 0
trigger1 = (GameTime%10)=0
value = 2
kill = 0
absolute = 0
;ignorehitpause =
;persistent =

[State -3, heal meter]
type = Explod
triggerall = var(13) > 0
trigger1 = numexplod(3401)=0
anim = 3401
id = 3401
pos = ifelse(teamside = 1,120,200),48
facing = ifelse(teamside = 1,1,1)
postype = left
bindtime = -1
removetime = -2
sprpriority = 91
ignorehitpause = 1
scale = var(13)*.0103,1
ownpal = 1

[State -3, heal bar]
type = Explod
triggerall = var(13) > 0
trigger1 = numexplod(3402)=0
anim = 3402
id = 3402
pos = ifelse(teamside = 1,120,200),48
facing = ifelse(teamside = 1,1,1)
postype = left
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = var(13) <= 1
id = 3401

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = var(13) <= 1
id = 3402

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3402)>0
trigger1 = win
trigger2 = lose
triggerall = var(13) <= 1
id = 3402

[State 0, VarSet]
type = VarSet
trigger1 = win
trigger2 = lose
v = 13    ;fv = 10
value = 0
;ignorehitpause =
;persistent =


[State -2, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3402)>0
trigger1 = win
trigger2 = lose
triggerall = var(13) <= 1
id = 3402

[State 0, PalFXWiz]
type = PalFX
trigger1 = var(13) > 0
trigger1 = timemod = 10,0
time = 10
add = 0,-200,0
mul = 256,256,256
sinadd = 40,80,40,10
invertall = 0
color = 100




[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="Numhelper=%d heal=%d p2bodydistY=%f pos y=%f by Daraku var(59)=%d"
params=numhelper, var(13), p2bodydist y, pos y, var(59)

;-------------------------------------------------------------------------------
;damage dampenering
;-------------------------------------------------------------------------------
[State -2, Damage Dampener]; Scaling in action
type= attackmulset
triggerall = stateno !=[3000,3999] ; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
triggerall = stateno !=[3000,3999]; prevent damage scaling in supers between this range of statedef
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


; END

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
;-------------------------------------------------------------------------------
;Win K.O Explod
;-------------------------------------------------------------------------------
[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, -1500
postype = back
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;-------------------------------------------------------------------------------
;Player Indictators for Player 1 and Player 2
;-------------------------------------------------------------------------------
;Player 2 Indictator
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8612 - ((enemy,id)<id)
id = 8611
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
;Player 2 Arrow
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8614 - ((enemy,id)<id)
id = 8613
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
facing = (enemy,facing);-1
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
;Player 1 Indictator
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = screenpos y <0
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8611 + ((enemy,id)<id)
id = 8611
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
ownpal = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)
;-------------------------------------------------------------------------------
; Player 1 Arrow
;-------------------------------------------------------------------------------
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1
trigger1 = screenpos y <0
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8613 + ((enemy,id)<id)
id = 8613
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
ownpal = 1
facing = facing;1
removetime = 1
scale= const(size.xscale),const(size.yscale)

[State -3, resetAI]
type=varset
trigger1=var(59)&&(!alive||roundstate!=2)
var(59)=0
ignorehitpause=1

[State -3, Jumping Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40 ;Jump land
;trigger2 = stateno = 106 ;Run-back land
value = 0, 40




[State -3, ExSnd]
type=playsnd
trigger1=(stateno=[1000,2999])&&time=1&&movetype=A&&var(10)=4
trigger1=(stateno!=[1321,1325])
value=7,6
ignorehitpause=1
[State -3, ExShadow]
type=afterimage
trigger1=(stateno=[1000,2999])&&time=1&&movetype=A&&var(10)=4
trigger1=(stateno!=[1321,1325])
time=2
timegap=1
framegap=1
length=8
palbright=32,32,0
palcontrast=128,128,128
paladd=-10,-10,-10
palmul=1.1,1,.5
trans=add
ignorehitpause=1
[State -3, ExFlash]
type=palfx
trigger1=(stateno=[1000,2999])&&movetype=A&&var(10)=4
trigger1=(anim!=[1101,1103])&&anim!=1207
time=1
add=32+ceil(sin(gametime/1.5)*32),32+ceil(sin(gametime/1.5)*32),0
mul=300,300,200
ignorehitpause=1



[State -3, lv3supershadow]
type=afterimage
trigger1=stateno=4000&&!animelemtime(3)
time=2
timegap=1
framegap=10
length=21
paladd=0,0,0
palmul=.75,.75,.75
palcontrast=160,32,32
palpostbright=0,0,0
trans=add1

[State -3, AfterImagePersist]
type=afterimagetime
trigger1=stateno=50&&var(9)=3&&vel y<-1
trigger2=(stateno=[710,725])
trigger3=(stateno=[1000,2999])&&var(10)=4&&anim!=1101
trigger4=(stateno=[3000,4999])&&anim!=1101
time=2

[State -3, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
triggerall=stateno=5000||stateno=5010
trigger1=gethitvar(animtype)>=2&&random<500
trigger2=gethitvar(animtype)=1&&random<375
trigger3=gethitvar(animtype)=0&&random<250
value=3,0+(random%6)
channel=0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall=alive&&time=1
trigger1=(stateno=5000||stateno=5010)&&numenemy
trigger1=gethitvar(fall)||(enemynear,hitdefattr=SCA,SA,HA)
trigger2=(stateno=5020||stateno=5070||stateno=5080)
trigger3=(stateno=5050||stateno=5100)&&(prevstateno!=[5000,5199])
value=5000,1+(random%3)
channel=0
ignorehitpause=1

[State -3, collapse]
type=changestate
trigger1=!alive&&(stateno=[5000,5030])
trigger1=(prevstateno=[130,131])||(prevstateno=[140,141])||(prevstateno=[150,153])
value=5130

[State -3, KOfx]
type=helper
triggerall=winKO&&!numhelper(7600)
trigger1=movehit&&numtarget&&(stateno=[3000,4999])
trigger2=numhelper(3005)
trigger2=helper(3005),var(3)
trigger3=numhelper(3055)
trigger3=helper(3055),var(3)
trigger4=numhelper(3305)
trigger4=helper(3305),var(3)
trigger5=numhelper(4105)&&stateno=4102
trigger5=helper(4105),var(3)
helpertype=normal
stateno=7600
ID=7600
name="KO FX"
postype=left
pos=160,-120
ownpal=1
ignorehitpause=1
pausemovetime=999
supermovetime=999


;-------------------------------------------------------------------------------
;Afterimage
;-------------------------------------------------------------------------------
[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Stateno != 100 ; run forward
trigger1 = Stateno != 105 ; run backward
trigger1 = Stateno != 108 ;Air Dash backward
trigger1 = Stateno != 107 ;Air Dash forward
trigger1 = Stateno != 701 ;Super Jump
time = 0
;-------------------------------------------------------------------------------
; Stop Flying States in Roundstate 3
;-------------------------------------------------------------------------------
[State 0, SelfState]
type = SelfState
trigger1 = stateno = [2000,2999]
trigger1 = roundstate = 3
value = 50
ctrl =1
;-------------------------------------------------------------------------------
; Stop Movement in Roundstate 4
;-------------------------------------------------------------------------------
[State -3, ctrl set]
type = ctrlset
trigger1 = roundstate = 4
value = 0
;-------------------------------------------------------------------------------
;Phantom of the Server Corner Push System
;-------------------------------------------------------------------------------
[State -3, Corner Push]; Reset
type= varset
trigger1= fvar(5)
trigger1= numtarget
trigger1= (target, hitover) || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5)= 0

[State -3, Corner Push]; Get initial velocity
type= varset
trigger1= movecontact=1 && numtarget
fvar(5)= (target, gethitvar(xvel))
ignorehitpause= 1

[State -3, Corner Push]; Apply corner push
type= posadd
triggerall= fvar(5)
triggerall= (statetype = S || statetype = C) && numtarget
triggerall= !hitpausetime && (target, gethitvar(hitshaketime) <= 0)
triggerall= (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall); See note below
trigger1= target, frontedgebodydist <= abs(target, vel x)
trigger1= (target, gethitvar(xvel) * target, facing) > 0
trigger2= target, backedgebodydist <= abs(target, vel x)
trigger2= (target, gethitvar(xvel) * target, facing) < 0
x= ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)

[State -3, Corner Push]; Apply friction to the velocity
type= varset
trigger1= numtarget
trigger1= target, gethitvar(hitshaketime) <= 0
fvar(5)= fvar(5) * 0.85


; END


;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(0) - StateDef 820, 9741, 6104, 6105, 6106, 6107, 6108, 6109, 6111, 660
; Var(1) - StateDef 1055, 1015
; Var(3) - StateDef 1055, 1015
; Var(4) - StateDef 1055, 1015
; Var(5) - StateDef 190
; Var(8) - StateDef -2
; Var(10) - StateDef 800, 1055, 1015
; Var(11) - StateDef 205, 210, 220, 226, 230, 240, 245, 250, 280
; Var(12) - StateDef 182
; Var(13) - StateDef -2
; Var(14) - StateDef 192
; Var(40) - StateDef -2
; Var(59) - StateDef -3

;--------------------- Float Variable List ----------------------

; fVar(1) - StateDef 6105, 6106
; fVar(2) - StateDef 6105, 6106
; fVar(10) - StateDef -2
; fVar(11) - StateDef -2
; fVar(12) - StateDef -2
