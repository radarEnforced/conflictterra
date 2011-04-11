	unitDef = {
	  unitname            = [[bmissiletank]],
	  name                = [[Kuma Type Tank]],
	  description         = [[Anti-Mech Tank - Fires two anti-mech missiles.]],
	  acceleration        = 0.03,
	  brakeRate           = 0.01,
	  buildCostEnergy     = 300,
	  buildCostMetal      = 300,
	  builder             = false,
	  buildPic            = [[bmissiletank.png]],
	  buildTime           = 12,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 2,
	  footprintZ          = 2,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  mass                = 60,
	  maxDamage           = 1000,
	  maxSlope            = 18,
	  maxVelocity         = 1.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK2x2]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bmissiletank.s3o]],
          pushResistant       = 1,
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,
	  trackOffset         = -6,
	  trackStrength       = 5,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 30,
	  turnInPlace         = 1,
	  turnRate            = 500,
          script              = [[bmissiletank.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Anti_Mech]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Anti_Mech = {
	      name                    = [[Anti-Mech Missile]],
	      areaOfEffect            = 48,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 35,
		Cruiser = 35,
		Building = 35,
		Mech = 75,
		Tank = 35,
		Aircraft = 35,
		Ship = 35,
		Sub = 35,
	      },
	
	      model                   = [[bantimechmissile.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 1,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 8000,
	      tracks                  = false,
	      trajectoryHeight        = 0.5,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 550,
	      startVelocity           = 450,
	      weaponAcceleration      = 100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Mech Tank]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 937,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 48,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Mech Tank]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 625,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 24,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmissiletank = unitDef })