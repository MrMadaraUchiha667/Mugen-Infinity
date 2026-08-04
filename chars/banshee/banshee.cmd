; -| Super Motions |--------------------------------------------------------
; The following two have the same name, but different motion.
; Either one will be detected by a "command = TripleKFPalm" trigger.
; Time is set to 20 (instead of default of 15) to make the move easier to do.

;-------------------------------------------------------------------------
;Counter

[Command]
name = "Counter"
command = ~F, x+a

[Command]
name = "Counter"
command = ~F, y+b

[Command]
name = "Counter"
command = ~F, z+c

[Command]
name = "236Z"
command = z+y+x

;---------------------------------------------------------------------------
; Roll

[Command]
name = "roll_n"
command = ~B, D, DB, x

[Command]
name = "roll_m"
command = ~B, D, DB,  y

[Command]
name = "roll_f"
command = ~B, D, DB, z

;---------------------------------------------------------------------------
; Forward Recovery Roll or Alpha Counter1

[Command]
name = "ac_f_roll_n"
command = ~B, DB, D, x

[Command]
name = "ac_f_roll_m"
command = ~B, DB, D, y

[Command]
name = "ac_f_roll_f"
command = ~B, DB, D, z

;---------------------------------------------------------------------------
; Backward Recovery Roll or Alpha Counter2

[Command]
name = "ac_sweep_b_roll_n"
command = ~B, DB, D, a

[Command]
name = "ac_sweep_b_roll_m"
command = ~B, DB, D, b

[Command]
name = "ac_sweep_b_roll_f"
command = ~B, DB, D, c

;---------------------------------------------------------------------------------------------
;Super Jump

[Command]
name = "Super_Jump"
command = ~D, U

[Command]
name = "CassidyDeathWail"
command = D,DF,F, x+y
time = 35

[Command]
name = "CassidyDeathWail"
command = D,DF,F, x+z
time = 35

[Command]
name = "CassidyDeathWail"
command = D,DF,F, z+y
time = 35

[Command]
name = "CassidyDeathWail"
command = D,DF,F, z+y+x
time = 35

[Command]
name = "SuperSonicScream"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "SuperSonicScream"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "SuperSonicScream" 
command = ~D, DF, F, x+z
time = 20

[Command]
name = "SonicRush"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "SonicRush"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "SonicRush"
command = ~D, DF, F, a+c
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "Thrustx"
command = ~D, DB, B, x
time = 30

[Command]
name = "Thrusty"
command = ~D, DB, B, y
time = 30

[Command]
name = "Thrustz"
command = ~D, DB, B, z
time = 30

[Command]
name = "Flight"
command = ~D, DB, B, a
time = 30

[Command]
name = "Flight"
command = ~D, DB, B, b
time = 30

[Command]
name = "Flight"
command = ~D, DB, B, c
time = 30

[Command]
name = "SonicScream_x"
command = ~D, DF, F, x

[Command]
name = "SonicScream_Stand"
command = ~D, DF, F, y

[Command]
name = "SonicScream_Stand"
command = ~D, DF, F, z

[Command]
name = "SonicDisrupt_a"
command = ~D, DF, F, a

[Command]
name = "SonicDisrupt_b"
command = ~D, DF, F, b

[Command]
name = "SonicDisrupt_c"
command = ~D, DF, F, c

[Command]
name = "SonicToss"
command = /$F,z
time = 5

[Command]
name = "SonicToss"
command = /$B,z
time = 5

[Command]
name = "Siryn"
command = x+a
time = 20

[Command]
name = "Siryn"
command = y+b
time = 20

[Command]
name = "Siryn"
command = z+c
time = 20

[Command]
name = "Airdash"
command = x+y

[Command]
name = "Airdash"
command = x+z

[Command]
name = "Airdash"
command = z+y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;<-- Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"    ;<-- Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"  ;<-- Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

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
name = "holdfwd"  ;<-- Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;<-- Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"  ;<-- Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown"  ;<-- ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "SJ"
command = $D, $U

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

[Statedef -1]

[State -1, AI Activation]
type = varset
triggerall = AILevel > 2
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= ((AILevel-2)*100)
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 7
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------

;-----------------------------

