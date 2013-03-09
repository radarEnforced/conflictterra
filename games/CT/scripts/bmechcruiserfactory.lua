	--Deployed Saito Class Cruiser animation script by Sanada

	--pieces
	local body = piece "body"

	local leftdoor = piece "leftdoor"
	local rightdoor = piece "rightdoor"

	local mainstrut = piece "mainstrut"
	local cage = piece "cage"
	local pad = piece "pad"
	local leftgate = piece "leftgate"
	local gateflare1 = piece "gateflare1"
	local gateflare2 = piece "gateflare2"
	local rightgate = piece "rightgate"
	local gateflare3 = piece "gateflare3"
	local gateflare4 = piece "gateflare4"

	local leftgear = piece "leftgear"
	local rightgear = piece "rightgear"

	local flare1 = piece "flare1"
	local flare2 = piece "flare2"
	local flare3 = piece "flare3"
	local flare4 = piece "flare4"
	local flare5 = piece "flare5"
	local flare6 = piece "flare6"
	local flare7 = piece "flare7"
	local flare8 = piece "flare8"

	local leftflare = piece "leftflare"
	local rightflare = piece "rightflare"

	local fxflare1 = piece "fxflare1"
	local fxflare2 = piece "fxflare2"
	local fxflare3 = piece "fxflare3"
	local fxflare4 = piece "fxflare4"
	local fxflare5 = piece "fxflare5"
	local fxflare6 = piece "fxflare6"
	
	local fxflaredamage1 = piece "fxflaredamage1"
	local fxflaredamage2 = piece "fxflaredamage2"
	local fxflaredamage3 = piece "fxflaredamage3"


	--signals
	local SIG_LIGHTS_GREEN = 1
	local SIG_LIGHTS_RED = 2

	--CEGs
	local ct_buildlight_green = SFX.CEG
	local ct_buildlight_red = SFX.CEG + 1
	local ct_damage_fire = SFX.CEG + 2


	--local functions
	local function lights_red()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_RED)
		while (true) do
			EmitSfx(gateflare1, ct_buildlight_red)
			EmitSfx(gateflare2, ct_buildlight_red)
			EmitSfx(gateflare3, ct_buildlight_red)
			EmitSfx(gateflare4, ct_buildlight_red)
			Sleep(1000)
		end
	end

	local function lights_green()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		SetSignalMask(SIG_LIGHTS_GREEN)
		while (true) do
			EmitSfx(gateflare1, ct_buildlight_green)
			EmitSfx(gateflare2, ct_buildlight_green)
			EmitSfx(gateflare3, ct_buildlight_green)
			EmitSfx(gateflare4, ct_buildlight_green)
			Sleep(1000)
		end
	end

	local function doors_open()
		Move(leftdoor, x_axis, 45, 25)
		Move(rightdoor, x_axis, -45, 25)
		WaitForMove(leftdoor, x_axis)
		WaitForMove(rightdoor, x_axis)
		Move(leftdoor, z_axis, -50, 25)
		Move(rightdoor, z_axis, -50, 25)
		Move(mainstrut, z_axis, 80, 25)
		Move(cage, z_axis, -80, 25)
	end
	
	local function DamagedSmoke()
		while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do
			Sleep(1000)
		end
		while true do
			local health = GetUnitValue(COB.HEALTH)
			if (health <= 75) then
				EmitSfx(fxflaredamage1, ct_damage_fire)
			end
			if (health <= 50) then
				EmitSfx(fxflaredamage2, ct_damage_fire)
			end
			if (health <= 25) then
				EmitSfx(fxflaredamage3, ct_damage_fire)
			end
			Sleep(100)
		end
	end


	--script
	function script.Create(unitID)
		StartThread(DamagedSmoke)
		Turn(leftgear, z_axis, -1.55, 1)
		Turn(rightgear, z_axis, 1.55, 1)
		Move(leftgear, y_axis, -6, 10)
		Move(rightgear, y_axis, -6, 10)
		Move(pad, y_axis, 25, 2000)
		StartThread(doors_open)
	end

	function script.QueryBuildInfo() return pad end

	function script.QueryNanoPiece() return cage end

	function script.Activate()
		SetUnitValue(COB.YARD_OPEN, 1)
		SetUnitValue(COB.INBUILDSTANCE, 1)
		SetUnitValue(COB.BUGGER_OFF, 1)
		return 1
	end

	function script.Deactivate()
		SetUnitValue(COB.YARD_OPEN, 0)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		SetUnitValue(COB.BUGGER_OFF, 0)
		return 0
	end

	function script.StartBuilding()
		StartThread(lights_red)
		Sleep(5000)
		Move( cage, z_axis, 0, 25 )
		WaitForMove( cage, z_axis )
		StartThread(lights_green)
		Move( pad, y_axis, 0, 25)
		Move( leftgate, x_axis, 35, 25)
		Move( rightgate, x_axis, -35, 25)
	end

	function script.StopBuilding()
		Signal(SIG_LIGHTS_RED)
		Signal(SIG_LIGHTS_GREEN)
		Move( cage, z_axis, -80, 2000 )
		Move( pad, y_axis, 25, 2000 )
		Sleep(2000)
		Move( leftgate, x_axis, 0, 25 )
		Move( rightgate, x_axis, 0, 25 )
	end

	function script.Killed(recentDamage, maxHealth)
		return 0
	end