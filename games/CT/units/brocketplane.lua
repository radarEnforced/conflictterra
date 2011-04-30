	unitDef = {
	  unitname            = [[brocketplane]],
	  name                = [[Tonbo Type Warplane MkIII]],
	  description         = [[Rocket Warplane - Versatile anti-land aircraft.  Fires four missiles that do little damage to buildings.]],
          amphibious          = false,
	  buildCostEnergy     = 175,
	  buildCostMetal      = 175,
	  buildPic            = [[brocketplanemkiii.png]],
	  buildTime           = 15,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 150,
          reclaimable         = false,

	  explodeAs           = [[SMALL_UNIT]],
          floater             = false,
          footprintx          = 2,
	  footprintZ          = 2,
          frontToSpeed        = 0,
	  idleAutoHeal        = 0,
	  mass                = 75,
          maxAcc              = 0.5,
	  maxDamage           = 325,
	  maxVelocity         = 7,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[brocketplanemkiii.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_missile_smokecloud",
	    },
	
	  },

          speedToFront        = 0,
          script              = [[brocketplanemkiii.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Rocket]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Rocket = {
	      name                    = [[Small Missiles]],
	      areaOfEffect            = 48,
	      burst                   = 4,
	      burstrate               = 0.5,
	      collideFriendly         = false,
	      cegTag                  = [[ct_missiletail_small]],
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 50,
		Cruiser = 50,
		Building = 5,
		Mech = 50,
		Tank = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,

		Meteor = 0,
		Drone = 50,
		Spare1 = 50,
		Spare2 = 50,
		Spare3 = 50,
	      },
	
	      model                   = [[projectiles/blargemissilemkii.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      range                   = 600,
	      reloadtime              = 4,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      texture2		      = [[ct_smoketrail]],
	      tolerance               = 8000,
	      tracks                  = false,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 550,
	      startVelocity           = 450,
	      weaponAcceleration      = 100,
	      wobble                  = 16000,
	      turnRate                = 8000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Tonbo Type Warplane MkIII]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 162,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 67,
	      object           = [[wrecks/brocketplanemkiiiwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1800,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Tonbo Type Warplane MkIII]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 81,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 33,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 900,
	    },
	
	  },
	
	}
	
	return lowerkeys({ brocketplane = unitDef })