[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------

[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
triggerall = StateType = S
trigger1 = ctrl

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
triggerall = StateType = S
trigger1= (StateNo = 420) && (Movecontact)
trigger2 = (StateNo = 1402) && (hitcount >=2)

;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]

;------------------------------------
;AI Guard Push (Standing)
;------------------------------------
[State -1, AI Guard Push]
type = ChangeState
value = 6300
triggerall = Var(59) = 1
triggerall = (StateType = S) && (StateType != L)
triggerall = P2life != 0
trigger1 = StateNo = [150,153]
trigger1 = P2BodyDist X >= 71
trigger1 = Time >= 5

;---------------------------------------------------------------------------
;----------------------------- Recovery Roll -------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Near Foward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 1

[State -1]
type = ChangeState
value = 831
triggerall = Var(59) != 2
triggerall = Var(30) = 1
triggerall = alive = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Foward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 2

[State -1]
type = ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = Var(30) = 2
triggerall = alive = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Foward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_f_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 3

[State -1]
type = ChangeState
value = 840
triggerall = Var(59) != 2
triggerall = Var(30) = 3
triggerall = alive = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Near Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_n"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 4

[State -1]
type = ChangeState
value = 850
triggerall = Var(59) != 2
triggerall = Var(30) = 4
triggerall = alive = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Medium Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_m"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 5

[State -1]
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = Var(30) = 5
triggerall = alive = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Far Backward Recovery Roll

[State -1]
type = VarSet
triggerall = Var(59) != 2
triggerall = command = "ac_sweep_b_roll_f"
triggerall = alive = 1
trigger1 = stateno = 5050 || stateno = 5071
v = 30
value = 6

[State -1]
type = ChangeState
value = 860
triggerall = Var(59) != 2
triggerall = Var(30) = 6
triggerall = alive = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;------------------------ Lie Down Recovery Roll ---------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lie Down Forward Recovery Roll

[State -1]
type = ChangeState
value = 832
triggerall = Var(59) != 2
triggerall = command = "holdfwd"
triggerall = alive = 1
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120

;---------------------------------------------------------------------------
; Lie Down Backward Recovery Roll

[State -1]
type = ChangeState
value = 855
triggerall = Var(59) != 2
triggerall = command = "holdback"
triggerall = time = 1
triggerall = alive = 1
triggerall = life > 0
trigger1 = stateno = 5120

;============================================
; ---Hyper Moves------------------------------------------------------------------
;============================================
[State -1, Death Wail]
type = ChangeState
value = 4000
triggerall = Command = "CassidyDeathWail"
triggerall = P2Name != "Siryn"
triggerall = P4Name != "Siryn"
triggerall = NumHelper(9500) = 0
triggerall = Power >= 2000
trigger1 = Ctrl
trigger2 = (hitdefattr = SCA, NA,SA) && movecontact

[State -1, Sonic Rush]
type = ChangeState
value = 3100
triggerall = Command = "SonicRush"
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Super Sonic Scream]
type = ChangeState
value = 3000
triggerall = Command = "SuperSonicScream"
triggerall = Power >= 1000
triggerall = Power < 2000
triggerall = NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Super Sonic Scream]
type = ChangeState
value = 3001
triggerall = Command = "SuperSonicScream"
triggerall = Power >= 1000
triggerall = Power < 2000
triggerall = NumProj = 0
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (hitdefattr = A, NA,SA) && movecontact

 ;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward Up]
type = ChangeState
value = 1341
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110) || (stateno = [1340,1347])
trigger1 = command = "holdfwd" && command = "holdup"
trigger1 = command = "Airdash"
;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Back Up]
type = ChangeState
value = 1346
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110) || (stateno = [1340,1347])
trigger1 = command = "holdback" && command = "holdup"
trigger1 = command = "Airdash"
;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Back Down]
type = ChangeState
value = 1347
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110) || (stateno = [1340,1347])
trigger1 = command = "holdback" && command = "holddown"
trigger1 = command = "Airdash"
;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward Down]
type = ChangeState
value = 1343
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110) || (stateno = [1340,1347])
trigger1 = command = "holdfwd" && command = "holddown"
trigger1 = command = "Airdash"
;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Up]
type = ChangeState
value = 1342
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110) || (stateno = [1340,1347])
trigger1 = command = "holdup"
trigger1 = command = "Airdash"
;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Down]
type = ChangeState
value = 1344
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110) || (stateno = [1340,1347])
trigger1 = command = "holddown"
trigger1 = command = "Airdash"
;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Back]
type = ChangeState
value = 1345
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110) || (stateno = [1340,1347])
trigger1 = command = "holdback"
trigger1 = command = "Airdash"
trigger2 = command = "BB"
;---------------------------------------------------------------------------
;Air Dash
[State -1, Air Dash Forward]
type = ChangeState
value = 1340
triggerall = Var(55) < 3
triggerall = !var(59)
triggerall = command != "SuperSonicScream"
triggerall = statetype = A
triggerall = (ctrl) || (stateno = 1110)  || (stateno = [1340,1347])
trigger1 = command = "Airdash"
trigger2 = command = "FF"

; ===========================================================================
; Special Moves
; =====================================

[State -1, Charge Thrust]
type = ChangeState
value = 1400
triggerall = Command = "Thrustx"
triggerall = stateno != [1400,1402]
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Charge Thrust]
type = ChangeState
value = 1401
triggerall = Command = "Thrusty"
triggerall = stateno != [1400,1402]
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Charge Thrust]
type = ChangeState
value = 1402
triggerall = Command = "Thrustz"
triggerall = stateno != [1400,1402]
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Charge Thrust]
type = ChangeState
value = 1403
triggerall = Command = "Thrustx"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (hitdefattr = A, NA,SA) && movecontact

