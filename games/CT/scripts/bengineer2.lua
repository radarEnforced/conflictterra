local base = piece "base"
local body = piece "crane"
local nano = piece "nano"
local fxflare1 = piece "fxflare1"
local fxflare2 = piece "fxflare2"

local SIG_AIM = 2
local SIG_BUILD = 4

local buildersparks = SFX.CEG

local function sparks()
	while true do
		EmitSfx(fxflare1, buildersparks)
		EmitSfx(fxflare2, buildersparks)
		Sleep(1)
	end
end

function script.Create(unitID)
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_BUILD)
	SetSignalMask(SIG_BUILD)
        Turn(body, y_axis, heading, math.rad(90))
        WaitForTurn(body, y_axis)
	StartThread(sparks)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	return 1
end
function script.Querybody() return nano end
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
function script.AimFromWeapon() return nano end

function script.QueryWeapon() return nano end

function script.QueryNanoPiece() return nano end

function script.Killed(recentDamage, maxHealth)
   return 0
end