	-- by KR
	
	--pieces
	local body = piece "body"
	local flare1 = piece "flare1"



	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
local SIG_AIM = 2
local SIG_BUILD = 4

function script.Create(unitID)
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
        Turn(body, y_axis, heading, math.rad(90))
        WaitForTurn(body, y_axis)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	return 1
end
function script.Querybody() return flare1 end
function script.AimFromWeapon() return body end

function script.StopBuilding()
   Signal(SIG_BUILD)
   SetSignalMask(SIG_BUILD)
   SetUnitValue(COB.INBUILDSTANCE, 0)
   Turn(body, y_axis, 0, math.rad(90))
   WaitForTurn(body, y_axis)
   Sleep(1)
   return 0
end
function script.AimFromWeapon() return flare1 end

function script.QueryWeapon() return flare1 end

function script.Queryflare1Piece() return flare1 end

function script.Killed(recentDamage, maxHealth)
   return 0
end
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(body, y_axis, 0, math.rad(150))

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