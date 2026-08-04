

;------------Standing Light Punch
[Statedef 200]
type=S 
movetype=A 
physics=S 
juggle  = 1
anim=200
velset=0,0
poweradd=20
sprpriority=1
ctrl=0

[State 200, snd]
type=playsnd
trigger1=animelem=2&&random<500
value=3,2
channel=0

[State 200, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 200, hit]
type=hitdef
trigger1 = !movehit
trigger1 = !moveguarded
attr=S,NA
damage=20,0
animtype=Light
guardflag=M
hitflag=MAF
priority=2,Hit 
pausetime=8,15
sparkno=s7010
guard.sparkno=-1; s7000
sparkxy=-10,ifelse((anim=200),-82,-74)
hitsound=s2,1
guardsound=s2,0
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200),-9,-6)
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=40*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 13000, Explod]
type = Explod
triggerall = MoveGuarded
trigger1 = !NumExplod(40)
anim = 8001
sprpriority = 3
postype = p2
pos = 28,-70
facing = -1
bindtime = 1
ownpal = 0
id = 40
ignorehitpause = 1



[State 200, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;------------Standing Medium Punch
[Statedef 210]
type=S 
movetype=A 
physics=S 
juggle  = 1
anim=210
velset=0,0
poweradd=14*!var(40)
sprpriority=1
ctrl=0

[State 205, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,3
channel=0
[State 205, snd]
type=playsnd
trigger1=anim=210&&animelem=3
value=1,1;ifelse(anim=205,1,8)


[State 205, hit]
type=hitdef
trigger1=anim=210&&animelem=4
trigger1=var(11):=1&&var(12):=-62
attr=S,NA
damage=44,0
animtype=Medium 
guardflag=M
hitflag=MAF
priority=3,Hit 
pausetime=10,10
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-62
hitsound=s2,8
guardsound=s2,0
ground.type=low
ground.slidetime=13
ground.hittime=13
ground.velocity=-8
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=88*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 205, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---------------Standing Hard Punch
[Statedef 220]
type=S
movetype=A
physics=S
juggle  = 1
anim=215
velset=0,0
poweradd=33*!var(40)
sprpriority=1
ctrl=0

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,3
channel=0

[State 210, snd]
type=playsnd
trigger1=anim=215&&animelem=4
value=1,ifelse((anim=210),3,9)

[State 210, hit]
type=hitdef
trigger1= timemod = 2,0
attr=S,NA
damage=20,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit 
pausetime=4,4
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-48
hitsound=s2,3
guardsound=s2,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity=-12
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=33*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 210, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;----------Standing Light Kick
[Statedef 230]
type=S
movetype=A
physics=S
juggle  = 1
anim=230
velset=1,0
poweradd=20
sprpriority=1
ctrl=0

[State 215, snd]
type=playsnd
trigger1=animelem=2&&random<500
value=3,2
channel=0
[State 215, snd]
type=playsnd
trigger1=animelem=2
value=1,4

[State 200, hit]
type=hitdef
trigger1 = !movehit
trigger1 = !moveguarded
attr=S,NA
damage=22,2
animtype=Light
guardflag=M
hitflag=MAF
priority=2,Hit
pausetime=8,8
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,ifelse((anim=200),-82,-60)
hitsound=s2,1
guardsound=s2,0
ground.type=low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200),-6,-4)
ground.cornerpush.veloff=ifelse((prevstateno=200),-9,-6)
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=40*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 215, end]
type=changestate
trigger1=animtime = 0
value=0
ctrl=1

;---------Standing Medium Kick
[Statedef 240]
type=S 
movetype=A 
physics=S 
juggle=1
anim=220
velset=0,0
poweradd=14*!var(40)
sprpriority=1
ctrl=0

[State 220, snd]
type=playsnd
trigger1=animelem=2&&random<500
value=3,2
channel=0

[State 220, snd]
type=playsnd
trigger1=animelem=2
value=1,5

