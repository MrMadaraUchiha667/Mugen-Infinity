;---------------------------------------------------------------------------
;Archangel Hitoverride
[Statedef 7022]
type = S
movetype = H
physics = S
velset = 0,0
anim = 10600; 15000
ctrl = !(PrevStateNo = [100,16000])

[State 0, ChangeState]
type = ChangeState
trigger1 = 1
value = prevstateno
;---------------------------------------------------------------------------
; Liedown Roll Forward (Author MystikBlaze)
[Statedef 8300]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 8,0
ctrl = 0
anim = 831+(var(23))
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

;[State 8300, sound]
;type = PlaySnd
;trigger1 = AnimElem = 5
;value = 30,2

[State 8300, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 8301
ctrl = 1

[Statedef 8301]
type    = C
movetype= I
physics = N
poweradd= 0
velset = 2,0
ctrl = 0
anim = 5120+(var(23))
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Liedown Roll Backwards (Author MystikBlaze)
[Statedef 8305]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -8,0
ctrl = 0
anim = 832+(var(23))
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

[Statedef 8302]
type    = C
movetype= I
physics = N
poweradd= 0
velset = -2,0
ctrl = 0
anim = 5120+(var(23))
sprpriority = -1

[State 8301, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------
; Super Armor State
[Statedef 9000]
type = U
movetype = H

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1


[State 4500, PalfX]
type = PalFX
trigger1 = time = 1
add = 100,0,50
mul = 256,256,256
time = 3
ignorehitpause = 1

[State 4500, PalfX]
type = PalFX
trigger1 = time = 5
add = 100,0,50
mul = 256,256,256
time = 3
ignorehitpause = 1

[State 9000, a]
type = VarSet
trigger1 = time = 0
v = 16
value = 1

[State 9000, b]
type = VarSet
trigger1 = time <= 0
v = 13
value = AnimElemNo(0)
ignorehitpause = 1

[State 9000, 1]
type = VarSet
trigger1 = time = 0
v = 12
value = var(4)

[State 9000, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 9000, VarSet]
type = VarSet
trigger1 = Life <= 0
v = 7
value = 1

[State 9000, ChangeState];Dead
type = ChangeState
trigger1 = Life <= 0
value = ifelse(StateType = A, 5020,5000)

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim
elem = var(13)

[State 9000, End]
type = ChangeState
trigger1 = (time >= floor(gethitvar(hittime) * 0.8)) && (Life > 0)
value = var(5)
ctrl = var(6)

;------------------------------------------------------------------------------------------------------------
;Arm For Stand State
[Statedef 10000]
type = S
movetype = I
physics =N
anim = 10000
ctrl = 0
sprpriority = -1
velset = 0,0

[State 10000]
type = SprPriority
trigger1 = 1
value = -1-(Parent,MoveType = H)
ignorehitpause = 1

[State 10000]
type = SprPriority
trigger1 = Parent,Stateno = 220 || Parent,Stateno = 222 || Parent,Stateno = 701
trigger2 = Parent,Stateno = 320 && Parent,AnimElemNo(0) = [11,13]
trigger3 = Parent,Stateno = 620 && Parent,AnimElemNo(0) = [1,5]
trigger4 = Parent,Stateno = 720 && Parent,AnimElemNo(0) = [1,3]
value = 2
ignorehitpause = 1


[State 10000]
type = SprPriority
trigger1 = Parent,Stateno = 520 && Parent,AnimElemNo(0) = [5,10]
trigger2 = Parent,anim = 1571 && Parent,AnimElemNo(0) = [5,10]
trigger3 = Parent,anim = 810 && Parent,AnimElemNo(0) = [6,11]
value = 2
ignorehitpause = 1

[State 10000]
type = SprPriority
trigger1 = Parent,Stateno = 221 && Parent,AnimElemNo(0) = [13,17]
trigger2 = Parent,Stateno = 311 && Parent,AnimElemNo(0) = [2,5]
trigger3 = Parent,Stateno = 312 && Parent,AnimElemNo(0) = [3,14]
trigger4 = Parent,anim = 1570 && Parent,AnimElemNo(0) = [3,14]
value = 2
ignorehitpause = 1


[State 10000]
type = SprPriority
trigger1 = Parent,Stateno = 21270 && Parent,AnimElemNo(0) = [1,5]
trigger2 = Parent,Stateno = 21270 && Parent,AnimElemNo(0) = [15,19]
trigger3 = Parent,Stateno = 21300 && Parent,AnimElemNo(0) = [1,5]
trigger4 = Parent,Stateno = 21300 && Parent,AnimElemNo(0) = [15,19]
value = 2
ignorehitpause = 1

[State 10000]
type = BindToParent
trigger1 = 1
facing = 1
time = -1
ignorehitpause = 1


[State 10000]
type = NotHitBy
trigger1 = 1
value = SCA

[State 10000]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 10000]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1

[State 10000]
type = PlayerPush
trigger1 = (Parent,Stateno = [8300,8305])
trigger2 = (Parent,Stateno = 100)
value = 0
ignorehitpause = 1



[State 10000]
type = PlayerPush
trigger1 = Parent,Stateno = 21275 && Parent,StateTime < 20
trigger2 = Parent,Stateno = 21305 && Parent,StateTime < 20
value = 0
ignorehitpause = 1

[State 10000]
type = AssertSpecial
trigger1 = parent,movetype = h
trigger1 = (parent,anim != [4900,5300])
flag = invisible


[State 10000]
type = ChangeAnim
triggerall = Anim != 9800
trigger1 = !SelfAnimExist(Parent,Anim+10000)
value = 9800
trigger2 = Parent,Facing = -1


[State 10000]
type = ChangeAnim
trigger1 = !(parent,movetype = h && (parent,anim != [4900,5300]))
trigger1 = Parent,Anim+10000 != Anim
trigger1 = SelfAnimExist(Parent,Anim+10000)
value = Parent,Anim+10000
elem = Parent,AnimElemNo(0)
ignorehitpause = 1


[State 10000]
type = ChangeAnim
trigger1 = !(parent,movetype = h && (parent,anim != [4900,5300]))
trigger1 = Parent,AnimElemNo(0) != AnimElemNo(0)
trigger1 = SelfAnimExist(Parent,Anim+10000)
value = Parent,Anim+10000
elem = Parent,AnimElemNo(0)
ignorehitpause = 1
