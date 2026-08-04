;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Bishop - version private  0.1  06/10/2007
;Edits: Wucash & Pitboss
;Programmer: Wucash (AI based on Loganirs scripts)
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Button Remapping |-----------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Default Values |-------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;--------------AI commands
[Command]
name = "C01"
command =  c, c, c, c, c
time = -2

[Command]
name = "C02"
command =  z, z, z, z, z
time = -2

[Command]
name = "C03"
command =  c, c, c, c, c
time = -2

[Command]
name = "C04"
command =  z, z, z, z, z
time = -2

[Command]
name = "C05"
command =  c, c, c, c, c
time = -2

[Command]
name = "C06"
command = U, D, U, D, U
time = -2

[Command]
name = "C07"
command = U, D, U, D, U
time = -2

[Command]
name = "C08"
command =  D, U, D, U, D
time = -2

[Command]
name = "C09"
command = F, B, F, B, F
time = -2

[Command]
name = "C10"
command =  D, U, D, U, D
time = -2

[Command]
name = "C11"
command = F, B, F, B, F
time = -2

[Command]
name = "C12"
command = D, U, D, U, D
time = -2

[Command]
name = "C13"
command = F, B, F, B, F
time = -2

[Command]
name = "C14"
command =  y, y, y, y, y
time = -2

[Command]
name = "C15"
command =  x, x, x, x, x
time = -2

[Command]
name = "C16"
command =  y, y, y, y, y
time = -2

[Command]
name = "C17"
command = a, a, a, a, a
time = -2

[Command]
name = "C18"
command =  y, y, y, y, y
time = -2

[Command]
name = "C19"
command = a, a, a, a, a
time = -2

[Command]
name = "C20"
command =  x, x, x, x, x
time = -2

[Command]
name = "C21"
command =  D, U, D, U, D
time = -2

[Command]
name = "C22"
command = F, B, F, B, F
time = -2

[Command]
name = "C23"
command = D, U, D, U, D
time = -2

[Command]
name = "C24"
command = F, B, F, B, F
time = -2

[Command]
name = "C25"
command =  y, y, y, y, y
time = -2

[Command]
name = "C26"
command =  y, y, y, y, y
time = -2

[Command]
name = "C27"
command = a, a, a, a, a
time = -2

[Command]
name = "C28"
command =  y, y, y, y, y
time = -2

[Command]
name = "C29"
command = a, a, a, a, a
time = -2

[Command]
name = "C30"
command =  x, x, x, x, x
time = -2

[Command]
name = "C31"
command =  c, c, c, c, c
time = -2

[Command]
name = "C32"
command =  z, z, z, z, z
time = -2

[Command]
name = "C33"
command =  c, c, c, c, c
time = -2

[Command]
name = "C34"
command =  z, z, z, z, z
time = -2

[Command]
name = "C35"
command =  c, c, c, c, c
time = -2


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "Gunz"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "Gunz"
command = ~D, DF, F, z+y
time = 20

[Command]
name = "Gunz"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "HEmition"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "HEmition"
command = ~D, DB, B, z+y
time = 20

[Command]
name = "HEmition"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "Byonet"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "Byonet"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "Byonet"
command = ~D, DF, F, b+c
time = 20


[Command]
name = "HPunches"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "HPunches"
command = ~D, DB, B, c+b
time = 20

[Command]
name = "HPunches"
command = ~D, DB, B, a+c
time = 20


[Command]
name = "HShot"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "HShot"
command = ~F, D, DF, z+y
time = 20

[Command]
name = "HShot"
command = ~F, D, DF, x+z
time = 20


[Command]
name = "HKicks"
command = ~F, D, DF, a+b
time = 20

[Command]
name = "HKicks"
command = ~F, D, DF, c+b
time = 20

[Command]
name = "HKicks"
command = ~F, D, DF, a+c
time = 20




;-| Special Motions |------------------------------------------------------
[Command]
name = "Gun"
command = ~D, DF, F, x

[Command]
name = "Gun"
command = ~D, DF, F, y

[Command]
name = "Gun"
command = ~D, DF, F, z

[Command]
name = "Granade"
command = ~D, DB, B, x

[Command]
name = "Granade"
command = ~D, DB, B, y

[Command]
name = "Granade"
command = ~D, DB, B, z

