	unitDef = {
	  unitname            = [[benergytruck]],
	  name                = [[Raida Type Supply Truck]],
	  description         = [[Power Supply Truck - Supply truck that provides 25 energy storage.  Can morph into an immobile depot that provides more energy storage.]],
	  acceleration        = 0.04,
	  activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.02,
	  buildCostEnergy     = 200,
	  buildCostMetal      = 160,
	  builder             = false,
	  reclaimable         = false,

	  buildPic            = [[benergytruck.png]],
	  buildTime           = 40,
	  canAttack           = false,
	  canGuard            = false,
	  canMove             = true,
	  canPatrol           = false,
          canReclaim          = false,
	  canFight            = false,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	
	  defaultmissiontype  = [[Standby]],
          energyMake          = 0,
	  energyStorage       = 25,
	  energyUse           = 0,
	  explodeAs           = [[BIG_UNITEX]],
          footprintx          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 200,
	  maxDamage           = 1150,
	  maxSlope            = 18,
	  maxVelocity         = 2,
	  maxWaterDepth       = 22,
          metalMake           = 0,
	  metalStorage        = 0,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
	  objectName          = [[benergytruck.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],
	  side                = [[NKG]],
	  sightDistance       = 400,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  turninplace         = 0,
	  turnRate            = 550,
          script              = [[benergytruck.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Power Supply Truck]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Power Supply Truck]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ benergytruck = unitDef })
