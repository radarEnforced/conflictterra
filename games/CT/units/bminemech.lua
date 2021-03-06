	--Enkei Combat Mech Unit Def by Sanada
	--Notes:  Balanced Version 1

	unitDef = {
	  unitname            = [[bminemech]],
	  name                = [[YSM-002 Enkei Combat Mech]],
	  description         = [[Mine-layer Mech - Able to drop up to 4 mines.]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 250,
	  buildCostMetal      = 250,
	  
	  buildPic            = [[bminemech.png]],
	  buildTime           = 16,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],	  
	  reclaimable         = false,
	
	  explodeAs           = [[MECH_EXPLOSION]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 45,
	  maxDamage           = 700,
	  maxSlope            = 36,
	  maxVelocity         = 3,
	  maxWaterDepth       = 22,
	  movementClass       = [[Mech4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP CRUISER SUB]],
	  objectName          = [[bminemech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MECH_EXPLOSION]],

	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
	    },
	  },

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 700,
	  smoothAnim          = true,
	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  script              = [[bminemech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[AntiTank]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AntiTank = {
	      name                    = [[Armor Piercing Cannon]],
	      areaOfEffect            = 32,
		  avoidFeature            = false,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--No Bonus
		--20 dps
		default = 60,
		Cruiser = 60,
		Building = 60,
		Land = 60,
		Aircraft = 60,
		Ship = 60,
		Sub = 60,

		Meteor = 0,
		Drone = 60,
		Spare1 = 60,
		Spare2 = 60,
		Spare3 = 60,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_cannon]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      range                   = 600,
	      reloadtime              = 3,
		  rgbColor                = [[1 0.95 0.4]],
		  separation              = 2,
	      size                    = 1.25,
		  stages                  = 50,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Enkei Combat Mech]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 400,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 162,
	      object           = [[wrecks/bminemechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 4800,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Enkei Combat Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 200,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 81,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2400,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bminemech = unitDef })