[Command]
name = "Shocker"
command = ~D, DF, F, a

[Command]
name = "Shocker"
command = ~D, DF, F, b

[Command]
name = "Shocker"
command = ~D, DF, F, c

[Command]
name = "Energy"
command = ~D, DB, B, a

[Command]
name = "Energy"
command = ~D, DB, B, b

[Command]
name = "Energy"
command = ~D, DB, B, c

[Command]
name = "Kicks"
command = ~F, D, DF, a

[Command]
name = "Kicks"
command = ~F, D, DF, b

[Command]
name = "Kicks"
command = ~F, D, DF, c

[Command]
name = "Rifle"
command = ~F, D, DF, x

[Command]
name = "Rifle"
command = ~F, D, DF, y

[Command]
name = "Rifle"
command = ~F, D, DF, z

[Command]
name = "energywave"
command =  ~20$B, F, x


[Command]
name = "energywave"
command =  ~20$B, F, y


[Command]
name = "energywave"
command =  ~20$B, F, z


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 8



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1



;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1



;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "superjump"
command = $D, $U
time = 10



;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTT  Bishop     A.I. TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[State -1, AI];1st activation
type = VarSet
;triggerall = (!Var(59))
;triggerall = (MatchNo = 1) || (NumPartner && !IsHomeTeam)
trigger1 = command = "C01"
trigger2 = command = "C02"
trigger3 = command = "C03"
trigger4 = command = "C04"
trigger5 = command = "C05"
trigger6 = command = "C06"
trigger7 = command = "C07"
trigger8 = command = "C08"
trigger9 = command = "C09"
trigger10 = command = "C10"
trigger11 = command = "C11"
trigger12 = command = "C12"
trigger13 = command = "C13"
trigger14 = command = "C14"
trigger15 = command = "C15"
trigger16 = command = "C16"
trigger17 = command = "C17"
trigger18 = command = "C18"
trigger19 = command = "C19"
trigger20 = command = "C20"
trigger21 = command = "C21"
trigger22 = command = "C22"
trigger23 = command = "C23"
trigger24 = command = "C24"
trigger25 = command = "C25"
trigger26 = command = "C26"
trigger27 = command = "C27"
trigger28 = command = "C28"
trigger29 = command = "C29"
trigger30 = command = "C30"
trigger31 = command = "C31"
trigger32 = command = "C32"
trigger33 = command = "C33"
trigger34 = command = "C34"
trigger35 = command = "C35"
v = 59
value = 1

;----------short attacks combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 350 
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 30
value = IfElse(random <= 250,200,IfElse(random > 250 && random <= 500,230,IfElse(random > 500 && random <= 750,220,10)))
persistent = 0
;      |        
;      |
;      |__________
;                 |
;           combo after short attack punch and kick
            [State -1, ChangeState]
            type = ChangeState
            triggerall = P2life >= 1
            triggerall = Var(59)>=1&& StateType != A
            trigger1 = (StateNo = 200) || (StateNo = 230)  && (MoveContact)
            value = IfElse(random <= 333,210,IfElse(random > 333 && random <= 666,240,420))
            persistent = 0
;                  |        
;                  |
;                  |__________
;                             |
;                        combo after medium kick & punch
                         [State -1, ChangeState]
                         type = ChangeState
                         triggerall = P2life >= 1
                         triggerall = Var(59)>=1&& StateType != A && StateType = S && P2StateNo = [5000,5070]
                         trigger1 = (StateNo = 210) || (StateNo = 240) && (MoveContact)
                         triggerall = power < 1000
                         triggerall = var(10) < 6
                         value = IfElse(random <= 200,220,IfElse(random > 200 && random <= 400,250,IfElse(random > 400 && random <= 600,1400,IfElse(random > 600 && random <= 800,1100,1000))))
;                  |        
;                  |
;                  |__________
;                             |
;                        combo after medium kick & punch
                         [State -1, ChangeState]
                         type = ChangeState
                         triggerall = P2life >= 1
                         triggerall = Var(59)>=1&& StateType != A && StateType = S && P2StateNo = [5000,5070]
                         trigger1 = (StateNo = 210) || (StateNo = 240) && (MoveContact)
                         triggerall = power >= 1000
                         triggerall = var(10) < 6
                         value = IfElse(random <= 150,220,IfElse(random > 150 && random <= 300,250,IfElse(random > 300 && random <= 450,1400,IfElse(random > 450 && random <= 600,1100,IfElse(random > 600 && random <= 750,1000,3100)))))
                         persistent = 0