[State -1, Charge Thrust]
type = ChangeState
value = 1404
triggerall = Command = "Thrusty"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (hitdefattr = A, NA,SA) && movecontact

[State -1, Charge Thrust]
type = ChangeState
value = 1405
triggerall = Command = "Thrustz"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (hitdefattr = A, NA,SA) && movecontact


; ---SONIC SCREAM-----------------------------------------------------------
[State -1, Sonic Scream STAND]
type = ChangeState
value = 1000
triggerall = Command = "SonicScream_Stand"
triggerall = NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Sonic Scream CROUCH]
type = ChangeState
value = 1001     
triggerall = Command = "SonicScream_x"
triggerall = NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl 
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Sonic Scream AIR]
type = ChangeState
value = 1002
triggerall = NumProj = 0
triggerall = StateType = A
triggerall = (Command = "SonicScream_x") || (Command = "SonicScream_Stand")
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

;---FLIGHT-----------------------------------------
[State -1, Flight]
type = ChangeState
value = 1100
triggerall = Command = "Flight"
trigger1 = Ctrl

;---Sonic Toss----------------------------
[State -1, Sonic Toss]
type = ChangeState
value = 1200
triggerall = (Statetype = S) && (ctrl) && p2statetype != L
trigger1 = (command = "SonicToss") && (P2BodyDist X = [0, 10])
trigger2 = (command = "SonicToss") && (P2BodyDist X = [0, 10])

;---SONIC DISRUPTION--------------------------------
[State -1, Sonic Disrupt 20]
type = ChangeState
value = 1300
triggerall = Command = "SonicDisrupt_a"
triggerall = stateno != [1300,1306]
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Sonic Disrupt 40]
type = ChangeState
value = 1301
triggerall = Command = "SonicDisrupt_b"
triggerall = stateno != [1300,1306]
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

[State -1, Sonic Disrupt 60]
type = ChangeState
value = 1302
triggerall = Command = "SonicDisrupt_c"
triggerall = stateno != [1300,1306]
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = (hitdefattr = SC, NA,SA) && movecontact

;----------------------------------------------------------------------------
; ===========================================================================
; Basic Moves
; =====================================
; ---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = Command = "FF"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = Command = "BB"
trigger1 = StateType = S
trigger1 = Ctrl

;----------------------------------------------------------------------
;======================================================================
;---STANDING ATTACKS---------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
triggerall = StateType = S
trigger1 = Ctrl

;----------------------------------------------------------------------
;Stand Middle Punch
[State -1, Stand Middle Punch]
type = ChangeState
value = 210
triggerall = Command = "y"
triggerall = Command != "holddown"
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 230 && MoveContact

;----------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Command = "z"
triggerall = Command != "holddown"
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = (stateno = 200) && MoveContact

;-----------------------------------------------------------------------
[State -1, Stand Middle Kick]
type = ChangeState
value = 240
triggerall = Command = "b"
triggerall = Command != "holddown"
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = 230) && MoveContact

;----------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = Command = "c"
triggerall = Command != "holddown"
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = (stateno = [200,220]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact


;-----------------------------------------------------------------------
;Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = Command = "start"
;trigger1 = StateType != A
;trigger1 = Ctrl

;---CROUCHING ATTAKCS-------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
triggerall = StateType = C
trigger1 = Ctrl
trigger2 = (stateno = 200) && MoveContact

;----------------------------------------------------------------------
;Crouching Middle Punch
[State -1, Crouch Middle Punch]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
triggerall = StateType = C
trigger1 = Ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger2 = (stateno = 400) && MoveContact
trigger3 = (stateno = 430) && MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = Command = "z"
triggerall = Command = "holddown"
triggerall = StateType = C
trigger1 = Ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = Command = "a"
triggerall = Command = "holddown"
triggerall = StateType = C
trigger1 = Ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact

;----------------------------------------------------------------------
;Crouching Middle Kick
[State -1, Courch Middle Kick]
type = ChangeState
value = 440
triggerall = Command = "b"
triggerall = Command = "holddown"
triggerall = StateType = C
trigger1 = Ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = 430) && MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = Command = "c"
triggerall = Command = "holddown"
triggerall = StateType = C
trigger1 = Ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = Command = "x"
triggerall = StateType = A
trigger1 = Ctrl

;----------------------------------------------------------------------
;Jump Middle Punch
[State -1, Jump Middle Punch]
type = ChangeState
value = 610
triggerall = Command = "y"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = Command = "z"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (stateno = [600,610]) && MoveContact
trigger3 = (stateno = [630,640]) && MoveContact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = Command = "a"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (stateno = 600) && MoveContact

;----------------------------------------------------------------------
;Jump Middle Kick
[State -1, Jump Middle Kick]
type = ChangeState
value = 640
triggerall = Command = "b"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (stateno = [600,610]) && MoveContact
trigger3 = (stateno = 630) && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = Command = "c"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = (stateno = [600,610]) && MoveContact
trigger3 = (stateno = [630,640]) && MoveContact
