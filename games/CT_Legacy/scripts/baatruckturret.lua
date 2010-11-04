	-- by KR
	
	--pieces
	local body = piece "body"
	local flakturret = piece "flakturret"
	local barrel = piece "barrel"
	local flare1 = piece "flare1"
	local flare2 = piece "flare2"

	local misturret = piece "misturret"
	local flaremis = piece "flaremis"


	--signals
	local SIG_AIM = 1
	local SIG_AIM_SEC = 2
        local orc_machinegun_flash = SFX.CEG
        local orc_machinegun_muzzle = SFX.CEG + 1	

	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(barrel, x_axis, 0, math.rad(200))
	end

	function script.QueryWeapon1() return flare1 end

	function script.QueryWeapon2() return flare2 end
	
	function script.AimFromWeapon1() return flakturret end

	function script.AimFromWeapon2() return flakturret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(flakturret, y_axis, (0 - heading), math.rad(200))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
        	WaitForTurn(flakturret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end

	function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM_SEC)
		SetSignalMask(SIG_AIM_SEC)
        	Turn(flakturret, y_axis, (0 - heading), math.rad(200))
        	Turn(barrel, x_axis, -pitch, math.rad(150))
        	WaitForTurn(flakturret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	
	function script.FireWeapon1()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       
	Sleep(30)
	end

	
	function script.FireWeapon2()
	EmitSfx(flare1, orc_machinegun_flash)
	EmitSfx(flare1, orc_machinegun_muzzle)	       
	Sleep(30)
	end

	
	function script.Killed(recentDamage, maxHealth)
		Sleep(30)
	end