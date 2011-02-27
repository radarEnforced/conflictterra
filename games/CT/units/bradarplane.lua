	unitDef = {
	  unitname            = [[bradarplane]],
	  name                = [[Kangae Type Radar Plane]],
	  description         = [[Radar Plane - High flying plane equipped with far reaching radar.]],
          amphibious          = false,
	  buildCostEnergy     = 125,
	  buildCostMetal      = 125,
          builder             = false,
	  buildPic            = [[bradarplane.png]],
	  buildTime           = 12,
	  canAttack           = false,
          canDropFlare        = false,
          canFly              = true,
	  canFight            = false,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 400,
          reclaimable         = false,
	
          energyUse           = 1.5,
	  explodeAs           = [[SMALL_UNIT]],
          floater             = false,
          footprintx          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 150,
          maxAcc              = 0.5,
	  maxDamage           = 285,
	  maxVelocity         = 6,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	  objectName          = [[bradarplane.s3o]],
          radarDistance       = 1000,
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 400,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

          script              = [[bradarplane.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Radar Plane]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 213,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 120,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Radar Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 142,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bradarplane = unitDef })