[State 220, hit]
type=hitdef
trigger1=animelem=2
attr=S,NA
damage=40,0
animtype=Medium 
guardflag=M
hitflag=MAF
priority=3,Hit 
pausetime=10,10
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-53
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-8
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=80*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, hit]
type=hitdef
trigger1=animelem=4
trigger1=var(11):=-1
attr=S,NA
damage=40,0
animtype=Medium 
guardflag=M
hitflag=MAF
priority=3,Hit 
pausetime=10,10
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-53
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-6,-3
air.type=Low
air.velocity=-6,-3
air.cornerpush.veloff=0
getpower=80*!var(20)
yaccel=.5
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;-----Standing Hard Kick

[Statedef 250]
type=S
movetype=A
physics=S
juggle=1
anim=226
velset=0,0
poweradd=24*!var(40)
sprpriority=1
ctrl=0

[State 226, width]
type=width
trigger1=animelemtime(3)>=0
value=30,0

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,3
channel=0

[State 226, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 226, vel]
type=velset
trigger1=animelem=3
x=5
y=-4
[State 226, sts]
type=statetypeset
trigger1=animelemtime(3)>=0
statetype=A
physics=A

[State 226, snd]
type=playsnd
trigger1=animelem=3
value=0,40

[State 226, hit]
type=hitdef
trigger1=animelem=3||animelem=4||animelem=5
trigger1=var(11):=-1
attr=A,NA
damage=13,0
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=6,6
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,ifelse((animelem=3),-96,ifelse((animelem=4),-60,-90))
hitsound=s2,5
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-4
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=26*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 226, hit]
type=hitdef
trigger1=animelem=6
trigger1=var(11):=-1
attr=A,NA
damage=30,0
animtype=Hard
fall.animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit 
pausetime=12,12
sparkno=s7010
guard.sparkno=s7000
sparkxy=-10,-59
hitsound=s2,6
guardsound=s2,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity=-14
air.type=Low
air.hittime=12
air.velocity=-6,9
air.fall=1
fall.recover=0
air.cornerpush.veloff=0
getpower=60*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



;-------------Crouching Light Punch
[Statedef 400]
type=C 
movetype=A 
physics=C 
juggle=1
anim=400
velset=0,0
poweradd=0
sprpriority=1
ctrl=0

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,4
channel=0

[State 230, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 230, hit]
type=hitdef
trigger1=animelem=2||animelem=3
trigger1=var(11):=-1
attr=C,NA
damage=12,0
animtype=Light
guardflag=M
hitflag=MAF
priority=2,Hit 
pausetime=8,8
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-36
hitsound=s2,1
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.hittime=12
air.velocity=-5,-7
down.velocity=-2,-2
air.cornerpush.veloff=0
getpower=24*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;------------------Crouching medium Punch
[Statedef 410]
type = c
movetype = a
physics = c
ctrl = 0
anim = 410
juggle = 1
poweradd = 30

[State 230, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 230, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 230, hit]
type=hitdef
trigger1=animelem=2||animelem=5
attr=C,NA
damage=20,0
animtype=Light
guardflag=M
hitflag=MAF
priority=2,Hit
pausetime=8,8
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-36
hitsound=s2,9
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.hittime=12
air.velocity=-5,-7
down.velocity=-2,-2
air.cornerpush.veloff=0
getpower=24*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 240, end]
type=changestate
trigger1=!animtime
value=ifelse((anim=241),0,11)
ctrl=1

;---------------------------------------------------------------------------
; Crouching Strong Punch
;---------------------------------------------------------------------------
[StateDef 420]
anim = 240
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
juggle = 1
poweradd = 60

