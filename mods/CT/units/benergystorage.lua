unitDef = {

  unitname                      = [[benergystorage]],
  name                          = [[Power Storage Facility]],
  description                   = [[Power Storage - Stores excess power, to use later.  Increases energy stockpile by 500.]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 150,
  buildCostMetal                = 150,
  builder                       = false,

  buildPic                      = [[benergystorage.png]],
  buildTime                     = 40,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyStorage                 = 500,
  explodeAs                     = [[ESTOR_BUILDINGEX]],
  footprintX                    = 2,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  levelGround                   = true,
  mass                          = 75,
  maxDamage                     = 750,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[benergystorage.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[ESTOR_BUILDINGEX]],
  side                          = [[NKG]],
  sightDistance                 = 250,
  smoothAnim                    = true,
  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oo oo oo oo]],
  script                        = [[benergystorage.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Power Storage]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 8000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Power Storage]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b2x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ benergystorage = unitDef })