;                  |        
;                  |
;                  |__________
;                             |
;                        combo after medium kick & punch
                         [State -1, ChangeState]
                         type = ChangeState
                         triggerall = P2life >= 1
                         triggerall = Var(59)>=1&& StateType != A && StateType = S && P2StateNo = [5000,5070]
                         trigger1 = (StateNo = 210) || (StateNo = 240) && (MoveContact)
                         triggerall = power >= 1000
                         triggerall = var(10) >= 6
                         value = IfElse(random <= 150,220,IfElse(random > 150 && random <= 300,250,IfElse(random > 300 && random <= 450,1400,IfElse(random > 450 && random <= 600,1100,IfElse(random > 600 && random <= 750,1000,1300)))))
                         persistent = 0

;                  |        
;                  |
;                  |__________
;                             |
;                        combo after medium kick & punch
                         [State -1, ChangeState]
                         type = ChangeState
                         triggerall = P2life >= 1
                         triggerall = Var(59)>=1&& StateType != A && StateType = S && P2StateNo = [5000,5070]
                         trigger1 = (StateNo = 210) || (StateNo = 240) && (MoveContact)
                         triggerall = power >= 1000
                         triggerall = var(10) >= 6
                         value = IfElse(random <= 150,220,IfElse(random > 150 && random <= 300,3100,IfElse(random > 300 && random <= 450,1400,IfElse(random > 450 && random <= 600,1100,IfElse(random > 600 && random <= 750,1000,1300)))))
                         persistent = 0



;----------medium range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 350 
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X > 30 && p2bodydist X <= 50
value = IfElse(random <= 250,210,IfElse(random > 250 && random <= 500,240,IfElse(random > 500 && random <= 750,1400,220)))
persistent = 0

;----------long range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 350 
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X > 50 && p2bodydist X <= 65
value = IfElse(random <= 500,250,1100)
triggerall = var(10) < 6
persistent = 0

;----------long range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 350 
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X > 50 && p2bodydist X <= 65
value = IfElse(random <= 333,250,IfElse(random > 333 && random <= 666,1100,1300))
triggerall = var(10) >= 6
persistent = 0

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 350 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = NumHelper(1201) = 0
triggerall = NumHelper(1203) = 0
trigger1 = p2bodydist X > 100 && p2bodydist X <= 125
value = IfElse(random <= 333,1000,IfElse(random > 333 && random <= 666,1200,1100))
persistent = 0

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 350 
triggerall = NumHelper(1201) > 0
triggerall = NumHelper(1203) > 0
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X > 100 && p2bodydist X <= 125
value = IfElse(random <= 500,1000,1100)
persistent = 0

;----------crouching near
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1
triggerall = P2life >= 1
triggerall = p2bodydist X <= 30 
trigger1 = stateno = 10
value = 11
persistent = 0

;----------short crouch kick combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = P2life >= 1
triggerall = StateType != A && Ctrl && P2statetype != A
trigger1 = P2statetype = C && P2bodydist X <= 40
trigger2 = P2bodydist X <= 40 && P2statetype = S
value = IfElse(random <= 333,400,IfElse(random > 333 && random <= 666,430,440))
persistent = 0

;----------medium crouch  combo initiate 
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350 
triggerall = P2life >= 1
triggerall = StateType != A && Ctrl && P2statetype != A
trigger1 = P2statetype = C && P2bodydist X > 40 && P2bodydist X <= 60
trigger2 = P2bodydist X > 40 && p2bodydist X <= 60 && P2statetype = S
value = IfElse(random <= 333,410,IfElse(random > 333 && random <= 666,420,450))
persistent = 0

;      |        
;      |
;      |__________
;                 |
;              combo after light punch and kick
              [State -1, ChangeState]
              type = ChangeState
              triggerall = P2life >= 1
              triggerall = Var(59)>=1&& StateType != A && StateType = C
              trigger1 = (StateNo = 400) || (StateNo = 430) && (MoveContact)
              triggerall = P2Dist X <= 40
              value = IfElse( random < 500,440,410)
              persistent = 0