[State 240, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,2
channel=0
[State 240, snd]
type=playsnd
trigger1=animelem=3
value=1,9

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
sparkno=s7010
guard.sparkno=s8001
sparkxy=-20,-32
hitsound=s2,3
guardsound=s2,0
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1,-12
guard.velocity = -5
air.velocity = -1,-12
envshake.time = 7
envshake.ampl = 4
;ground.cornerpush.veloff = 0
;guard.cornerpush.veloff = 0
;air.cornerpush.veloff = 0
;airguard.cornerpush.veloff = 0
;down.cornerpush.veloff = 0


[State 420, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[State 420, follow]
type = ChangeState
trigger1 = MoveHit
trigger1 = command = "holdup"
value = 9004
ctrl = 1

;===========<Crouching Light Kick>==========
[Statedef 430]
type=C 
movetype=A 
physics=C 
juggle=1
anim=245
velset=0,0
poweradd=0
sprpriority=1
ctrl=0

[State 245, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,2
channel=0
[State 245, snd]
type=playsnd
trigger1=animelem=2
value=1,4

[State 245, hit]
type=hitdef
trigger1 = !movehit
trigger1 = !moveguarded
trigger1=var(11):=-1
attr=C,NA
damage=20,0
animtype=Light
guardflag=L
hitflag=MAF
priority=2,Hit 
pausetime=8,8
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,ifelse((anim=245),-4,-17)
hitsound=s2,4
guardsound=s2,0
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-4
air.type=Low
air.hittime=12
air.velocity=-5,-7
down.velocity=-2,-2
air.cornerpush.veloff=0
getpower=40*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 245, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


; C Medium Kick>==========
[Statedef 440]
type=C 
movetype=A 
physics=C 
juggle=1
anim=250
velset=0,0
poweradd=14*!var(40)
sprpriority=1
ctrl=0

[State 250, snd]
type=playsnd
trigger1=animelem=2&&random<350
value= 3,2
channel=0

[State 250, snd]
type=playsnd
trigger1=animelem=2
value=1,5

[State 250, hit]
type=hitdef
trigger1 = !movehit
trigger1 = !moveguarded
trigger1=var(11):=-1
attr=S,NA
damage=40,0
animtype=Medium 
guardflag=L
hitflag=MAF
priority=3,Hit 
pausetime=10,10
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,ifelse((anim=250),-14,-31)
hitsound=s2,5
guardsound=s2,0
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-8
air.type=Low
air.hittime=12
air.velocity=-5,-7
down.velocity=-3,-3
air.cornerpush.veloff=0
getpower=80*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


;-----------Crouching Hard Kick
[Statedef 450]
type=C
movetype=A
physics=C
juggle=1
anim=255
velset=0,0
poweradd=20*!var(40)
sprpriority=1
ctrl=0

[State 255, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,2
channel=0
[State 255, snd]
type=playsnd
trigger1=animelem=1
value=1,6

[State 255, hit]
type=hitdef
trigger1= movehit =0
trigger1=animelem=2||animelem=3
attr=C,NA
damage=70,0
animtype=Hard
guardflag=L
hitflag=MAF
priority=4,Hit 
pausetime=12,12
sparkno=s7010
guard.sparkno=s8001
sparkxy=-15,-30
hitsound=s2,6
guardsound=s2,0
ground.type=Trip
ground.slidetime=16
ground.hittime=16
ground.velocity=-1.33,-6.85
air.type=Trip
air.velocity=-1.33,-6.85
down.velocity=-4,-4
air.cornerpush.veloff=0
getpower=120*!var(40)
yaccel=.5
fall=1
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 255, end]
type=changestate
trigger1=!animtime
value=11
ctrl=1


; Airial Light Punch
[Statedef 600]
type=A
movetype=A
physics=A
juggle=1
anim=260
poweradd=0
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105])&&p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 260, snd]
type=playsnd
trigger1=animelem=2&&random<200
value=3,ifelse(random<500,1,2)
channel=0
[State 260, snd]
type=playsnd
trigger1=animelem=2
value=1,1

[State 260, hit]
type=hitdef
trigger1 = !movehit
trigger1 = !moveguarded
attr=A,NA
damage=20,0
animtype=Light
guardflag=HA
hitflag=MAF
priority=2,Hit
pausetime=8,8
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-43
hitsound=s2,1
guardsound=s2,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0



[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 72
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1



; Airial Medium Punch
[Statedef 610]
type=A
movetype=A
physics=A
juggle=1
anim=265
poweradd=14*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105])&&p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y


[State 265, snd]
type=playsnd
trigger1=animelem=3
value=1,8


