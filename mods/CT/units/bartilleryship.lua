	unitDef = {
	  unitname            = [[bartilleryship]],
	  name                = [[Akechi Class Battleship]],
	  description         = [[Artillery Ship - Battleship armed with a single, large gun.  Does more damage to buildings.]],
	  acceleration        = 0.03,
          activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.13,
	  buildCostEnergy     = 700,
	  buildCostMetal      = 560,
	  builder             = false,
	  buildPic            = [[bartilleryship.png]],
	  buildTime           = 25,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[MEDIUM_UNIT]],
          floater             = true,
	  footprintX          = 4,
	  footprintZ          = 4,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[40 48 176]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 350,
	  maxDamage           = 3750,
	  maxVelocity         = 1.8,
	  minCloakDistance    = 75,
	  minWaterDepth       = 10,
	  movementClass       = [[BOAT4]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE]],
	  objectName          = [[bartilleryship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 750,
	    
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },
	  
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[SHIP]],
	  turnRate            = 199,
	  workerTime          = 0,
          waterline           = 5,
          script              = [[bartilleryship.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {	
	
	    Cannon = {
	      name                    = [[Naval Artillery Cannon]],
	      areaOfEffect            = 64,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 190,
		Building = 280,
		Mech = 190,
		Tank = 190,
		Aircraft = 190,
		Ship = 190,
		Sub = 190,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:LRPC_Expl]],
	      interceptedByShieldType = 1,
	      myGravity               = 0.1,
	      range                   = 750,
	      reloadtime              = 7.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Artillery Ship]],
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
	      description      = [[Debris - Artillery Ship]],
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
	
	return lowerkeys({ bartilleryship = unitDef })