;                             |        
;                             |
;                             |__________
;                                        |
;                             combo crouching heavy kick 
                              [State -1, ChangeState]
                              type = ChangeState
                              triggerall = P2life >= 1
                              triggerall = Var(59)>=1&& StateType != A && StateType = C
                              trigger1 = (StateNo = 440)  && (MoveContact)
                              value = 410
                              persistent = 0   
;                             |        
;                             |
;                             |__________
;                                        |
;                             combo crouching heavy kick 
                              [State -1, ChangeState]
                              type = ChangeState
                              triggerall = P2life >= 1
                              triggerall = Var(59)>=1&& StateType != A && StateType = C
                              trigger1 = (StateNo = 410)  && (MoveContact)
                              value = IfElse(random < 500,420,450)
                              persistent = 0   
;                  |        
;                  |
;                  |__________
;                             |
;                   combo superjump
                    [State -1, ChangeState]
                    type = ChangeState
                    triggerall = P2life >= 1
                    triggerall = Var(59)>=1&& StateType != A && P2StateNo = [5000,5070]
                    trigger1 = (StateNo = 420)  && (MoveContact)
                    value = 900
                    persistent = 0   

;in air combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 500 && StateType = A
triggerall = StateType != S && Ctrl && p2statetype = A && time > 6
triggerall = P2life >= 1
trigger1 = p2bodydist X <= 40
value = 600
persistent = 0                             
;      |        
;      |
;      |__________
;                 |
;               air light punch
               [State -1, ChangeState]
               type = ChangeState
               triggerall = Var(59)>=1&& StateType = A 
               triggerall = P2life >= 1
               trigger1 = (StateNo = 600) || (StateNo = 630) && (MoveContact)
               value = IfElse( StateNo = 630,600,640)
               persistent = 0
;                  |        
;                  |
;                  |__________
;                             |
;                      air medium punch
                       [State -1, ChangeState]
                       type = ChangeState
                       triggerall = P2life >= 1
                       triggerall = Var(59)>=1&& StateType = A 
                       trigger1 = (StateNo = 610) || (StateNo = 640) && (MoveContact)
                       value = IfElse( stateno = 640 ,610,650)
                       persistent = 0
;                             |        
;                             |
;                             |__________
;                                        |
;                               combo attack after medium punch
                                [State -1, ChangeState]
                                type = ChangeState
                                triggerall = P2life >= 1
                                triggerall = Var(59)>=1&& StateType = A 
                                trigger1 = StateNo = 650 && (MoveContact)
                                value = 620
                                persistent = 0

;superjump combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType = A
triggerall = StateType != S && Ctrl && p2statetype = A 
trigger1 = stateno = 900
triggerall = P2life >= 1
trigger1 = p2bodydist X <= 40 
trigger1 = time = 10
value = 630
persistent = 0




;-------------- guarding
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl&& EnemyNear, Facing != Facing
trigger1 = P2StateType != C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 130
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
triggerall = P2StateType = C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 150
trigger1 = random <= 420
value = 152
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
trigger1 = P2StateType = C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 131
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl 
trigger1 = P2StateType = C && P2Stateno = [3000,4000]
value = 131
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
triggerall = P2StateType != C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 152
trigger1 = random <= 420
value = 150
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType = A && Ctrl && EnemyNear, Facing != Facing
trigger1 = P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 132
persistent = 0


;---------dashback
[State -1, dash]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && P2StateType = A
triggerall = Random <= 50
triggerall = P2life >= 1
trigger1 = Ctrl
value = 105
persistent = 0

;--------- airecover
[State -1, changestate]
type = changestate
triggerall = var(59)>=1 &&  stateno = 5050
triggerall = alive = 1
trigger1 = vel y > 2 
trigger1 = random <= 500
value = 5200