[State 265, hit]
type=hitdef
trigger1=animelem=3||animelem=4||animelem=5||animelem=6||animelem=7
attr=A,NA
damage=15,0
animtype=Medium
guardflag=HA
hitflag=MAF
priority=3,Hit
pausetime=6,6
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-48
hitsound=s2,2
guardsound=s2,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 72



; Airial Hard Punch
[Statedef 620]
type=A
movetype=A
physics=A
juggle=1
anim=270
poweradd=20*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105])&&p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 270, snd]
type=playsnd
trigger1=animelem=5&&random<500
value=3,ifelse(random<500,0,2)
channel=0
[State 270, snd]
type=playsnd
trigger1=animelem=5
value=1,3

[State 270, hit]
type=hitdef
trigger1=animelem=2||animelem=3||animelem=4||animelem=5
attr=A,NA
damage=20,0
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=4,4
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-65
hitsound=s2,3
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-5.75
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=33*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 72

; Airial Light Kick
[Statedef 630]
type=A
movetype=A
physics=A
juggle=1
anim=275
poweradd=0
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105])&&p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 210, snd]
type=playsnd
trigger1=animelem=2&&random<500
value=3,3
channel=0

[State 275, snd]
type=playsnd
trigger1=animelem=2
value=1,4

[State 275, hit]
type=hitdef
trigger1 = !movehit
trigger1 = !moveguarded
attr=A,NA
damage=20,0
animtype=Light
guardflag=HA
hitflag=MAF
priority=2,Hit
pausetime=8,8
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,ifelse((anim=275),-42,-62)
hitsound=s2,4
guardsound=s2,0
ground.type = High
air.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 70



;===========<Air Medium Kick>==========
[Statedef 640]
type=A
movetype=A
physics=A
juggle=1
anim=280
poweradd=14*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105])&&p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 280, snd]
type=playsnd
trigger1=animelem=3&&random<350
value=3,ifelse(random<500,0,2)
channel=0
[State 280, snd]
type=playsnd
trigger1=animelem=3
value=1,5

[State 280, hit]
type=hitdef
trigger1=time
trigger1=var(11):=-1
attr=A,NA
damage=40,0
animtype=Medium
guardflag=HA
hitflag=MAF
priority=3,Hit
pausetime=10,10
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,-47
hitsound=s2,5
guardsound=s2,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = 0,((vel y)-.2)
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 280, sts]
type=statetypeset
trigger1=animelemtime(4)>=0
movetype=I


;===========<Air Hard Kick>==========
[Statedef 650]
type=A
movetype=A
physics=A
juggle=1
anim=290
poweradd=20*!var(40)
sprpriority=1
ctrl=0
facep2=(prevstateno=[100,105])&&p2dist x<0
velset=vel x*ifelse((prevstateno=[100,105]),.5,1),vel y

[State 210, snd]
type=playsnd
trigger1=animelem=3&&random<500
value=3,3
channel=0

[State 285, snd]
type=playsnd
trigger1=animelem=3
value=1,6

[State 285, hit]
type=hitdef
trigger1=animelem=4 ||animelem=5 ||animelem=6
attr=A,NA
damage=40,0
animtype=Hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime=12,12
sparkno=s7010
guard.sparkno=s8001
sparkxy=-10,12
hitsound=s2,9
guardsound=s2,0
ground.type=High
ground.hittime=12
ground.slidetime=12
ground.velocity=-5.75
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
getpower=120*!var(40)
yaccel=.5
;Corner Push System support from Statedef -3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0


