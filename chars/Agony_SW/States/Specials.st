



[Statedef 1100]
type=A
physics=S
movetype=A
anim=1100
poweradd = 80
ctrl=0
velset=0,0
juggle=1

[State 1201, 1]
type = VelAdd
trigger1 = animelem = 3
y = -4

[State 1200, snd]
type=playsnd
trigger1=animelem = 1
value=1,10



[State 1200, snd]
type=playsnd
trigger1=animelem = 3||animelem = 4||animelem = 5||animelem = 6||animelem = 7||animelem = 8
value=1,9

[State 4001,]
type=hitdef
trigger1=animelem = 3||animelem = 4||animelem = 5||animelem = 6||animelem = 7||animelem = 8
attr=S,HA
damage= 10 ,4
animtype=hard
guardflag=M
hitflag=MAF
;priority=7,Hit
pausetime=0,4
sparkno=s7030
guard.sparkno=s8001
sparkxy=-10, -70
getpower = 10
givepower = 10
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=32
ground.hittime=32
ground.velocity=2,-3
air.velocity=0,-1
air.type=Low
air.velocity=2,-1.5
fall.recovertime = 32
fall = 1
fall.yvelocity = -.2


[State 4000,]
type=changestate
trigger1= animtime = 0
value = 70


;--------------

[Statedef 1110]
type=A
physics=S
movetype=A
anim=1100
ctrl=0
poweradd = 80
velset=0,0
juggle=1

[State 1201, 1]
type = VelAdd
trigger1 = animelem = 3
x = 10

[State 1200, snd]
type=playsnd
trigger1=animelem = 1
value=1,10
freqmul = 1.04

[State 1201, 1]
type = Velmul
trigger1 = animelem = 5
x = 2





[State 1201, 1]
type = VelAdd
trigger1 = animelem = 3
y = -4


[State 1200, snd]
type=playsnd
trigger1=animelem = 3||animelem = 4||animelem = 5||animelem = 6||animelem = 7||animelem = 8
value=1,9

[State 4001,]
type=hitdef
trigger1=animelem = 3||animelem = 4||animelem = 5||animelem = 6||animelem = 7||animelem = 8
attr=S,HA
damage= 13 ,4
animtype=hard
guardflag=M
hitflag=MAF
;priority=7,Hit
pausetime=0,4
sparkno=s7030
guard.sparkno=s8001
sparkxy=-10, -70
getpower = 10
givepower = 10
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=32
ground.hittime=32
ground.velocity=2,-3
air.velocity=0,-1
air.type=Low
air.velocity=2,-1.5
fall.recovertime = 32
fall = 1
fall.yvelocity = -.2


[State 4000,]
type=changestate
trigger1= animtime = 0
value = 70


;--------------------------------
;--------------------------------

[Statedef 1120]
type=A
physics=S
movetype=A
anim=1100
ctrl=0
poweradd = 80
velset=0,0
juggle=1

[State 1200, snd]
type=playsnd
trigger1=animelem = 1
value=1,10
freqmul = 1.10

[State 1201, 1]
type = VelAdd
trigger1 = animelem = 3
x = 16

[State 1201, 1]
type = Velmul
trigger1 = animelem = 5
x = 2


[State 1201, 1]
type = VelAdd
trigger1 = animelem = 3
y = -4


[State 1200, snd]
type=playsnd
trigger1=animelem = 3||animelem = 4||animelem = 5||animelem = 6||animelem = 7||animelem = 8
value=1,9

[State 4001,]
type=hitdef
trigger1=animelem = 3||animelem = 4||animelem = 5||animelem = 6||animelem = 7||animelem = 8
attr=S,HA
damage= 13 ,4
animtype=hard
guardflag=M
hitflag=MAF
;priority=7,Hit
pausetime=0,4
sparkno=s7030
guard.sparkno=s7001
sparkxy=-10, -70
getpower = 10
givepower = 10
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=32
ground.hittime=32
ground.velocity=2,-3
air.velocity=0,-1
air.type=Low
air.velocity=2,-1.5
fall.recovertime = 32
fall = 1
fall.yvelocity = -.2


