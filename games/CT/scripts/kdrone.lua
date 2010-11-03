	-- by KR
	
	--pieces
	local body = piece "body"

	local baclthigh = piece "lbthigh"
	local baclshin = piece "lbshin"

	local bacrthigh = piece "rbthigh"
	local bacrshin = piece "rbshin"



	local flare1 = piece "flare1"



	local forlthigh = piece "lfthigh"
	local forlshin = piece "lfshin"

	local forrthigh = piece "rfthigh"
	local forrshin = piece "rfshin"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
	local walk_go = 4
	local walk_stop = 8

	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))

	end

	local function Walk()
	        SetSignalMask( walk_go )
                Sleep(30)
	        while ( true ) do
	                Turn( forrthigh, x_axis, 0, 0.5 )
	                Turn( baclthigh, x_axis, 0, 0.5 )

	                Turn( forrshin, x_axis, 0.5, 0.5 )
	                Turn( baclshin, x_axis, -0.5, 0.5 )

   	                Turn( forlthigh, x_axis, -0.5, 0.5 )
        	        Turn( bacrthigh, x_axis, 0.5, 0.5 )

   	                Turn( forlshin, x_axis, 0, 0.5 )
        	        Turn( bacrshin, x_axis, 0, 0.5 )

	                WaitForTurn( bacrthigh, x_axis )
	                WaitForTurn( forlthigh, x_axis )
                        WaitForTurn( forrthigh, x_axis )
   	                WaitForTurn( baclthigh, x_axis )

	                WaitForTurn( bacrshin, x_axis )
	                WaitForTurn( forlshin, x_axis )
                        WaitForTurn( forrshin, x_axis )
   	                WaitForTurn( baclshin, x_axis )
	                Sleep(30)
	               
	                Turn( bacrthigh, x_axis, 0, 0.5 )
	                Turn( forlthigh, x_axis, 0, 0.5 )

   	                Turn( forlshin, x_axis, 0.5, 0.5 )
        	        Turn( bacrshin, x_axis, -0.5, 0.5 )

	                Turn( forrthigh, x_axis, -0.5, 0.5 )
	                Turn( baclthigh, x_axis, 0.5, 0.5 )

	                Turn( forrshin, x_axis, 0, 0.5 )
	                Turn( baclshin, x_axis, 0, 0.5 )

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
		Turn( forrthigh, x_axis, 0, 0.5 )
		Turn( baclthigh, x_axis, 0, 0.5 )
	       
	        Turn( forlthigh, x_axis, 0, 0.5 )
	        Turn( bacrthigh, x_axis, 0, 0.5 )

		Turn( forrshin, x_axis, 0, 0.5 )
		Turn( baclshin, x_axis, 0, 0.5 )
	       
	        Turn( forlshin, x_axis, 0, 0.5 )
	        Turn( bacrshin, x_axis, 0, 0.5 )
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
        	Turn(body, x_axis, -pitch, math.rad(100))
        	WaitForTurn(body, y_axis)
        	WaitForTurn(body, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	


	
	function script.FireWeapon1()
	       Sleep(30)
	end



	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end