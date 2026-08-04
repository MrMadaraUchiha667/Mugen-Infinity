;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, VarSet];Angel Type
type = VarSet
triggerall = palno <=6
trigger1 = var(23)!=0
v = 23
value = 0
ignorehitpause = 1

[State -2, VarSet] ;Archangel Type
type = VarSet
triggerall = palno >6
trigger1 = var(23)!=10000
v = 23
value = 10000
ignorehitpause = 1

[State -2]
type = null;ChangeState
triggerall = roundstate = 2
triggerall = Movetype != H && Stateno != 7827
trigger1 = BackEdgeDist < -10 -const(size.ground.front)-const(size.ground.back)
trigger1 = StateType != A
value = 7827

;-------------------------------------------------------------------------
;Stand by
[Statedef 7827]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0
;anim = 9800

[State 7827]
type = PosSet
trigger1 = Time = 0
y = 0

[State 7827]
type = ChangeState
trigger1 = NumEnemy = [1,2]
trigger1 = Enemy(0),statetype = L || Enemy(0),movetype != H
value = 102


[State 7827]
type = ChangeState
trigger1 = NumEnemy = 2
trigger1 = Enemy(1),statetype = L || Enemy(1),movetype != H
value = 102

;-------------------------------------------------------------------------
;Hover
[State -2, VelAdd]
type = VelAdd
triggerall = statetype = A
triggerall = vel y > 2
triggerall = movetype != A
triggerall = movetype != H
triggerall = ctrl
trigger1= command = "holdup"
y = -0.75

;=========AvX Menu Pause===========

;[State -2, Pause Menu]
;Type = Helper
;trigger1 = AILevel = 0
;trigger1 = NumHelper(40500) = 0
;Name = "Pause"
;ID = 40500
;Pos = 0, 0
;PosType = left
;;StateNo = 40500
;KeyCtrl = 1
;OwnPal = 1


[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist y=%d"
params =  var(2), var(1), var(50), var(59), floor(p2bodydist y)

;Stop Sound in intro from running
[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 5


[State -3, 2]
type = PlaySnd
triggerall = var(23) = 10000
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 11,1
channel = 0
ignorehitpause = 1
volume = 255

[State -3, 2]
type = PlaySnd
triggerall = var(23) = 10000
triggerall = Time = 1
triggerall = Life
triggerall = random % 10 > 5
trigger1 = stateno = 5000 || stateno = 5020
trigger1 = anim != 5000 && anim != 5010
trigger2 = stateno = 5010
trigger2 = anim != 5020
value = 11,1
channel = 0
ignorehitpause = 1
volume = 255

[State -2, varKOsnd]
type=varset
triggerall = var(23) = 10000
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
triggerall = var(23) = 10000
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=111,0;ifelse((var(1)=2),2,1)+2*(stateno=5130)
channel = -1
ignorehitpause=1
persistent=0

[State -2, varKOsnd]
type=varset
triggerall = var(23) = 0
trigger1=alive&&var(18)>0
trigger2=!alive&&var(18)<2
var(18)=ifelse(alive,0,var(18)+1)
ignorehitpause=1

[State -2, KOsnd]
type=playsnd
triggerall = var(23) = 0
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=1100,0;ifelse((var(1)=2),2,1)+2*(stateno=5130)
channel = -1
ignorehitpause=1
persistent=0

;damage dampenering

[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) = 0, 1, ifelse(enemynear, gethitvar(hitcount) = 1, 0.9, 0.8**enemynear, gethitvar(hitcount)))
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State -2, Crouch changes]
type = changeanim
trigger1 = var(23)=10000
trigger1 = anim = 6
value = 10006

[State -2, Crouch changes]
type = changeanim
trigger1 = var(23)=10000
trigger1 = anim = 5
value = 10005

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,4000]
trigger1 = NumExplod(100101)>0
id =100101

[State 0, DefenceMulSet]
type = DefenceMulSet
trigger1 = var(23)=10000
value = 1.1

[State 0, DefenceMulSet]
type = DefenceMulSet
trigger1 = var(23)=0
value = 1