;-------- throw
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl 
trigger1 = P2StateType = S
triggerall = P2life >= 1
triggerall = P2BodyDist X <= 40 && Random <= 250
value = IfElse(random <= 500,800,810)
persistent = 0

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 6
triggerall = power < 1000
triggerall = NumHelper(1201) = 0
triggerall = NumHelper(1203) = 0
trigger1 = (p2bodydist X <= 150) && (p2bodydist X > 70)
value =IfElse( random < 500 ,1500,1200)

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 6
triggerall = power < 1000
triggerall = NumHelper(1201) > 0
triggerall = NumHelper(1203) > 0
trigger1 = (p2bodydist X <= 150) && (p2bodydist X > 70)
value =1500

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 6
triggerall = power < 1000
trigger1 = p2bodydist X > 150 
value = IfElse( random < 500 ,1000,1100)

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) >= 6
triggerall = power < 1000
triggerall = NumHelper(1201) = 0
triggerall = NumHelper(1203) = 0
trigger1 = p2bodydist X > 150 
value =IfElse( random < 500 ,1500,1200)

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) >= 6
triggerall = power < 1000
triggerall = NumHelper(1201) > 0
triggerall = NumHelper(1203) > 0
trigger1 = p2bodydist X > 150 
value =1500

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) >= 6
triggerall = power < 1000
trigger1 = (p2bodydist X <= 150) && (p2bodydist X > 70)
value = IfElse( random <= 250 ,1000,IfElse(random > 250 && random <= 500,1100,IfElse(random > 500 && random <= 750,1300,1700)))

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 6
triggerall = power < 1000
trigger1 = (p2bodydist X <= 70) 
value =IfElse( random < 500 ,1100,1400)



;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 6
triggerall = power >= 1000
triggerall = NumHelper(1201) = 0
triggerall = NumHelper(1203) = 0
trigger1 = (p2bodydist X <= 150) && (p2bodydist X > 70)
value =IfElse( random < 500 ,1500,1200)


;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 6
triggerall = power >= 1000
triggerall = NumHelper(1201) > 0
triggerall = NumHelper(1203) > 0
trigger1 = (p2bodydist X <= 150) && (p2bodydist X > 70)
value =1500

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 9
triggerall = power >= 1000
triggerall = NumHelper(1201) = 0
triggerall = NumHelper(1203) = 0
trigger1 = p2bodydist X > 150 
value = IfElse( random <= 250 ,3000,IfElse(random > 250 && random <= 500,1100,IfElse(random > 500 && random <= 750,1200,1500)))

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 9
triggerall = power >= 1000
triggerall = NumHelper(1201) > 0
triggerall = NumHelper(1203) > 0
trigger1 = p2bodydist X > 150 
value = IfElse( random <= 333 ,3000,IfElse(random > 333 && random <= 666,1100,1500))

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) >= 9
triggerall = power >= 1000
triggerall = NumHelper(1201) = 0
triggerall = NumHelper(1203) = 0
trigger1 = p2bodydist X > 150 
value =IfElse( random < 500 ,3500,1200)

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) >= 9
triggerall = power >= 1000
triggerall = NumHelper(1201) > 0
triggerall = NumHelper(1203) > 0
trigger1 = p2bodydist X > 150 
value =3500

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) >= 9
triggerall = power >= 1000
trigger1 = (p2bodydist X <= 150) && (p2bodydist X > 70)
value = IfElse( random <= 250 ,1000,IfElse(random > 250 && random <= 500,3200,IfElse(random > 500 && random <= 750,3600,1700)))

;----------longest range combo initiate
[State -1, ChangeState]
type = ChangeState
triggerall = P2life >= 1
triggerall = Var(59)>=1&& Random <= 150 
triggerall = StateType != A && Ctrl && p2statetype != A
triggerall = var(10) < 9
triggerall = power >= 1000
trigger1 = (p2bodydist X <= 70) 
value =IfElse( random < 333 ,1100,IfElse(random > 333 && random <= 666,3100,3700))

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Kicks Hyper
[State -1, Kicks Hyper]
type = ChangeState
value = 3100
triggerall = command = "HKicks"
triggerall = power >= 1000
trigger1 = ctrl 
triggerall = statetype != A
trigger2 = (stateno = 210) || (stateno = 240)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Gunz Hyper
[State -1, Gunz Hyper]
type = ChangeState
value = 3000
triggerall = command = "Gunz"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210) || (stateno = 240) || (stateno = 440) || (stateno = 250)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Emition Hyper
[State -1, Gunz Hyper]
type = ChangeState
value = 3200
triggerall = command = "HEmition"
triggerall = power >= 1000
triggerall = var(10) >= 9
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210) || (stateno = 240)
trigger2 = movecontact 