[State 4000,]
type=changestate
trigger1= animtime = 0
value = 70

;---------------------------------------------

[Statedef 1130]
type=S
physics=S
movetype=A
anim=1110
ctrl=0
velset=3,0
juggle=1

[State 1200, snd]
type=playsnd
trigger1=animelem = 3
value=1,3

[State 4001,]
type=hitdef
trigger1=animelem = 3
attr=S,HA
damage= 45 ,5
animtype=hard
guardflag=M
hitflag=MAF
;priority=7,Hit
pausetime=0,4
sparkno=s7030
guard.sparkno=s8001
sparkxy=-10, -70
getpower = 10
givepower = 10
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=32
ground.hittime=60
ground.velocity=-16,-3
air.velocity=0,-1
air.type=Low
air.velocity=-16,-1.5
fall = 1

[State 4000,]
type=changestate
trigger1= animtime = 0
value=0
ignorehitpause=1
ctrl = 1

;splitz
[Statedef 740]
type=S
physics=S
movetype=A
poweradd = 60
anim=42
ctrl=0
velset=0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 0,40
volume = 0
channel = 1



[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x =  6
y = -4
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
x = 2

[State 0, VelSet]
type = VelSet
trigger1 = time = 25
x = 3
y = 7

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
trigger1 = time > 30
x = 0
y = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 25
value = 740
;elem =
;ignorehitpause = 0
;persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 29
value = 740,0
volume = 255
channel = 1




[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = time > 30
value = 748
ctrl = 1

;------------------------------

;splitz
[Statedef 743]
type=S
physics=S
movetype=A
poweradd = 60
anim=42
ctrl=0
velset=0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 0,40
volume = 0
channel = 1



[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 9
y = -5.5
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = time = 25
x = 6
y = 7

[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
trigger1 = time > 30
x = 0
y = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 25
value = 740
;elem =
;ignorehitpause = 0
;persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 29
value = 740,0
volume = 255
channel = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = time > 30
value = 748
ctrl = 1

;-----------------------------

;splitz
[Statedef 746]
type=S
physics=S
movetype=A
anim=42
poweradd = 60
ctrl=0
velset=0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 0,40
volume = 0
channel = 1

[State 0, VelSet]
type = VelSet
trigger1 = time = 1
x = 12
y = -6.5
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
x = 6


[State 0, VelSet]
type = VelSet
trigger1 = time = 25
;x = 8
y = 7



[State 0, VelAdd]
type = VelAdd
trigger1 = time > 0
y = .1
ignorehitpause = 1
persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 24
x = .6
ignorehitpause = 1
persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = pos y > 0
x = 0
ignorehitpause = 1
persistent = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 29
value = 740,0
volume = 255
channel = 1


[State 0, VelSet]
type = VelSet
trigger1 = pos y >= 0
trigger1 = time > 30
x = 0
y = 0


[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 25
value = 740
;elem =
;ignorehitpause = 0
;persistent = 1


[State 0, ChangeState]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = time > 30
value = 748
ctrl = 1

;--------------------------------

[Statedef 748]
type=S
physics=S
movetype=A
anim=741
ctrl=0
velset=0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,105
volume = 0
channel = -1






[State 749,]
type=hitdef
trigger1=animelem=1||animelem = 2
attr=S,NA
damage=40
animtype=Back
guardflag=MA
hitflag=MAF
priority=5,Hit
pausetime=12,12
sparkno=s7020+(random%8)
guard.sparkno=s8001
sparkxy=-10,-20
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-2-(var(10)/2),-6-var(10)
air.type=Low
air.velocity=-2-(var(10)/2),-6-var(10)
getpower=94*(!var(40)&&prevstateno!=750)
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=var(10)=1
yaccel=.5

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime =  0
value =  0
ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


;G acid spit L
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1000,]
type=helper
trigger1=animelem=3
helpertype=normal
stateno=1005
ID=1005
name="acid1"
postype=p1
pos=63,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=11,2
channel=0

[State 1000, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1

;A acid spit L
[Statedef 1001]
type=A
physics=N
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -4
;ignorehitpause =
;persistent =


[State 1000, 7];caindo devagar
type=veladd
trigger1=time < 21
y=.4 * (pos y<-10)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 25
physics = A       ;S,A,C,L

[State 1000,]
type=helper
trigger1=animelem=3
helpertype=normal
stateno=1005
ID=1005
name="acid1"
postype=p1
pos=43,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=11,2
channel=0

[State 1000, end]
type=changestate
trigger1=animtime = 0
value=50
ctrl=1

;G acid spit M
[Statedef 1010]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1000,]
type=helper
trigger1=animelem=3
helpertype=normal
stateno=1006
ID=1005
name="acid2"
postype=p1
pos=63,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=11,2
channel=0

[State 1000, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1

;A acid spit M
[Statedef 1011]
type=A
physics=N
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -4
;ignorehitpause =
;persistent =


[State 1000, 7];caindo devagar
type=veladd
trigger1=time < 21
y=.4 * (pos y<-10)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 25
physics = A       ;S,A,C,L

[State 1000,]
type=helper
trigger1=animelem=3
helpertype=normal
stateno=1006
ID=1006
name="acid2"
postype=p1
pos=43,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=11,2
channel=0

[State 1000, end]
type=changestate
trigger1=animtime = 0
value=50
ctrl=1

;G acid spit H
[Statedef 1020]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1000,]
type=helper
trigger1=animelem=3
helpertype=normal
stateno=1008
ID=1005
name="acid3"
postype=p1
pos=63,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=11,2
channel=0

[State 1000, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1

;A acid spit H
[Statedef 1021]
type=A
physics=N
movetype=A
anim=1001
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = -4
;ignorehitpause =
;persistent =


[State 1000, 7];caindo devagar
type=veladd
trigger1=time < 21
y=.4 * (pos y<-10)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = time = 25
physics = A       ;S,A,C,L

[State 1000,]
type=helper
trigger1=animelem=3
helpertype=normal
stateno=1008
ID=1008
name="acid3"
postype=p1
pos=43,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=11,2
channel=0

[State 1000, end]
type=changestate
trigger1=animtime = 0
value=50
ctrl=1

[Statedef 1030]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=45*!var(40)
sprpriority=1

[State 1000,]
type=helper
trigger1=time = 20
helpertype=normal
stateno=1005
ID=1005
name="acid1"
postype=p1
pos=63,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000,]
type=helper
trigger1=time = 18
helpertype=normal
stateno=1006
ID=1005
name="acid2"
postype=p1
pos=63,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000,]
type=helper
trigger1=time = 16
helpertype=normal
stateno=1008
ID=1005
name="acid3"
postype=p1
pos=63,-60
size.xscale=.66
size.yscale=.66
ownpal=1

[State 1000, snd]
type=playsnd
trigger1=animelem=3
value=11,2
channel=0

[State 1000, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1




[Statedef 2000]
type = S
movetype = A
physics = S
anim =  4000
velset = 0
poweradd = 80
ctrl = 0

[State 220, snd]
type=playsnd
trigger1=animelem=1 || animelem = 5 || animelem = 9 || animelem = 13|| animelem = 18
trigger2 = animelem = 21 || animelem = 25
value=1,4



[State 270, 3]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
trigger7 = animelem = 27
attr = S, SA
animtype = medium
ground.type = high
damage = 10, 5
hitflag = MAF
guardflag = MA
pausetime = 0,0
priority = 6
sparkno = 1002
guard.sparkno=s8001
ground.hittime = 8
p1stateno = 2001
snap = 80, 0

[State 270, 4]
type = ChangeState
value = 2001
trigger1 = movecontact

[State 270, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2001]
type = S
movetype = A
physics = S
anim = 4001
velset = 0
juggle = 0
ctrl = 0





[State 2001, Helper]
type = Helper
trigger1 =  time = 0
helpertype = normal ;player
name = "fastkick"
ID = 2010
stateno =  2010
pos = 30,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = time = 144
value = 1130
ctrl = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = roundstate = 3 || helper, movetype = h
value = 3003
ctrl = 0


; symbiotes helper
[Statedef 2010]
type = S
movetype = A
physics = S
anim = 4002
velset = 0
juggle = 0
ctrl = 0

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 10
;facing = 0
pos = 30,0
ignorehitpause = 1
persistent =  1


[State 220, snd]
type=playsnd
trigger1=animelem=12 || animelem = 24 || animelem = 36 || animelem = 48 || animelem = 60
value=1,4

[State 220, snd]
type=playsnd
trigger1=animelem=4 || animelem = 16 || animelem = 28 || animelem = 40 || animelem = 64
value=1,5

[State 220, snd]
type=playsnd
trigger1=animelem=8 || animelem = 20 || animelem = 32 || animelem = 44 || animelem = 68
value=1,6

[State 2010, 1] ; low
type = HitDef
trigger1 = AnimElem = 1
trigger2 = animelem = 13
trigger3 = animelem = 25
trigger4 = animelem = 37
trigger5 = animelem = 49
trigger6 = animelem = 61
attr = S, SA
poweradd = 10
animtype = light
ground.type = Low
damage = 5, 2
hitflag = MAF
guardflag = MA
pausetime = 0,3
priority = 6
sparkno = s7010
guard.sparkno=s8001
sparkxy = 0, -60
hitsound=s2,1
guardsound=s2,0
ground.slidetime = 10
ground.hittime = 15
ground.velocity =0, -1
air.velocity = 0, -1

[State 2010, 1] ; medium
type = HitDef
trigger1 = AnimElem = 5
trigger2 = animelem = 17
trigger3 = animelem = 29
trigger4 = animelem = 41
trigger5 = animelem = 53
trigger6 = animelem = 65
poweradd = 10
attr = S, SA
animtype = medium
ground.type = Low
damage = 5, 2
hitflag = MAF
guardflag = MA
pausetime = 0,3
priority = 6
sparkno = s7010
guard.sparkno=s8001
sparkxy = 0, -80
hitsound=s2,4
guardsound=s2,0
ground.slidetime = 5
ground.hittime = 10
ground.velocity = .1, -1
air.velocity = .1, -1

[State 2010, 1] ; high
type = HitDef
trigger1 = AnimElem = 9
trigger2 = animelem = 21
trigger3 = animelem = 33
trigger4 = animelem = 45
trigger5 = animelem = 57
trigger6 = animelem = 69
attr = S, SA
poweradd = 10
animtype = medium
ground.type = Low
damage = 10, 2
hitflag = MAF
guardflag = MA
pausetime = 0,3
priority = 6
sparkno = s7010
guard.sparkno=s8001
sparkxy = 0, -100
hitsound=s2,6
guardsound=s2,0
ground.slidetime = 15
ground.hittime = 20
ground.velocity = .2, -1
air.velocity = .2, -1

[State 0, HitOverride]
type = HitOverride
trigger1 = time = 0
attr = SCA,NA
slot = 0
stateno = 10002
time = -1



[State 3004, DestroySelf]
type = DestroySelf
trigger1 = parent, StateNo != 2001
trigger2 = !AnimTime


[Statedef 10005]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 4003
sprpriority = 0



[state 32002, 2]
type = destroyself
trigger1 = animtime = -1




;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(0) - StateDef 820, 9741, 6104, 6105, 6106, 6107, 6108, 6109, 6111, 660
; Var(1) - StateDef 1055, 1015
; Var(3) - StateDef 1055, 1015
; Var(4) - StateDef 1055, 1015
; Var(8) - StateDef -2
; Var(10) - StateDef 800, 1200, 1055, 1015
; Var(11) - StateDef 205, 210, 220, 226, 230, 240, 245, 250, 280, 285, 1200
; Var(40) - StateDef -2
; Var(59) - StateDef -3

;--------------------- Float Variable List ----------------------

; fVar(1) - StateDef 6105, 6106
; fVar(2) - StateDef 6105, 6106
; fVar(10) - StateDef -2
; fVar(11) - StateDef -2
; fVar(12) - StateDef -2
