	--Uesugi Class Cruiser Unit Def by Sanada
	--Notes:  Balanced Version 1

	unitDef = {
	  unitname            = [[bbattlecruiser]],
	  name                = [[SK-002 Uesugi Class Cruiser]],
	  description         = [[Battle Cruiser - Pride of the NKG, the battle cruiser is able to punch through even the hardiest of lines.]],
	  acceleration        = 0.15,
	  activateWhenBuilt   = true,
	  airStrafe           = 0,
	  amphibious          = false,
	  brakeRate           = 3.75,
	  buildCostEnergy     = 3000,
	  buildCostMetal      = 3000,
	  builder             = false,
	  buildPic            = [[bbattlecruiser.png]],
	  buildTime           = 80,
	  canAttack           = true,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[CRUISER]],
	  collide             = true,
	  
	  collisionVolumeOffsets = [[0 0 0]],
	  collisionVolumeScales  = [[128 120 300]],
	  collisionVolumeTest    = 1,
	  collisionVolumeType    = [[cylz]],
	  
	  corpse              = [[DEAD]],
	  cruiseAlt           = 300,
	  reclaimable         = false,

	  customParams = {
	  	RequireTech   = [[Commander's Presence]],
	  },
	
	  explodeAs           = [[CRUISER_EXPLOSION]],
	  floater             = true,
	  footprintx          = 8,
	  footprintZ          = 8,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  mass                = 2500,
	  maxDamage           = 6000,
	  maxVelocity         = 3,
	  minAirbasePower     = 1,
	  verticalSpeed       = 30,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS SUB]],
	  objectName          = [[bbattlecruiser.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[CRUISER_EXPLOSION]],
	  showNanoFrame       = false,
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,

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
		"custom:ct_missile_smokecloud",
		"custom:ct_damage_fire",
	    },
	  },

	  turnRate            = 250,
	  upright             = true,
	  script              = [[bbattlecruiser.lua]],
	
	  weapons                = {
	  
	    {
	      def                = [[AA]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
		
	    {
	      def                = [[AA]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
		
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT FIXEDWING GUNSHIP LAND SHIP SWIM HOVER]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
		
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT FIXEDWING GUNSHIP LAND SHIP SWIM HOVER]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT FIXEDWING GUNSHIP LAND SHIP SWIM HOVER]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
		
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT FIXEDWING GUNSHIP LAND SHIP SWIM HOVER]],
	      mainDir            = [[0 1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[0 -1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[0 -1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[0 -1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
		
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP CRUISER SINK FLOAT]],
	      mainDir            = [[0 -1 0]],
	      maxAngleDif        = 220,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP CRUISER HOVER]],
	    },
	
	  },
	
	
	  weaponDefs             = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
		  avoidFeature            = false,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		--No Bonus
		--80 dps (each)
		--240 dps (per side)
		default = 40,
		Cruiser = 40,
		Building = 40,
		Land = 40,
		Aircraft = 40,
		Ship = 40,
		Sub = 40,

		Meteor = 0,
		Drone = 40,
		Spare1 = 40,
		Spare2 = 40,
		Spare3 = 40,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:ct_impact_beamshot_blue]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 750,
	      reloadtime              = 0.5,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 3,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
		
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
		  avoidFeature            = false,
	      avoidFriendly           = true,
	      canattackground         = false,
	      collideFriendly         = false,		  
	      cegtag                  = [[ct_missiletail_aa]],
	      cylinderTargeting       = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		--Anti-Plane
		--20 dps
		--100 dps aircraft
		default = 20,
		Cruiser = 20,
		Building = 20,
		Land = 20,
		Aircraft = 100,
		Ship = 20,
		Sub = 20,

		Meteor = 0,
		Drone = 20,
		Spare1 = 20,
		Spare2 = 20,
		Spare3 = 20,
	      },
	
	      explosionGenerator      = [[custom:ct_impact_missile_aa]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[projectiles/baamissile.s3o]],
	      range                   = 750,
	      reloadtime              = 1,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      texture2                = [[ct_smoketrail]],
	      tracks                  = true,
	      turret                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 900,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Uesugi Class Cruiser]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 3000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 8,
	      footprintZ       = 8,
	      metal            = 1500,
	      object           = [[wrecks/bbattlecruiserwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 45000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Uesugi Class Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1500,
	      energy           = 0,
	      footprintX       = 8,
	      footprintZ       = 8,
	      metal            = 750,
	      object           = [[b8x8heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 22500,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bbattlecruiser = unitDef })
