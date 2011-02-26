	unitDef = {
	  unitname            = [[bradarship]],
	  name                = [[Shiru Class Radar Ship]],
	  description         = [[Radar Ship - Seaworthy radar and sonar unit.]],
	  acceleration        = 0.05,
	  brakeRate           = 0.06,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[bradarship.png]],
	  buildTime           = 20,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
          floater             = true,
	  footprintX          = 4,
	  footprintZ          = 4,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[24 48 80]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  idleAutoHeal        = 0,
	  mass                = 375,
	  maxDamage           = 2000,
	  maxVelocity         = 2.5,
	  minCloakDistance    = 75,
	  minWaterDepth       = 5,
	  movementClass       = [[SHIP4x4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	  objectName          = [[bradarship.s3o]],
          radarDistance       = 1000,
          sonarDistance       = 1000,
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 400,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  turnRate            = 416,
          waterline           = 4,
          script              = [[bradarship.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Radar Ship]],
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
	      description      = [[Debris - Radar Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 80,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bradarship = unitDef })