;---------------------------------------------------------------------------
;Emition Shot Hyper
[State -1, Gunz Hyper]
type = ChangeState
value = 3500
triggerall = command = "HShot"
triggerall = power >= 1000
triggerall = var(10) >= 9
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 420) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Emition Punches Hyper
[State -1, Gunz Hyper]
type = ChangeState
value = 3600
triggerall = command = "HPunches"
triggerall = power >= 1000
triggerall = var(10) >= 9
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210) || (stateno = 240)
trigger2 = movecontact 


;---------------------------------------------------------------------------

;Byonet Hyper
[State -1, Kicks Hyper]
type = ChangeState
value = 3700
triggerall = command = "Byonet"
triggerall = power >= 1000
trigger1 = ctrl 
triggerall = statetype != A
trigger2 = (stateno = 210) || (stateno = 240)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Energywave
[State -1, EnergyWave]
type = ChangeState
value = 1700
triggerall = command = "energywave"
triggerall = var(10) >= 6
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 450) || stateno = 250 
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Energy Special air
[State -1, energy special]
type = ChangeState
value = 1600
triggerall = command = "Energy"
triggerall = var(10) >= 6
triggerall = statetype = A
trigger1 = ctrl 
trigger2 = stateno = 610 || stateno = 640 || stateno = 620  || stateno = 600 || stateno = 630 || stateno = 650
trigger2 = movecontact

;---------------------------------------------------------------------------
;Rifle Special
[State -1, Rifle special]
type = ChangeState
value = 1500
triggerall = command = "Rifle"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 420) 
trigger2 = movecontact  

;---------------------------------------------------------------------------
;Kicks Special
[State -1, Kicks special]
type = ChangeState
value = 1400
triggerall = command = "Kicks"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210) || (stateno = 240)
trigger2 = movecontact 


;---------------------------------------------------------------------------
;Energy Special
[State -1, energy special]
type = ChangeState
value = 1300
triggerall = command = "Energy"
triggerall = var(10) >= 6
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210) || (stateno = 240)
trigger2 = movecontact 


;---------------------------------------------------------------------------
;Gun Special
[State -1, gun special]
type = ChangeState
value = 1000
triggerall = command = "Gun"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = 210) || (stateno = 240) || (stateno = 440)
trigger2 = movecontact 


;---------------------------------------------------------------------------
;Granade Special
[State -1, granade special]
type = ChangeState
value = 1100
triggerall = command = "Granade"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 210) || (stateno = 240) || (stateno = 440)
trigger2 = movecontact 


;---------------------------------------------------------------------------
;Granade Special
[State -1, shocker special]
type = ChangeState
value = 1200
triggerall = command = "Shocker"
triggerall = statetype != A
trigger1 = ctrl = 1
triggerall = NumHelper(1201) = 0
triggerall = NumHelper(1203) = 0
trigger2 = (stateno = 250) 
trigger2 = movecontact 


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 900
triggerall = (statetype != A) && (ctrl = 1)
trigger1 = command = "superjump"
trigger2 = command = "3K"


;-----------------------------------------------------
;Knife Throw
;投げ
[State -1, KNIFE Throw]
type = ChangeState
value = 800
trigger1 = command = "holdfwd"
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = P2statetype != A
trigger1 = stateno != 100
trigger1 = p2bodydist X <= 30
triggerall = ctrl = 1


;-----------------------------------------------------
;Gun Throw
;投げ
[State -1, KNIFE Throw]
type = ChangeState
value = 810
trigger1 = command = "holdfwd"
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = P2statetype != A
trigger1 = stateno != 100
trigger1 = p2bodydist X <= 30
triggerall = ctrl = 1


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Mid Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) ||  (stateno = 230)
trigger2 = movecontact


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) ||  (stateno = 240)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200)  ||  (stateno = 230)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 =  (stateno = 230)  || (stateno = 210)  ||  (stateno = 240)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching mid Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430) || (stateno = 440)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強キック
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) || (stateno = 440)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430) 
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) || (stateno = 440)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Mid Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 640 || stateno = 650 
trigger2 = movecontact


;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;Jump Mid Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610  
trigger2 = movecontact


;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 640 || stateno = 620 
trigger2 = movecontact

