	unitDef = {
	  unitname            = [[bmetalsupplyboat]],
	  name                = [[Douda Class Supply Ship]],
	  description         = [[Metal Supply Ship - Seaworthy metal storage.  Stores 750 metal.]],
	  acceleration        = 0.05,
	  bmcode              = [[1]],
	  brakeRate           = 0.06,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[bmetalsupplyboat.png]],
	  buildTime           = 20,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
          floater             = true,
	  footprintX          = 6,
	  footprintZ          = 6,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 375,
	  maxDamage           = 2000,
	  maxVelocity         = 2.5,
	  metalStorage        = 750,
	  minCloakDistance    = 75,
	  minWaterDepth       = 5,
	  movementClass       = [[BOAT3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM LAND SINK SHIP SATELLITE SWIM FLOAT SUB HOVER]],
	  objectName          = [[bmetalsupplyboat.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 400,

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[SHIP]],
	  turnRate            = 416,
	  workerTime          = 0,
          waterline           = 4,
          script              = [[bmetalsupplyboat.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Metal Supply Ship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 1500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 160,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Metal Supply Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 6,
	      footprintZ       = 6,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 80,
	      object           = [[b6x6heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmetalsupplyboat = unitDef })