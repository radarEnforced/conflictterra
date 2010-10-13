local bminer = {
	name                = [[Miner]],
	description         = [[Base Construction and Mining Vehicle]],
        acceleration        = 0.06,
        brakerate           = 1.5,
        buildpic            = [[bengineermkii.png]],
	buildCostEnergy     = 100,
	buildCostMetal      = 100,
        buildDistance       = 220,
        builder             = true,

	buildoptions		= {
                [[bmex]],
                [[bpowerplant]],
		[[bnuclearpower]],
		[[bmetalconverter]],
		[[bmechfactory]],
		[[btankfactory]],
		[[bairport]],
		[[bsupportfactory]],
		[[bshipyard]],
		[[bsubpens]],
		[[bradartower]],
		[[bjammertower]],
		[[blandturret]],
		[[bairturret]],
		[[blandnavalturret]],
		[[bgatlingturret]],
		[[bmechturret]],
	},

	buildTime           = 15,
        canAssist           = false,
	canFight            = false,
        canGuard            = true,
	canMove		    = true,
	canPatrol           = true,
        canReclaim          = true,
	canstop             = [[1]],
	category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

	defaultmissiontype  = [[Standby]],
        energyMake          = 0.25,
	explodeAs           = [[SMALL_UNIT]],
        footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 0,
	leaveTracks         = true,
	maneuverleashlength = [[640]],
	mass                = 70,
	maxDamage           = 350,
        maxSlope            = 36,
	maxVelocity         = 2,
        maxWaterDepth       = 22,
        metalMake           = 0.25,
	minCloakDistance    = 75,
	movementClass       = [[Engineer]],
        noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
	objectName          = "bengineermkii.s3o",
        onoffable           = false,
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
        side                = [[NKG]],
        sightDistance       = 500,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:buildersparks",
	    },
	
	  },

	smoothAnim          = true,
	steeringmode        = [[1]],
	TEDClass            = [[TANK]],
        terraformSpeed      = 300,
	reclaimSpeed        = 300,
	trackOffset         = 12,
	trackStrength       = 5,
	trackStretch        = 1,
	trackType           = [[StdTank]],
	trackWidth          = 15,
	turninplace         = 0,
	turnInPlace         = 0,
	turnRate            = 560,
	showNanospray	    = 0,
	workerTime          = 1,
	script		    = "bminer.lua",

	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[MINERALS]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
	      craterMult              = 0.25,
	      accuracy                = 200,
	
	      damage                  = {
		Cruiser = 15,
		Building = 15,
		Mech = 15,
		Tank = 15,
		Aircraft = 15,
		Ship = 15,
		Sub = 1,
	      },
	
	      explosionGenerator      = [[custom:FLAK_BURST_Expl]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 90,
	      reloadtime              = 0.2,
	      rgbColor                = [[1 0.95 0.4]],
	      separation              = 2,
              size                    = 1.25,
	      soundStart              = [[ct/machine_gun]],
	      soundStartVolume        = 0.5,
	      soundTrigger            = true,
	      stages                  = 50,
	      sprayAngle              = 1180,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Engineer]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[20]],
	      hitdensity       = [[100]],
	      metal            = 56,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Engineer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 28,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["bminer"] = bminer })