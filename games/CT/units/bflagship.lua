	--Ieyasu Class Cruiser Unit Def by Sanada
	--Notes:  Balanced Version 1 (EXCEPT DAMAGE)

	unitDef = {
	  unitname            = [[bflagship]],
	  name                = [[MK-002 Ieyasu Class Cruiser]],
	  description         = [[Flagship - Centerpiece of the NKG Fleet. Can fire a very powerful Beam Weapon. - Build Limit: 1]],
	  acceleration        = 0.16,
	  activateWhenBuilt   = false,
	  airStrafe           = 0,
	  amphibious          = true,
	  brakeRate           = 1.88,
	  buildCostEnergy     = 2000,
	  buildCostMetal      = 2000,
	  builder             = false,
	  reclaimable         = false,

	  buildPic            = [[bflagship.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canDGun             = true,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canReclaim          = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[CRUISER]],
	  
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[105 110 320]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[cylz]],
	  
	  collide             = true,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 300,

	  customParams = {
	  	RequireTech   = [[Raised Strategic Importance]],
	  	ProvideTech   = [[Commander's Presence]],
	  },
	
	  energyMake          = 5,
	  energyStorage       = 0,
	  energyUse           = 0,
	  explodeAs           = [[CRUISER_EXPLOSION]],
	  floater             = true,
	  footprintx          = 6,
	  footprintZ          = 6,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 7000,
	  maxVelocity         = 4,
	  minAirbasePower     = 1,
	  verticalSpeed       = 30,
	  metalMake           = 0,
	  metalStorage        = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  objectName          = [[bflagship.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[CRUISER_EXPLOSION]],
	  showNanospray       = 0,
	  showNanoFrame       = false,
	  side                = [[NKG]],
	  sightDistance       = 750,

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },
	  
	  sfxtypes            = {
	    explosiongenerators = {
		"custom:ct_damage_fire",
	    },
	  },

	  smoothAnim          = true,
	  turnRate            = 250,
	  upright             = true,
	  unitRestricted      = 1,
	  script              = [[bflagship.lua]],



	
	  weapons             = {

	    {
	      def = [[DISINTEGRATOR]],
	    },
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
		
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[-1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
		
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[-1 0 0]],
	      maxAngleDif        = 200,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    DISINTEGRATOR = {
	      name                    = [[Disintegrator]],
	      areaOfEffect            = 36,
	      avoidFeature            = false,
	      avoidFriendly           = false,
	      avoidNeutral            = false,
	      commandfire             = true,
	      craterMult              = 0.25,
		  collideFriendly         = false,
	
	      damage                  = {
		--No Bonus...
		default = 99999,
		Cruiser = 99999,
		Building = 99999,
		Land = 99999,
		Aircraft = 99999,
		Ship = 99999,
		Sub = 99999,

		Meteor = 0,
		Drone = 99999,
		Spare1 = 99999,
		Spare2 = 99999,
		Spare3 = 99999,
	      },
	
	      energypershot           = 500,
	      explosionGenerator      = [[]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      noExplode               = true,
	      noSelfDamage            = true,
	      range                   = 500,
	      reloadtime              = 10,
	      soundStart              = [[ct/dgunfire]],
	      soundTrigger            = true,
	      tolerance               = 10000,
	      turret                  = true,
	      --weaponTimer             = 4.2,
	      weaponType              = [[DGun]],
	      weaponVelocity          = 300,
	    },

	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--No Bonus
		default = 100,
		Cruiser = 100,
		Building = 100,
		Land = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 750,
	      reloadtime              = 1,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },

          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Ieyasu Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 3500,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 6,
	      footprintZ       = 6,
	      metal            = 1000,
	      object           = [[wrecks/bflagshipwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Ieyasu Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1750,
	      energy           = 0,
	      footprintX       = 6,
	      footprintZ       = 6,
	      metal            = 500,
	      object           = [[b6x6heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bflagship = unitDef })
