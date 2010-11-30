	-- by KR
	
	--pieces
	local waist = piece "waist"

	local baclthigh = piece "lbthigh"
	local baclshin = piece "lbshin"

	local bacrthigh = piece "rbthigh"
	local bacrshin = piece "rbshin"

	local body = piece "body"
	local lgun = piece "larm"
	local flare1 = piece "flare1"
	local rgun = piece "rarm"
	local flare2 = piece "flare2"

	local forlthigh = piece "lfthigh"
	local forlshin = piece "lfshin"

	local forrthigh = piece "rfthigh"
	local forrshin = piece "rfshin"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4
	local walk_stop = 8
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))
		Turn(lgun, x_axis, 0, math.rad(100))	
		Turn(rgun, x_axis, 0, math.rad(100))	
	end

	local function Walk()
	        SetSignalMask( walk_go )
                Sleep(30)
	        while ( true ) do
	                Turn( forrthigh, x_axis, 0, 1 )
	                Turn( baclthigh, x_axis, 0, 1 )

	                Turn( forrshin, x_axis, 0.5, 1 )
	                Turn( baclshin, x_axis, -0.5, 1 )

   	                Turn( forlthigh, x_axis, -0.5, 1 )
        	        Turn( bacrthigh, x_axis, 0.5, 1 )

   	                Turn( forlshin, x_axis, 0, 1 )
        	        Turn( bacrshin, x_axis, 0, 1 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	               
	                Turn( bacrthigh, x_axis, 0, 1 )
	                Turn( forlthigh, x_axis, 0, 1 )

   	                Turn( forlshin, x_axis, 0.5, 1 )
        	        Turn( bacrshin, x_axis, -0.5, 1 )

	                Turn( forrthigh, x_axis, -0.5, 1 )
	                Turn( baclthigh, x_axis, 0.5, 1 )

	                Turn( forrshin, x_axis, 0, 1 )
	                Turn( baclshin, x_axis, 0, 1 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	        end
	end
	
	local function StopWalk()
	        Signal( walk_go )
		Turn( forrthigh, x_axis, 0, 1 )
		Turn( baclthigh, x_axis, 0, 1 )
	       
	        Turn( forlthigh, x_axis, 0, 1 )
	        Turn( bacrthigh, x_axis, 0, 1 )

		Turn( forrshin, x_axis, 0, 1 )
		Turn( baclshin, x_axis, 0, 1 )
	       
	        Turn( forlshin, x_axis, 0, 1 )
	        Turn( bacrshin, x_axis, 0, 1 )
	end
	
	function script.StartMoving()
	        StartThread( Walk )
	end
	
	function script.StopMoving()
	        StartThread( StopWalk )
	end
	

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
                Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(lgun, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(lgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon2() return body end
	
	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(body, y_axis, heading, math.rad(150))
        	Turn(rgun, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(rgun, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)
	       Sleep(30)
	end

	function script.FireWeapon2()
	EmitSfx(flare2, orc_machinegun_flash)
	EmitSfx(flare2, orc_machinegun_muzzle)
	       Sleep(30)
	end

	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end