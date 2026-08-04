;---------------------------------------------------------------------------
; Hyper 3 - Agony Smash
;---------------------------------------------------------------------------
[Statedef 4301]
type = A
movetype = I
physics = N
anim = 40
ctrl = 0
velset = 0,0

[State 3300, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3301, no lifebars]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3301, jump velset]
type = VelSet
y = -8
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, gravity]
type = gravity
trigger1 = anim = 41

[State 3301, jump changeanim]
type = ChangeAnim
value = 41
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, jump statetypeset]
type = StateTypeSet
statetype = A
trigger1 = animtime = 0
trigger1 = anim = 40

[State 3301, go to attack state]
type = ChangeState
value = 4000
trigger1 = vel y >= 0
trigger1 = anim = 41


;-----------------------Super hammer
[Statedef 4000]
type=A
physics=A
movetype=A
anim=41
ctrl=0
velset=0,0
juggle=15

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1



[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
movetime = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1







[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0




[State 4000,]
type=nothitby
trigger1=animelemtime(3)<8
time=1
value=SCA

;[State 4000, vel]
type=velset
trigger1=time = 1
y = -7


[State 4000,]
type=changestate
trigger1=time = 0
value=4001
ignorehitpause=1



[Statedef 4001]
type=A
physics=A
movetype=A
anim=4444
ctrl=0
velset=0,0
sprpriority=1


[State 1200, snd]
type=playsnd
trigger1= animelem = 1
value= 4000, 0

[State 1004, 1]
type = VelMul
trigger1 = 1;!Time
y = ifelse(vel y >= 0,.4,-.2)

[State 1004, VelSet 2]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 =  time >0
value = -1
;movecamera = 0,0
;ignorehitpause = 0
;persistent = 1


[State 4001, snd]
type=playsnd
trigger1=animelem=6
value=7,10

[State 4001, snd]
type=playsnd
trigger1=anim=4002&&animelem=30
value=4,6

[State 4001, snd]
type=playsnd
trigger1=anim=4001&&(animelem=8||animelem=14)
trigger2=anim=4002&&animelem=9
value=1,2
[State 4001, snd]
type=playsnd
trigger1=anim=4001&&animelem=18
value=1,3


[State 4001, hithighgr]
type=hitdef
trigger1=animelem=5 || animelem = 6
attr=A,HA
damage= 120 ,20
animtype=back
guardflag=M
hitflag=MAF
priority=7,Hit
pausetime=10,4
sparkno=s7030
guard.sparkno=s8001
sparkxy=-10
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=32
ground.hittime=32
ground.velocity=0,0
air.type=Low
air.velocity=0,-1.5
getpower=0
envshake.time=4
envshake.freq=30
envshake.ampl=5
fall = 1

[State 4001, hithighgr]
type=hitdef
trigger1= animelem = 7
attr=S,HA
damage= 200 ,20
animtype=Hard
guardflag=M
hitflag=MAF
priority=7,Hit
pausetime=10,4
sparkno=s7030
guard.sparkno=s8001
sparkxy=-10
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=32
ground.hittime=40
ground.velocity=0,0
air.type=Low
air.velocity=0,-1.5
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall = 1




[State 4001, snd]
type=playsnd
trigger1=anim=4001&&!animelemtime(56)
value=0,41

[State 0, Explod]
type = Explod
trigger1 = animelem = 7
anim =  7100
ID =  7100
pos = 0,0
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = .7,.7
sprpriority = 3

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim =  7101
ID =  7101
pos = 0,-20
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = .7,.7
sprpriority = 3




[State 4001, notarget]
type=changestate
trigger1=animtime = 0
value=70

;--------------------------------

;hammer spin
[Statedef 4555]
type=A
physics=N
movetype=A
anim=4555
ctrl=0
velset=0,0
juggle=1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 2
y = -2.5

[State 0, VelAdd]
type = Velset
trigger1 = animelem = 5
y = 0

[State 1200, snd]
type=playsnd
trigger1= animelem = 2
value= 4000, 1


[State 1200, snd]
type=playsnd
trigger1= time > 10
trigger1=timemod = 5,0
value=1,9

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = time = 3
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = time = 3
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = time = 3
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = time = 3
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = time = 3
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = time = 3
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = time = 3
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = time = 3
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = time = 3
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 = time = 3
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[state 700,blur]
type = afterimage
trigger1 = animelem = 3
length = 20;100
PalBright   =  0,0,0;320, 320, 320
PalContrast =  160,120,220;0, 0, 0
PalAdd      =  0,0,0;80,80,100
PalMul      = 1,1,1;.50,.50,.50
TimeGap  = 1
FrameGap = 5
Trans = Add
time = 20



[State 4000,]
type=nothitby
trigger1=animelemtime(3)<8
time=1
value=SCA

[State 4001, hithighgr]
type=hitdef
trigger1=timemod = 8,0
attr=S,HA
damage= 70 ,5
animtype=hard
guardflag=M
hitflag=MAF
priority=7,Hit
pausetime=0,4
sparkxy = -10,-80+floor(P2Dist Y)
sparkno=s7030
guard.sparkno=s8001
sparkxy=-10
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=32
ground.hittime=32
ground.velocity=0,-3
air.velocity=0,-1
air.type=Low
air.velocity=0,-1.5
getpower=0
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall = 1


[State 4000,]
type=changestate
trigger1= animtime = 0
value = 70

;---DIZZY TARGET---
[Statedef 1114001]
type=S
physics=N
movetype=H
velset=0,0
ctrl=0

[State 1114001, anim]
type=changeanim
trigger1=!time
value=5300
[State 1114001, pos]
type=posset
trigger1=!time
y=0


;---NO TARGET---
[Statedef 4003]
type=A
physics=A
movetype=I
anim=4003
ctrl=0
[State 4003, afterimageoff]
type=afterimagetime
trigger1=!time
time=0


;---jump back---
[Statedef 4004]
type=A
physics=A
movetype=I
anim=43
ctrl=0
velset=const(velocity.jump.back.x),const(velocity.jump.y)
[State 4004, dust]
type=helper
trigger1=!time
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
[State 4004, snd]
type=playsnd
trigger1=!time
value=0,40

; vomite

[Statedef 3000]
type=S
physics=S
movetype=A
anim=3000
ctrl=0
velset=0,0
juggle=1

[State 3000, 1]
type = NotHitBy
trigger1 = time=20
value = SCA
time = 80

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 3
time = 73
movetime= 73
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -1000
unhittable = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 5131, snd]
type=playsnd
trigger1=animelem  = 1
value=195,1
volume = 255
channel = 0


[State 5131, snd]
type=playsnd
trigger1=animelem = 15
value=3000,0
volume = 255
channel = 1

[State 0, Helper]
type = Helper
trigger1 = animelem = 15
helpertype = normal ;player
name = "vomite beam"
ID = 3001
stateno = 3001
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0






[State 4001, notarget]
type=changestate
trigger1=animtime = 0
value=0
ctrl = 1

[State 4001, notarget]
type=changestate
trigger1= numhelper(3001) = 0 && animelem >= 16
value=3003
ctrl = 0

; beam vomite helper

[Statedef 3001]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 3003
poweradd = 20
sprpriority = 5
hitcountpersist=1

[State 10000, 1]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 3002


[State 3004, 1]
type = HitDef
triggerall = (GameTime%5) = 0
trigger1 = (Gametime%5) = 0
attr = S, HP
animtype  = Hard
damage    = 15,7
getpower = 0,0
sprpriority = 1
guardflag = MA
pausetime = 0,7
sparkno = S3002
sparkxy = -25,5
hitsound   = S2,2
guardsound = S202, 0
guard.sparkno=s8001
ground.type = Low
air.type = Low;
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-5
air.velocity = -9,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2facing = 1
fall = 1
fall.recover = 0
yaccel = .3

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 10
time = 100
freq = 160
ampl = -4
phase = 90

[State 13000, Explod]
type = Explod
triggerall = MoveGuarded
trigger1 = !NumExplod(40)
anim = 7000
sprpriority = 3
postype = p2
pos = 0,-60
random = 0,60
bindtime = 1
ownpal = 1
id = 40
name = "vomite Guarded"
pausemovetime = 999999
persistent = 0
ignorehitpause = 1




[State 3004, DestroySelf]
type = DestroySelf
trigger1 = parent, StateNo != 3000
trigger2 = !AnimTime

[Statedef 3002]
type = S
movetype = I
physics = N
anim = 3004


[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 3003]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 3001


[State 4001, notarget]
type=changestate
trigger1= animtime = 0
value=0
ctrl = 1







;---------------------------------------------------------
; Healing Factor
[StateDef 3400]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 3400
velset = 0,0



[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3400,0
volume = 0
channel = 1

[State 3000, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1


[State 3000, 2]
type = SuperPause
trigger1 = AnimElem = 1
time = 33
anim = -1
sound = S8889,0
pos = 10,-70
poweradd = -2000
unhittable = 1

[State 3000, Hyper Dust]
type = Explod
trigger1 = animelem = 1
anim = 10001
name = "Hyper Dust"
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 5
supermovetime = 40

[State 3000, Hyper Circle]
type = Explod
trigger1 = animelem = 1
anim = 10066
name = "Hyper Circle"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, Hyper Explode]
type = Explod
trigger1 = animelem = 1
anim = 10006
name = "Hyper Explode"
postype = p1
pos = 19,-80
ownpal = 1
sprpriority = 5
supermovetime = 40


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = 1
anim = 10007
name = "Left Arrow"
ID = 10007
pos = 0,35
facing = 1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
trigger1 = facing = -1
name = "Right Arrow"
anim = 10077
ID = 10077
pos = 0,35
facing = -1
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Super Portrait"
anim = 10008
ID = 10008
pos = 0,35
postype = back
bindtime = 999
removetime = 70
supermovetime = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 1
name = "Hyper Explod Background"
anim = 10009
ID = 10009
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -3
ownpal = 1
scale = .7,.7

[State 3000, superportrait black]
type = Explod
trigger1 = AnimElem = 1
name = "Black Background"
anim = 10005
ID = 10005
pos = 15,10
postype = back
bindtime = 999
removetime = 60
supermovetime = 40
pausemovetime = 40
sprpriority = -4
ownpal = 1
scale = .6,.6

[State 0, Helper]; ====================================calls hyperbg
type = Helper
trigger1 =  AnimElem = 1
helpertype = normal ;player
name = "Hyper Background"
ID = 9600
stateno = 9600
pos = 0,0
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 0, VarSet]
type = VarSet
trigger1 = animelem = 10
v = 13    ;fv = 10
value = 100
ignorehitpause = 1
persistent = 1




[State 0, ChangeState]
type = ChangeState
trigger1 = time > 80
value = 0
ctrl = 1










