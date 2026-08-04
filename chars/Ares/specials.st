; States file for {character} -- Specials
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 50)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1000



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1001
ctrl = 0

[StateDef 1001]
type = S
movetype = A
physics = N
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 720,0


[State 0, VelSet]
type = VelSet
trigger1 = time = 0
x = 9
y = 0
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded
x = 0
y = 0


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1001

[State 0, Explod]
type = Explod
trigger1= timemod = 2,1
anim = 62
ID = 62
pos = 0,0
postype = p1  ;p2,front,back,left,right
removetime = -2
scale = 1,1
sprpriority = 10
ownpal = 1

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 1003
ID = 1003
pos = -10,0
postype = p1  ;p2,front,back,left,right
removetime = 6
scale = 1,1
sprpriority = -10
ownpal = 1




[State 220, HitDef]
type = HitDef
triggerall= moveguarded = 0
trigger1 = time = 0
attr = S,NA
damage = 110,10
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -70
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-3
air.type = Low
air.hittime = 18
air.velocity = -12,-4
fall= 1
air.fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 15 && vel x > 0
x = -0.5



[State 1000, changestate]
type = ChangeState
trigger1 = time > 40 && PrevStateNo != 9000
trigger2 = time >= 0 && PrevStateNo = 9000
value = 1002
ctrl = 0


[StateDef 1002]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1002

[State 1000, changestate]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;------------------------------
; Special 1
[StateDef 1010]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 50)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1000



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1011
ctrl = 0

[StateDef 1011]
type = A
movetype = A
physics = N
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 720,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0;revStateNo != 9000
x = 7
y = -3

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded
x = 0
y = 0


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1002

;[State 0, Explod]
;type = Explod
;trigger1= timemod = 2,1
;anim = 62
;ID = 62
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;removetime = -2
;scale = 1,1
;sprpriority = 10
;ownpal = 1

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 1004
ID = 1004
pos = -10,0
postype = p1  ;p2,front,back,left,right
removetime = 6
scale = 1,1
sprpriority = -10
ownpal = 1




[State 220, HitDef]
type = HitDef
triggerall= moveguarded = 0
trigger1 = time = 0
attr = S,NA
damage = 110,10
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -90
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-3
air.type = Low
air.hittime = 18
air.velocity = -12,-4
fall= 1
air.fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 30 && vel x > 0
x = -0.5
y = 0.2



[State 1000, changestate]
type = ChangeState
trigger1 = time > 45 && PrevStateNo != 9000
trigger2 = time >= 0 && PrevStateNo = 9000
value = 948
ctrl = 1


;------------------------------
; Special 1
[StateDef 1020]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = ifelse(PrevStateNo = 9000, 0, 50)

[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1000



[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 1021
ctrl = 0

[StateDef 1021]
type = A
movetype = A
physics = N
ctrl = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 720,0

[State 0, VelSet]
type = VelSet
trigger1 = time = 0;PrevStateNo != 9000
x = 2
y = -7

[State 0, VelSet]
type = VelSet
trigger1 = moveguarded
x = 0
y = 0


[State 220, 1]
type = ChangeAnim
triggerall = PrevStateNo != 9000
trigger1 = time = 0
value = 1002

;[State 0, Explod]
;type = Explod
;trigger1= timemod = 2,1
;anim = 62
;ID = 62
;pos = 0,0
;postype = p1  ;p2,front,back,left,right
;removetime = -2
;scale = 1,1
;sprpriority = 10
;ownpal = 1

[State 0, Explod]
type = Explod
trigger1= timemod = 3,1
anim = 1004
ID = 1004
pos = -10,0
postype = p1  ;p2,front,back,left,right
removetime = 6
scale = 1,1
sprpriority = -10
ownpal = 1




[State 220, HitDef]
type = HitDef
triggerall= moveguarded = 0
trigger1 = time = 0
attr = S,NA
damage = 110,10
animtype = High
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 10,10
sparkno = 2
sparkxy = -20, -90
;guard.sparkno = 8430
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -12,-3
air.type = Low
air.hittime = 18
air.velocity = -12,-4
fall= 1
air.fall = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = time > 15 && vel x > 0
x = -0.1
y = 0.5



[State 1000, changestate]
type = ChangeState
trigger1 = time > 20 && PrevStateNo != 9000
trigger2 = time >= 0 && PrevStateNo = 9000
value = 948
ctrl = 1




;------------------------------


;---------------------------------------------------------------------------
; Finish Hit Explod (based on FlowaGirl and Ethan Lives codes)
; (taken with permission from McCready's StrongGuy char)
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

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

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4




