[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 70






[Statedef 800]
type=S
movetype=A
physics=S
juggle=0
velset=0,0
ctrl=0
anim=800
sprpriority=-1

[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)<=0
var(10)=2
[State 800, strengthvar]
type=varset
trigger1=!time&&var(59)>=1
var(10)=2

[State 800, hit]
type=hitdef
trigger1=animelem=2&&var(10)=1
attr=S,NT
hitflag=M-
priority=1,Miss 
sparkno=-1
p1facing=-1;ifelse(command="holdfwd",1,-1)
p2facing=1
p1stateno=ifelse(command="holdfwd",801,803) 
p2stateno=ifelse(command="holdfwd",802,804)
guard.dist=0
animtype=Up
fall.xvelocity=-3
fall.yvelocity=-6
fall=1 
fall.recover=0
ID=810

[State 800, hit]
type=hitdef
trigger1=animelem=2&&var(10)=2
attr=S,NT
hitflag=M-
priority=1,Miss 
sparkno=-1
p1facing=ifelse(command="holdfwd",1,-1)
p2facing=1
p1stateno=ifelse(command="holdfwd",801,803) 
p2stateno=ifelse(command="holdfwd",802,804)
guard.dist=0
animtype=Back
fall=1 
fall.recover=0
ID=820

[State 800, misssnd]
type=playsnd
trigger1=animelem=4
value=5000,1
channel=0
[State 800, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---PLAYER---
[Statedef 801]
type=S
movetype=A
physics=S
anim=801
ctrl=0
sprpriority=-1
[State 801, grab snd]
type=playsnd
trigger1=!time
value=4,29
channel=0
[State 801, grab snd]
type=playsnd
trigger1=!time
value=0,800
[State 801, bind 1]
type=targetbind
trigger1=1
pos=50,0
[State 801, end]
type=changestate
trigger1=!animtime
value = 820
ctrl=0



[Statedef 803]
type=S
movetype=A
physics=S
anim=803
ctrl=0
sprpriority=-1
[State 803, grab snd]
type=playsnd
trigger1=!time
value=4,29
channel=0
[State 803, grab snd]
type=playsnd
trigger1=!time
value=0,800
[State 803, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=-50,0
[State 803, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=-25,0
[State 803, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=-0,0
[State 803, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0
pos=25,0
[State 803, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0
pos=50,0
[State 803, end]
type=changestate
trigger1=!animtime
value=ifelse(var(10)=1,810,820)
ctrl=0



[Statedef 802]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 802, anim]
type=changeanim2
trigger1=!time
value=802
[Statedef 804]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 804, anim]
type=changeanim2
trigger1=!time
value=804

;---PLAYER---
[Statedef 810]
type=S
movetype=A
physics=S
anim=810
juggle=15
poweradd=80*!var(20)
sprpriority=1
ctrl=0

[State 810, throw]
type=targetstate
trigger1=!time
value=811
[State 810, throw]
type=targetfacing
trigger1=!time
value=-1
[State 810, width]
type=width
trigger1=animelemtime(5)>0
edge=60,0

[State 810, throwsnd]
type=playsnd
trigger1=animelem=5
value=3,2
channel=0
[State 810, throwsnd]
type=playsnd
trigger1=animelem=4
value=1,6

[State 810, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=66,-76
[State 810, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=60,-77
[State 810, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(4)<0
pos=-4,-72
[State 810, bind 4]
type=targetbind
trigger1=animelemtime(4)>=0&&animelemtime(5)<0
pos=52,-70
[State 810, bind 5]
type=targetbind
trigger1=animelemtime(5)>=0&&animelemtime(6)<0
pos=72,-38
[State 810, bind 6]
type=targetbind
trigger1=animelem=6
pos=82,0

[State 810, hurt]
type=targetlifeadd
trigger1=animelem=6
value=-100
[State 810, throw]
type=targetstate
trigger1=animelem=6
value=812

[State 810, snd]
type=playsnd
trigger1=numtarget(810)
trigger1=target(810),stateno=812
value=5,2
persistent=0
[State 810, dust]
type=explod
trigger1=numtarget(810)
trigger1=target(810),stateno=812
anim=7120
ID=7120
sprpriority=-2
postype=p2
pos=0,0
removetime=-2
ownpal=1
scale=.5,.5
persistent=0
[State 810, shake]
type=envshake
trigger1=numtarget(810)
trigger1=target(810),stateno=812
time=12
freq=60
ampl=6
persistent=0

[State 810, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1

[Statedef 811]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 811, anim]
type=changeanim2
trigger1=!time
value=811
[State 811, camera]
type=screenbound
trigger1=1
value=0
movecamera=0,0

[Statedef 812]
type=A
movetype=H
physics=N
poweradd=40
[State 812, anim]
type=changeanim2
trigger1=!time
value=812
[State 812, pos]
type=posset
trigger1=1
y=0
[State 812, hitground]
type=selfstate
trigger1=time>=12
value=5101


;---PLAYER---
[Statedef 820]
type=S
movetype=A
physics=S
anim=820
juggle=15
poweradd=80*!var(20)
sprpriority=1
ctrl=0

[State 820, throw]
type=targetstate
trigger1=!time
value=821
[State 820, throw]
type=targetfacing
trigger1=!time
value=-1
[State 820, width]
type=width
trigger1=animelemtime(5)>=0&&animelemtime(8)<0
edge=85,0

[State 820, throwsnd]
type=playsnd
trigger1=animelem=4
value=195,2
channel=0
[State 820, throwsnd]
type=playsnd
trigger1=animelem=6
value=1,3


[State 820, bind 1]
type=targetbind
trigger1=animelemtime(1)>=0&&animelemtime(2)<0
pos=20,-71
[State 820, bind 2]
type=targetbind
trigger1=animelemtime(2)>=0&&animelemtime(3)<0
pos=40,-75
[State 820, bind 3]
type=targetbind
trigger1=animelemtime(3)>=0&&animelemtime(5)<0
pos=65,-75
[State 820, bind 8]
type=targetbind
trigger1=animelemtime(5)>=0&&animelemtime(6)<0
pos=120,-75

[State 820, bind 8]
type=targetbind
trigger1=animelemtime(6)>=0&&animelemtime(7)<0
pos=160,-75



[State 820, hurt]
type=targetlifeadd
trigger1=animelem=8
value=-90
[State 820, throw]
type=targetstate
trigger1=animelem=7
value=822

[State 825, snd]
type=playsnd
trigger1=(target(820),stateno=822)&&(target(820),backedgebodydist<=0)
value=5,2
persistent=0
[State 825, dust]
type=explod
trigger1=(target(820),stateno=822)&&(target(820),backedgebodydist<=0)
anim=7121
ID=7121
sprpriority=-2
postype=back
pos=320,ceil(screenpos y-65)
ownpal=1
scale=.5,.5
persistent=0

[State 825, syncvar]
type=varset
trigger1=numtarget(820)
var(0)=(target(820),stateno)

[State 820, end]
type=changestate
trigger1=!animtime
value=0
ctrl=1


;---TARGET---
[Statedef 821]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 821, anim]
type=changeanim2
trigger1=!time
value=821
[State 821, camera]
type=screenbound
trigger1=1
value=1
movecamera=1,0

[Statedef 822]
type=A
movetype=H
physics=N

[State 822, vel]
type=velset
trigger1= 1
x=-10
y=0
[State 822, hitwall]
type=changestate
trigger1=backedgebodydist<=0
value=823

[Statedef 823]
type=A
movetype=H
physics=N
velset=0,0
[State 823, hurt]
type=lifeadd
trigger1=!time
value=-20
[State 823, hurt]
type=poweradd
trigger1=!time
value=12
[State 823, anim]
type=changeanim2
trigger1=!time
value=823
[State 823, camera]
type=screenbound
trigger1=1
value=1
movecamera=1,0
;[State 823, turn]
type=turn
trigger1=!time
persistent=0
[State 823, shake]
type=envshake
trigger1=!time
time=16
fre=60
ampl=6
[State 823, pos]
type=posadd
trigger1=animelem=2
x=ifelse((frontedgebodydist>backedgebodydist),backedgebodydist,frontedgebodydist)
y=-const(size.mid.pos.y)
persistent=0
[State 823, vel]
type=velset
trigger1=animelem=2
x=-3
y=-6
[State 823, grav]
type=gravity
trigger1=animelemtime(2)>=0
[State 823, hitground]
type=selfstate
trigger1=vel y>0&&pos y>=25
value=5100
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
