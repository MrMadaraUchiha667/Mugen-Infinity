



;acid
[Statedef 7051]
physics=N
velset=0,0
anim=7051
sprpriority=3
[State 7051, grav]
type=gravity
trigger1=1
[State 7051, vel]
type=velset
trigger1=!time
x=-3+(random/250.0)
y=-3-(random/250.0)

[State 226, dust]
type=helper
trigger1=time = 3
helpertype=normal
stateno=70511
ID=70511
name="acid2"
postype=p1
ownpal=1

[State 7051, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,128

[State 7051, end]
type=destroyself
trigger1=frontedgedist<-40
value=889
[State 7051, end]
type=changestate
trigger1=vel y>0&&pos y>=-5
value=889

[Statedef 70511]
physics=N
velset=0,0
anim=7051
sprpriority=3
[State 7051, grav]
type=gravity
trigger1=1
[State 7051, vel]
type=velset
trigger1=!time
x=-3.5+(random/250.0)
y=-2.5-(random/250.0)


[State 7051, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,128

[State 7051, end]
type=destroyself
trigger1=frontedgedist<-40
value=889
[State 7051, end]
type=changestate
trigger1=vel y>0&&pos y>=-5
value=889


[Statedef 889]
physics=N
velset=0,0
anim=889
sprpriority=-2
[State 7052, vel]
type=velset
trigger1=1
x=0
y=0
[State 7052, pos]
type=posset
trigger1=1
y=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 8,1



[State 7052, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
[State 7052, trans]
type=trans
trigger1=animelemtime(4)<0
trans=addalpha
alpha=256,128
[State 7052, fadeout]
type=trans
trigger1=animelemtime(4)=[0,20]
trans=addalpha
alpha=ceil(256-12.8*animelemtime(4)),ceil(128+6.4*animelemtime(4))
[State 7052, end]
type=destroyself
trigger1=!animtime
value=7052



;========================<AI ACTIVATION>=============================

[StateDef 9741]
anim=9741
ctrl=0
[State 9741, safety]
type=selfstate
trigger1=!ishelper
value=0

[State 9741, end]
type=destroyself
trigger1=((root,ID)!=(parent,ID))||!(root,alive)
trigger2=roundstate!=2
trigger3=root,var(59)

[State 9741, facing]
type=turn
trigger1=facing!=root,facing

[State 9741, pausecheck]
type=varset
trigger1=(root,movecontact)&&!(root,ctrl)
trigger2=(facing!=root,facing)
var(0)=0

[State 9741, dirturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="up")||(root,command="down")||(root,command="back")||(root,command="fwd")
var(59)=1
[State 9741, dirturnoffAI]
type=parentvarset
trigger1=(command="up")&&(root,command="up")
trigger2=(command="down")&&(root,command="down")
trigger3=(command="back")&&(root,command="back")
trigger4=(command="fwd")&&(root,command="fwd")
var(59)=-1

[State 9741, buttonturnonAI]
type=parentvarset
triggerall=var(0)
trigger1=(root,command="a")||(root,command="b")||(root,command="c")
trigger2=(root,command="x")||(root,command="y")||(root,command="z")||(root,command="start")
var(59)=1

[State 9741, buttonturnoffAI]
type=parentvarset
trigger1=(command="a")&&(root,command="a")
trigger2=(command="b")&&(root,command="b")
trigger3=(command="c")&&(root,command="c")
trigger4=(command="x")&&(root,command="x")
trigger5=(command="y")&&(root,command="y")
trigger6=(command="z")&&(root,command="z")
trigger7=(command="start")&&(root,command="start")
var(59)=-1
[State 9741, unpausecheck]
type=varset
trigger1=root,ctrl
var(0)=1


;-----------------------acid
[Statedef 1005]
type=A
physics=N
movetype=A
anim=888
ctrl=0
velset=0,0
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0




[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time= 1
x = 2
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 10
;x =
y = 1
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
;x =
y = 2


[State 1005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,2
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
hitsound = s8,1
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=S,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5



[State 1005, end]
type=changestate
trigger1=movecontact
value=7051
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >0
value = 1007
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1


;-----------------------acid
[Statedef 1006]
type=A
physics=N
movetype=A
anim=888
ctrl=0
velset=0,0
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1

[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time= 1
x = 4
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 10
;x =
y = 1
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
;x =
y = 2


[State 1005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,2
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
hitsound = s8,1
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=S,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5



[State 1005, end]
type=changestate
trigger1=movecontact
value=7051
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >0
value = 1007
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

;-----------------------

[Statedef 1007]
type=A
physics=N
movetype=I
anim=900
velset=0,0
ctrl=0
sprpriority=4

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 889
;ID =
;pos = 0,0
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = 1
;vel = 0,0
;accel = 0,0
;random = 0,0
removetime = 23
;supermove = 0
scale = 1.25, 1.25



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 2, 3
;volume = 0
;channel = -1
;lowpriority =
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 8, 1
;volume = 0
;channel = -1
;lowpriority =
ignorehitpause = 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 23
ignorehitpause = 1
;persistent = 1

;-----------------------acid
[Statedef 1008]
type=A
physics=N
movetype=A
anim=888
ctrl=0
velset=0,0
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 8,0

[State 1005, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1005, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 0, VelSet]
type = VelSet
trigger1 = time= 1
x = 6
;y =
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 10
;x =
y = 1
;ignorehitpause = 0
;persistent = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time = 20
;x =
y = 2


[State 1005, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,2
persistent=0
ignorehitpause=1

[State 1005, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
hitsound = s8,1
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1005, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=S,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5



[State 1005, end]
type=changestate
trigger1=movecontact
value=7051
ignorehitpause=1

[State 0, ChangeState]
type = ChangeState
trigger1 =  pos y >0
value = 1007
;ctrl = 1
;anim =
;ignorehitpause = 0
;persistent = 1

[Statedef 1055]
type=A
physics=N
movetype=A
anim=1005
ctrl=0
velset=0,0
sprpriority=4
juggle=5

[State 1055, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1055, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1055, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1055, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 1055, parentvar]
type=varset
trigger1=!time&&!prevstateno
var(4)=(parent,ishelper)
[State 1055, timevar]
type=varadd
trigger1=time
var(1)=1

[State 1005, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1005, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=20
[State 1005, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1055, vel]
type=velset
trigger1=1
x=ifelse(var(10)=3,4.3,ifelse(var(10)=2,3.6,2.9))
y=ifelse(var(10)=3,3,ifelse(var(10)=2,2.5,2))

[State 1055, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1055, sprpriority]
type=sprpriority
trigger1=1
value=4

[State 1055, bat]
type=explod
trigger1=!numexplod(1008)
anim=1058
ID=1008
sprpriority=4
postype=p1
bindtime=-1
removetime=-1
removeongethit=1
ignorehitpause=1
scale=1,1
[State 1055, bat]
type=modifyexplod
trigger1=numexplod(1008)
ID=1008
postype=p1
facing=1

[State 1055, particles]
type=explod
trigger1=1
vel=-1+(random<500),-.5+(random<500)
accel=0,.05
anim=1009
sprpriority=3
postype=p1
random=20,20
removetime=-2
scale=.5,.5
ignorehitpause=1

[State 1055, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,10
persistent=0
ignorehitpause=1

[State 1055, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=A,SP
damage=ceil(90*(root,fvar(12))),5
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
down.velocity=0,0
down.hittime=20
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1055, hit]
type=hitdef
trigger1=(sysvar(3)%2)
priority=7,Hit
attr=A,SP
damage=90,5
affectteam=F
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
down.velocity=0,0
down.hittime=20
air.fall=1
getpower=180*!(root,var(20))
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1055, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1055, end]
type=changestate
trigger1=var(1)>=ifelse(var(10)=3,60,ifelse(var(10)=2,50,40))
trigger2=(var(1)>var(4)*60)&&(frontedgedist<-90||backedgedist<-90)||pos y>=-20
value=1007
ignorehitpause=1
[State 1055, end]
type=changestate
trigger1=movecontact
value=1006
ignorehitpause=1


[Statedef 1015]
type=A
physics=N
movetype=A
anim=1005
ctrl=0
sprpriority=4
juggle=5

[State 1015, hitoverride]
type=hitoverride
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1006
ignorehitpause=1
[State 1015, hitby]
type=hitby
trigger1=1
time=-1
value=SCA,NP,SP,HP
ignorehitpause=1

[State 1015, strengthvar]
type=varset
trigger1=!time
var(10)=root,var(10)
[State 1015, movehitvar]
type=varset
trigger1=movecontact&&numtarget
trigger1=!(target,ishelper)
var(3)=1
ignorehitpause=1
[State 1015, parentvar]
type=varset
trigger1=!time&&!prevstateno
var(4)=(parent,ishelper)
[State 1015, timevar]
type=varadd
trigger1=time
var(1)=1

[State 1015, reflectionvar]
type=varset
trigger1=!time&&!prevstateno
sysvar(3)=123000
[State 1015, reflectedpos]
type=posadd
trigger1=!time&&sysvar(4)=1
x=20
[State 1015, wasreflected]
type=varset
trigger1=sysvar(4)
sysvar(4)=0

[State 1015, turn]
type=turn
trigger1=p2dist x<0
persistent=0
[State 1015, bat]
type=modifyexplod
trigger1=numexplod(1008)
ID=1008
postype=p1
facing=1

[State 1015, vel]
type=velset
trigger1=!time&&!prevstateno
x=6
y=0
[State 1015, vel]
type=velset
trigger1=vel y>0&&pos y>=-20
y=0
[State 1015, vel]
type=posset
trigger1=vel y>0&&pos y>=-20
y=-20

[State 1015, vel]
type=veladd
trigger1=vel x<6&&p2dist x>=0
x=.2
[State 1015, vel]
type=veladd
trigger1=vel x>-6&&p2dist x<0
x=-.2
[State 1015, vel]
type=veladd
trigger1=vel y<6&&(enemynear,statetype=S||enemynear,statetype=A)&&pos y<(enemynear,pos y+enemynear,const(size.mid.pos.y))
y=.2
[State 1015, vel]
type=veladd
trigger1=vel y>-6&&(enemynear,statetype=S||enemynear,statetype=A)&&pos y>(enemynear,pos y+enemynear,const(size.mid.pos.y))
y=-.2
[State 1015, vel]
type=veladd
trigger1=vel y<6&&(enemynear,statetype=C)&&pos y<(enemynear,pos y+(enemynear,const(size.mid.pos.y)/2.0))
y=.2
[State 1015, vel]
type=veladd
trigger1=vel y>-6&&(enemynear,statetype=C)&&pos y>(enemynear,pos y+(enemynear,const(size.mid.pos.y)/2))
y=-.2
[State 1015, vel]
type=veladd
trigger1=vel y<6&&(enemynear,statetype=L)&&pos y<-10
y=.2
[State 1015, vel]
type=veladd
trigger1=vel y>-6&&(enemynear,statetype=L)&&pos y>-10
y=-.2

[State 1015, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 1015, sprpriority]
type=sprpriority
trigger1=1
value=4

[State 1015, bat]
type=explod
trigger1=!numexplod(1008)
anim=1008
ID=1008
sprpriority=4
postype=p1
bindtime=-1
removetime=-1
removeongethit=1
ignorehitpause=1
scale=1,1

[State 1015, particles]
type=explod
trigger1=1
vel=-1+(random<500),0
accel=0,.05
anim=1009
sprpriority=3
postype=p1
random=20,20
removetime=-2
scale=.5,.5
ignorehitpause=1

[State 1015, hitsnd]
type=playsnd
trigger1=movehit&&numtarget
trigger1=!(target,time)&&target,movetype=H
value=2,10
persistent=0
ignorehitpause=1

[State 1015, hit]
type=hitdef
trigger1=1
priority=7,Hit
attr=S,SP
damage=ceil(80*(root,fvar(12))),5
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=4,4
sparkno=-1
guard.sparkno=s8001
sparkxy=-10,0
guardsound=s2,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10,0
ground.cornerpush.veloff=0
air.velocity=-4,-4
down.velocity=0,0
down.hittime=20
air.fall=1
getpower=0
envshake.time=12
envshake.freq=100
envshake.ampl=4
sprpriority=4
yaccel=.5

[State 1015, sparks]
type=explod
trigger1=movehit&&numtarget
trigger1=(target,movetype=H)&&!(target,time)
anim=7020+(random%8)
ID=7000
sprpriority=5
postype=left
pos=ceil((target,pos x)-((target,const(size.ground.front)-10)*facing)+160),ceil(screenpos y)
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
persistent=0
pausemovetime=100
supermovetime=100

[State 1015, end]
type=changestate
trigger1=var(1)>=90
trigger2=(var(1)>var(4)*60)&&(frontedgedist<-120||backedgedist<-120)
value=1007
ignorehitpause=1
[State 1015, end]
type=changestate
trigger1=movecontact
value=1006
ignorehitpause=1



[Statedef 3006]
type=A
physics=N
movetype=I
anim=3006
velset=0,0
ctrl=0
sprpriority=4

[State 3006, snd]
type=playsnd
trigger1=animelem=1
value=5,1
ignorehitpause=1
persistent=0
[State 3006, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 3006, vel]
type=velset
trigger1=pos y>=-10
x=0
y=0
[State 3006, vel]
type=posset
trigger1=pos y>=-10
y=-10
[State 3006, end]
type=destroyself
trigger1=!animtime

[Statedef 3007]
type=A
physics=N
movetype=I
anim=3007
velset=.5*vel x,.5*vel y
ctrl=0
sprpriority=4

[State 3007, shrink]
type=angledraw
trigger1=1
scale=const(size.xscale)-time*(const(size.xscale)/15),const(size.yscale)-time*(const(size.yscale)/15)
[State 3007, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256,256
ignorehitpause=1
[State 3007, vel]
type=velset
trigger1=pos y>=-10
x=0
y=0
[State 3007, vel]
type=posset
trigger1=pos y>=-10
y=-10
[State 3007, end]
type=destroyself
trigger1=time>=15
trigger2=frontedgedist<-50||backedgedist<0
trigger2=!numexplod(3008)

;---------

[Statedef 6005]
physics=N
velset=0,0
anim=6005
sprpriority=-5
[State 6005, assert]
type=assertspecial
trigger1=1
flag=noshadow
[State 6005, fade]
type=trans
trigger1=root,animelemtime(13)>=0
trans=addalpha
alpha=ceil(256-10.2*root,animelemtime(13)),ceil(10.2*root,animelemtime(13))
[State 6005, end]
type=destroyself
trigger1=root,stateno!=191
trigger2=root,stateno=191&&root,animelemtime(13)>=25


;---TARGET---
[Statedef 1114101]
type=S
movetype=H
physics=N
velset=0,0
sprpriority=0
[State 1114101, ishelper]
type=selfstate
trigger1=ishelper
value=prevstateno

[State 1114101, anim]
type=changeanim2
trigger1=!time
value=1114101
[State 4101, camera]
type=screenbound
trigger1=1
value=0
movecamera=0,0
[State 1111114101, spr]
type=sprpriority
trigger1=animelemtime(2)>=0&&animelemtime(18)<0
value=5
[State 1111114101, spr]
type=sprpriority
trigger1=animelemtime(18)>=0
value=0
[State 1111114101, palfx]
type=palfx
trigger1=animelemtime(2)>=0&&animelemtime(18)<0
time=2
mul=0,0,0

[Statedef 1114102]
type=L
movetype=H
physics=C
velset=0,0
sprpriority=0
[State 1114102, pos]
type=posset
trigger1=1
y=0
[State 1114102, end]
type=selfstate
trigger1=1
value=ifelse(alive,5120,5150)


;========================<THROW CLAW>=============================
[Statedef 825]
physics=N
velset=0,0
anim=825
sprpriority=2
[State 825, bind]
type=bindtoroot
trigger1=root,stateno=820&&root,anim=820&&root,animelemtime(9)<0
pos=105,-65
[State 825, camera]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[State 825, pos]
type=posset
trigger1=1
y=-65
[State 825, vel]
type=velset
trigger1=1
x=12

[State 825, jet]
type=explod
trigger1=!time
anim=3306
ID=3306
sprpriority=3
postype=p1
bindtime=-1
removetime=-1
scale=.5,.5
ownpal=1

[State 825, jet]
type=removeexplod
trigger1=!(root,numtarget(820));||(root,var(0)=823)
trigger2=ifelse((root,stateno=820&&root,anim=820),root,animelemtime(9)>=0,1)
trigger2=frontedgedist<=0
ID=3306
[State 825, end]
type=changestate
trigger1=!(root,numtarget(820));||(root,var(0)=823)
trigger2=ifelse((root,stateno=820&&root,anim=820),root,animelemtime(9)>=0,1)
trigger2=frontedgedist<=0
value=6110


;---LOSE by TIME---
[Statedef 6104]
physics=N
anim=6100
sprpriority=2
ctrl=0
[State 6104, ID]
type=varset
trigger1=!time
var(0)=root,var(48)
[State 6104, vel]
type=velset
trigger1=1
x=ifelse(var(0)=1,-.25,.25)
y=-.5
[State 6104, end]
type=destroyself
trigger1=root,stateno!=170


;---LIE DOWN---
[Statedef 6105]
physics=N
anim=6101
velset=0,0
sprpriority=2
ctrl=0

[State 6105, ID]
type=varset
trigger1=!time
var(0)=root,var(48)
[State 6105, turn]
type=turn
trigger1=var(0)=2&&facing!=root,facing

[State 6105, varx]
type=varset
trigger1=root,stateno!=5120
fvar(1)=0
[State 6105, vary]
type=varset
trigger1=root,stateno!=5120
fvar(2)=0

[State 6105, varx]
type=varadd
trigger1=var(0)=1&&root,stateno=5120
fvar(1)=-1.47
[State 6105, vary]
type=varadd
trigger1=var(0)=1&&root,stateno=5120
fvar(2)=-1.16

[State 6105, varx]
type=varadd
trigger1=var(0)=2&&root,stateno=5120
fvar(1)=5
[State 6105, vary]
type=varadd
trigger1=var(0)=2&&root,stateno=5120
fvar(2)=-6.33

[State 6105, varx]
type=varadd
trigger1=var(0)=3&&root,stateno=5120
fvar(1)=.4
[State 6105, vary]
type=varadd
trigger1=var(0)=3&&root,stateno=5120
fvar(2)=-0.5

[State 6100, varx]
type=varadd
trigger1=var(0)=4&&root,stateno=5120
fvar(1)=-.6
[State 6100, vary]
type=varadd
trigger1=var(0)=4&&root,stateno=5120
fvar(2)=-0.73

[State 6105, bind]
type=bindtoroot
trigger1=var(0)=1
pos=2+fvar(1),-16+fvar(2)
[State 6105, bind]
type=bindtoroot
trigger1=var(0)=2
pos=-64+fvar(1),-18+fvar(2)
[State 6105, bind]
type=bindtoroot
trigger1=var(0)=3
pos=-24+fvar(1),-36+fvar(2)
[State 6105, bind]
type=bindtoroot
trigger1=var(0)=4
pos=-7+fvar(1),-43+fvar(2)

[State 6105, end]
type=destroyself
trigger1=root,stateno!=5110&&root,stateno!=5120&&root,stateno!=5150
trigger2=var(0)=2&&root,stateno=5120&&root,animelemtime(5)>=0


;---INTRO 1---
[Statedef 6106]
physics=N
anim=6100
velset=0,0
sprpriority=2
ctrl=0

[State 6106, ID]
type=varset
trigger1=!time
var(0)=root,var(48)

[State 6100, varx]
type=varset
trigger1=root,animelemtime(13)<0
fvar(1)=0
[State 6100, vary]
type=varset
trigger1=root,animelemtime(13)<0
fvar(2)=0

[State 6106, varx]
type=varadd
trigger1=var(0)=1&&(root,animelemtime(13)=[0,25])
fvar(1)=-.16
[State 6106, vary]
type=varadd
trigger1=var(0)=1&&(root,animelemtime(13)=[0,25])
fvar(2)=-2.04

[State 6106, varx]
type=varadd
trigger1=var(0)=2&&(root,animelemtime(13)=[0,25])
fvar(1)=-1.08
[State 6106, vary]
type=varadd
trigger1=var(0)=2&&(root,animelemtime(13)=[0,25])
fvar(2)=-1.4

[State 6106, varx]
type=varadd
trigger1=var(0)=3&&(root,animelemtime(13)=[0,25])
fvar(1)=-1.32
[State 6106, vary]
type=varadd
trigger1=var(0)=3&&(root,animelemtime(13)=[0,25])
fvar(2)=-3.7

[State 6106, varx]
type=varadd
trigger1=var(0)=4&&(root,animelemtime(13)=[0,25])
fvar(1)=.84
[State 6106, vary]
type=varadd
trigger1=var(0)=4&&(root,animelemtime(13)=[0,25])
fvar(2)=-1.72

[State 6106, varx]
type=varadd
trigger1=var(0)=5&&(root,animelemtime(13)=[0,25])
fvar(1)=-.04
[State 6106, vary]
type=varadd
trigger1=var(0)=5&&(root,animelemtime(13)=[0,25])
fvar(2)=-.8

[State 6106, varx]
type=varadd
trigger1=var(0)=6&&(root,animelemtime(13)=[0,25])
fvar(1)=-.56
[State 6106, vary]
type=varadd
trigger1=var(0)=6&&(root,animelemtime(13)=[0,25])
fvar(2)=-3.4

[State 6106, bind]
type=bindtoroot
trigger1=var(0)=1
pos=-23+fvar(1),1+fvar(2)
[State 6106, bind]
type=bindtoroot
trigger1=var(0)=2
pos=0+fvar(1),4+fvar(2)
[State 6106, bind]
type=bindtoroot
trigger1=var(0)=3
pos=23+fvar(1),1+fvar(2)
[State 6106, bind]
type=bindtoroot
trigger1=var(0)=4
pos=-19+fvar(1),-7+fvar(2)
[State 6106, bind]
type=bindtoroot
trigger1=var(0)=5
pos=0+fvar(1),-10+fvar(2)
[State 6106, bind]
type=bindtoroot
trigger1=var(0)=6
pos=19+fvar(1),-7+fvar(2)

[State 6106, spr]
type=sprpriority
trigger1=1
value=ifelse(var(0)>=4,-1,1)
pos=2+fvar(1),-16+fvar(2)
[State 6106, end]
type=destroyself
trigger1=root,stateno!=191||root,movetype=H
trigger2=root,stateno=191&&root,animelemtime(14)>=0


;---WIN 1---
[Statedef 6107]
physics=N
anim=6100
velset=0,0
sprpriority=0
ctrl=0

[State 6107, ID]
type=varset
trigger1=!time
var(0)=root,var(48)

[State 6107, vel]
type=velset
trigger1=!time&&(var(0)%2)=1
x=ifelse(var(0)=1,-.75,ifelse(var(0)=3,-1.25,ifelse(var(0)=5,-1.25,-.5)))
y=ifelse(var(0)=1,-.75,ifelse(var(0)=3,-1,ifelse(var(0)=5,-1.25,-1.5)))
[State 6107, vel]
type=velset
trigger1=!time&&!(var(0)%2)
x=ifelse(var(0)=2,-.75,ifelse(var(0)=4,-1.25,ifelse(var(0)=6,-1.25,-.5)))
y=ifelse(var(0)=2,.75,ifelse(var(0)=4,1,ifelse(var(0)=6,1.25,1.5)))

[State 6107, vel]
type=veladd
trigger1=root,animelemtime(2)<0&&(var(0)%2)=1&&vel y<1.5
y=.033
[State 6107, vel]
type=veladd
trigger1=root,animelemtime(2)<0&&!(var(0)%2)&&vel y>-1.5
y=-.033

[State 6107, vel]
type=velset
trigger1=root,animelemtime(2)>=0
trigger1=(var(0)=1||var(0)=2||var(0)=5||var(0)=6)
x=cos(time/20.0)
y=-cos((time+10)/20.0)
[State 6107, vel]
type=velset
trigger1=root,animelemtime(2)>=0
trigger1=(var(0)=3||var(0)=4||var(0)=7||var(0)=8)
x=-cos(time/20.0)
y=cos((time+10)/20.0)

[State 6107, vel]
type=velmul
trigger1=vel y>0&&pos y>-10
y=.8
[State 6107, end]
type=destroyself
trigger1=root,stateno!=181||root,movetype=H


;---POWER CHARGE---
[Statedef 6108]
physics=N
anim=6100
velset=0,0
ctrl=0

[State 6108, ID]
type=varset
trigger1=!time
var(0)=root,var(48)

[State 6108, vel];to trigger sprpriority only
type=velset
trigger1=1
x=ifelse((sin(time/5.0)<0),-.001,.001)
[State 6108, bind]
type=bindtoroot
trigger1=var(0)=1
pos=-5+25*cos(time/5.0),-50+35*cos(time/17.5)
[State 6108, bind]
type=bindtoroot
trigger1=var(0)=2
pos=-5-25*cos(time/5.0),-50-35*cos(time/17.5)
[State 6108, bind]
type=bindtoroot
trigger1=var(0)=3
pos=-5+25*cos(time/5.0),-50-35*cos(time/17.5)
[State 6108, bind]
type=bindtoroot
trigger1=var(0)=4
pos=-5-25*cos(time/5.0),-50+35*cos(time/17.5)

[State 6108, spr]
type=sprpriority
trigger1=var(0)=1||var(0)=3
value=ifelse(vel x>=0,2,-1)
[State 6108, spr]
type=sprpriority
trigger1=var(0)=2||var(0)=4
value=ifelse(vel x<=0,2,-2)
[State 6108, end]
type=destroyself
trigger1=root,stateno!=740||root,anim!=740||root,movetype=H


;---WIN COSTUME---
[Statedef 6109]
physics=N
anim=6100
velset=0,0
sprpriority=0
ctrl=0

[State 6109, ID]
type=varset
trigger1=!time&&(ishelper(6101)||ishelper(6102)||ishelper(6103)||ishelper(6104))
var(0)=ifelse(ishelper(6101),1,ifelse(ishelper(6102),2,ifelse(ishelper(6103),3,4)))

[State 6109, vel]
type=velset
trigger1=!time
x=ifelse(var(0)=1,-.33,ifelse(var(0)=2,-.66,ifelse(var(0)=3,-1,-.5)))
y=ifelse(var(0)=1,-.4,ifelse(var(0)=2,-.1,ifelse(var(0)=3,.2,.5)))

[State 6109, vel]
type=veladd
trigger1=time<60&&vel y>-1
y=-.025
[State 6109, vel]
type=velset
trigger1=time>=60&&(var(0)=1||var(0)=3)
x=cos(time/20.0)
y=-cos((time+10)/20.0)
[State 6109, vel]
type=velset
trigger1=time>=60&&(var(0)=2||var(0)=4)
x=-cos(time/20.0)
y=cos((time+10)/20.0)

[State 6109, vel]
type=velmul
trigger1=vel y>0&&pos y>-10
y=.8
[State 6109, end]
type=destroyself
trigger1=root,stateno!=189||root,movetype=H


;---RETURN TO MORRIGAN---
[Statedef 6110]
physics=N
anim=6100
velset=-7.5+(random/66.7),-7.5+(random/66.7)
sprpriority=1
ctrl=0

[State 6110, snd]
type=playsnd
trigger1=time=5
value=6,(random<500)

[State 6110, vel]
type=velset
trigger1=!time&&prevstateno=825
x=-1
y=-5
[State 6110, vel]
type=velset
trigger1=!time&&playerIDexist(parent,ID)
trigger1=(parent,stateno=[1005,1055])
x=3+(random/500.0)
y=-3+(random/167.0)
[State 6110, vel]
type=velset
trigger1=!time&&playerIDexist(parent,ID)
trigger1=(parent,stateno=[3005,3007])
x=5+(random/333.0)
y=-5+(random/100.0)

[State 6110, vel]
type=veladd
trigger1=time>10&&vel x<ifelse(rootdist x<25,2.5,5)&&rootdist x>=0
x=ifelse((rootdist y=[0,160]),.5,.25)
[State 6110, vel]
type=veladd
trigger1=time>10&&vel x>ifelse(rootdist x>-25,-2.5,-5)&&rootdist x<0
x=ifelse((rootdist y=[0,160]),-.5,-.25)
[State 6110, vel]
type=veladd
trigger1=time>10&&root,statetype!=C&&vel y<ifelse((rootdist y<80&&rootdist y>40),2.5,5)&&rootdist y>=65
trigger2=time>10&&root,statetype=C&&vel y<ifelse((rootdist y<50&&rootdist y>0),2.5,5)&&rootdist y>=25
y=ifelse((rootdist x=[-80,80]),.5,.25)
[State 6110, vel]
type=veladd
trigger1=time>10&&root,statetype!=C&&vel y>ifelse((rootdist y<80&&rootdist y>40),-2.5,-5)&&rootdist y<65
trigger2=time>10&&root,statetype=C&&vel y>ifelse((rootdist y<50&&rootdist y>0),-2.5,-5)&&rootdist y<25
y=ifelse((rootdist x=[-80,80]),-.5,-.25)


[State 6110, vel]
type=velset
trigger1=vel y>0&&pos y>-5
y=0

[State 6110, turn]
type=turn
trigger1=vel x<0

[State 6110, end]
type=destroyself
trigger1=root,statetype!=C&&(rootdist x=[-10,10])&&(rootdist y=[55,75])
trigger2=root,statetype=C&&(rootdist x=[-10,10])&&(rootdist y=[15,35])


;---VIUDA NEGRA---
[Statedef 6111]
physics=N
anim=6100
velset=0,0
ctrl=0

[State 6111, ID]
type=varset
trigger1=!time
var(0)=root,var(48)

[State 6111, bind]
type=posset
trigger1=var(0)=1
x=(enemynear,pos x)-31*facing
y=(enemynear,pos y)-85
[State 6111, bind]
type=posset
trigger1=var(0)=2
x=(enemynear,pos x)-32*facing
y=(enemynear,pos y)-40
[State 6111, bind]
type=posset
trigger1=var(0)=3
x=(enemynear,pos x)-18*facing
y=(enemynear,pos y)-42
[State 6111, bind]
type=posset
trigger1=var(0)=4
x=(enemynear,pos x)-5*facing
y=(enemynear,pos y)-43
[State 6111, bind]
type=posset
trigger1=var(0)=5
x=(enemynear,pos x)+1*facing
y=(enemynear,pos y)-45

[State 6111, spr]
type=sprpriority
trigger1=1
value=ifelse(var(0)=4,-1,2)
[State 6111, end]
type=changestate
trigger1=!numenemy||roundstate>=2
trigger2=numenemy
trigger2=enemy,stateno=1942&&enemy,anim!=1942
value=6110


;========================<JUMP DUST>=============================
[Statedef 7100]
physics=N
velset=0,0
anim=9741
[State 7100, bind]
type=bindtoroot
trigger1=time
[State 7100, dust]
type=explod
trigger1=!time
anim=7100
ID=7100
sprpriority=3
postype=p1
pos=0,ceil(pos y)
scale=.5,.5
[State 7100, dust]
type=explod
trigger1=!time||time=2||time=6
anim=7101
ID=7100
sprpriority=3
postype=p1
scale=.5,.5
[State 7100, assert]
type=assertspecial
trigger1=1
flag=invisible
[State 7100, end]
type=destroyself
trigger1=time>=7


;========================<FIRE>=============================
;---RED---
[Statedef 7180]
physics=N
velset=0,0
anim=9741
sprpriority=4
[State 7180, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1
[State 7180, flames]
type=explod
trigger1=1
anim=7180
ID=7180
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
scale=.5,.5
ownpal=1
[State 7180, pos]
type=posadd
trigger1=1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 7180, end]
type=destroyself
trigger1=time>=120
trigger2=enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)


;========================<SUPERCHARGE>=============================
[Statedef 7500]
physics=N
velset=0,0
anim=9741
sprpriority=5

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=5
time=40
invertall=1
add=100,100,100
sinadd=-710,-710,-355,160
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=40&&root,var(10)=5
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=6
time=48
invertall=1
add=100,100,100
sinadd=-710,-710,-355,192
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=48&&root,var(10)=6
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, bgpalfx1]
type=bgpalfx
trigger1=!time&&root,var(10)=7
time=55
invertall=1
add=100,100,100
sinadd=-710,-710,-355,220
[State 7500, bgpalfx1]
type=bgpalfx
trigger1=time=55&&root,var(10)=7
time=5
add=-255,-255,-255
sinadd=255,255,255,20

[State 7500, fade]
type=palfx
trigger1=!time
time=40
sinadd=-255,-255,-255,160
[State 7500, fade]
type=palfx
trigger1=time=40
time=-1
add=-255,-255,-255

[State 7500, portrait]
type=helper
trigger1=!time&&root,var(10)=7
helpertype=normal
stateno=7510
ID=7510
name="Super Charge Portrait"
postype=p1
supermovetime=300
ownpal=1

[State 7500, main]
type=explod
trigger1=!time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=-1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=!time
anim=7501
ID=7501
sprpriority=5
postype=p1
removetime=43
supermovetime=300

[State 7500, circle]
type=explod
trigger1=!time
anim=7502
ID=75021
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
supermovetime=300
ownpal=1
[State 7500, circle]
type=explod
trigger1=time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
supermovetime=300
ownpal=1

[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=5
ID=7500
scale=1.5-(.033*time),1.5-(.033*time)
[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=6
ID=7500
scale=1.5-(.028*time),1.5-(.028*time)
[State 7500, shrink]
type=modifyexplod
trigger1=root,var(10)=7
ID=7500
scale=1.5-(.025*time),1.5-(.025*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)

[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))
[State 7500, shrink]
type=modifyexplod
trigger1=numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7500, safety]
type=removeexplod
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61
[State 7500, end]
type=destroyself
trigger1=root,var(10)=5&&time>=46
trigger2=root,var(10)=6&&time>=54
trigger3=root,var(10)=7&&time>=61



;--------------------------
[Statedef 7260]
physics=N
velset=0,0
anim=9741

[State 7260, bgpalfx]
type=bgpalfx
trigger1=!time
time=30
add=-255,-255,-128
sinadd=255,255,128,120
[State 7260, palfx]
type=palfx
trigger1=time=20
time=11
sinadd=-255,-255,-255,40
persistent=0

[State 7260, main]
type=explod
trigger1=!time
anim=7260
ID=7260
sprpriority=5
postype=p1
removetime=20
supermovetime=300
[State 7260, sphere]
type=explod
trigger1=!time
anim=7500
ID=7261
sprpriority=5
postype=p1
removetime=-1
supermovetime=300
[State 7260, circle]
type=explod
trigger1=time=20
anim=7501
ID=7262
sprpriority=5
postype=p1
removetime=-1
supermovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7260
scale=2-(.1*time),2-(.1*time)
[State 7260, shrinkcircle]
type=modifyexplod
trigger1=1
ID=7261
scale=.017*time,.017*time
[State 7260, shrinkcircle]
type=modifyexplod
trigger1=time>=20
ID=7262
scale=.1+(.1*(time-20)),.1+(.1*(time-20))

[State 7260, noshadow]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7260, bound]
type=screenbound
trigger1=1
value=0
[State 7260, safety]
type=removeexplod
trigger1=time>=30
[State 6110, end]
type=destroyself
trigger1=time>=30



;========================<COUNTER F.X.>=============================
[Statedef 7400]
physics=N
velset=0,0
anim=9741
[State 7400, superchargebgpalfx]
type=allpalfx
trigger1=!time
time=5
add=255,255,255
sinadd=-255,-255,-255,20
[State 7400, slow]
type=pause
trigger1=time<5
time=2
[State 7400, noshadow]
type=assertspecial
trigger1=1
flag=invisible
ignorehitpause=1
[State 7400, end]
type=destroyself
trigger1=root,movetype!=A


;========================<K.O. F.X.>=============================
[Statedef 7600]
physics=N
velset=0,0
anim=9741
sprpriority=-5
[State 7600, bind]
type=posset
trigger1=1
x=0
y=-120

[State 7600, snd]
type=playsnd
trigger1=!time
value=7,7
[State 7600, palfx]
type=palfx
trigger1=!time
time=40
sinadd=-255,-255,-255,160
ignorehitpause=1
[State 7600, bgpalfx]
type=bgpalfx
trigger1=time<30
time=1
mul=512-(time*8),(time*8),(time*8)
add=-60+time*4,-60+time*4,-60+time*4

[State 7600, VSthing]
type=explod
trigger1=!time
anim=7601
ID=7601
sprpriority=5
postype=left
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300

[State 7600, circle]
type=explod
trigger1=!time
anim=7600
ID=76001
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, circle]
type=explod
trigger1=!time
anim=7600
ID=76002
sprpriority=-5
postype=left
pos=160,120
bindtime=-1
removetime=40
pausemovetime=300
supermovetime=300
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40&&numexplod(76001)
ID=76001
scale=(.1*time),(.1*time)
[State 7600, shrink]
type=modifyexplod
trigger1=time<=40&&numexplod(76002)
ID=76002
scale=(.3*time),(.3*time)

[State 7600, noshadow]
type=assertspecial
trigger1=1
flag=invisible
[State 7600, nobars]
type=assertspecial
trigger1=time<=20
flag=nobardisplay


;========================<CAMERA CONTROL>=============================
[Statedef 7650]
physics=N
velset=0,0
anim=9741
[State 7650, bound]
type=screenbound
trigger1=1
value=0
movecamera=1,1
[State 7650, end]
type=destroyself
trigger1=roundstate=2

;-------------------------------------------------------------------------------
;Hyper Background
;-------------------------------------------------------------------------------
[Statedef 9600]
type = S
movetype = I
physics = N
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7710
ID = 7005
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 0
pausemovetime = 0
sprpriority = -30
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = root,NumHelper(8400)=1
id = 7005

[State 0, ChangeState]
type = DestroySelf
trigger1 = root,NumHelper(8400)=1

[State 0, Listras2]
type = Explod
trigger1 = 1
anim = 8604
ID = 8603
pos = -20,120
postype = back
vel = 8,0
accel = 2,0
random = 0,200
removetime = -2
scale = 1,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = -3

[State 0, ChangeState]
type = ChangeState
trigger1 = root, MoveType = H || root,Stateno <3000
value =  9601
ctrl = 0

;-------------------------------------------------------------------------------
;Hyper Background End
;-------------------------------------------------------------------------------
[Statedef 9601]
type = S
movetype = I
physics = N
anim = 9999

[State 0, PalFXWiz]
type = AllPalFX
triggerAll = root,NumHelper(8400)=0
trigger1 = !time
time = 20
add = 255,255,255
mul = 256,256,256
sinadd = -255,-255,-255,80
invertall = 0
color = 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 =!time
value = S9600,0

[state 8010]
type = modifyexplod
trigger1 = 1
id = 7005
scale = 1.0,1.0+time/-15.0


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 15

;-------------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 831
sprpriority = -1

[State 8300, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8300, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8300, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8300, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8300, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1
;-------------------------------------------------------------------------------
;Liedown Roll Forward Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Liedown Roll Backwards (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 832
sprpriority = -1

[State 8305, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 8305, VelSet]
type = VelSet
trigger1 = AnimTime = 0
x = 0

[State 8305, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 8305, MakeDust]
type = MakeDust
trigger1 = Time >= 0
pos = -16,0
spacing = 6

[State 8305, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8305, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30,2

[State 8305, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8302
ctrl = 1
;-------------------------------------------------------------------------------
; Liedown Roll Backwards Continue (Author MystikBlaze)
;-------------------------------------------------------------------------------
[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
;Hyper Background
;-------------------------------------------------------------------------------
[Statedef 9600]
type = S
movetype = I
physics = N
anim = 9999

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBG
flag2= NoFg
flag3= NoBarDisplay
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 7710
ID = 7005
pos = 160,120
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime = 0
pausemovetime = 0
sprpriority = -30
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = root,NumHelper(8400)=1
id = 7005

[State 0, ChangeState]
type = DestroySelf
trigger1 = root,NumHelper(8400)=1

[State 0, Listras2]
type = Explod
trigger1 = 1
anim = 8604
ID = 8603
pos = -20,120
postype = back
vel = 8,0
accel = 2,0
random = 0,200
removetime = -2
scale = 1,0.10
supermovetime = 9999999
pausemovetime = 9999999
ontop = 1
ownpal = 1
removeongethit = 1
supermove = 1
sprpriority = -3

[State 0, ChangeState]
type = ChangeState
trigger1 = root, MoveType = H || root,Stateno <3000
value =  9601
ctrl = 0

