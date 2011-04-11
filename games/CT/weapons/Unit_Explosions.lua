--------------------------------------------------------------------------------

unitDeaths = {

CAMERA_EXPLOSION = {
   name = "Camera Tower Explosion",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=8,
--   soundstart="golgotha/generic.wav",
--   soundhit="golgotha/generic.wav",
--   explosiongenerator="custom:FACTORY_EXPLOSION_SMALL",
	      damage                  = {
		Cruiser = 10,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,
	      },
  },

SMALL_BUILDING = {
   name = "Small building",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=205,
   soundstart="golgotha/generic.wav",
   soundhit="golgotha/generic.wav",
   explosiongenerator="custom:FACTORY_EXPLOSION_SMALL",
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,
	      },
  },

MEDIUM_BUILDING = {
   name="Medium building",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=325,
   soundstart="golgotha/generic.wav",
   soundhit="golgotha/generic.wav",
   explosiongenerator="custom:FACTORY_EXPLOSION_MEDIUM",
	      damage                  = {
		Cruiser = 150,
		Building = 150,
		Mech = 150,
		Tank = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,
	      },
  },

LARGE_BUILDING = {

   name="Large building",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=400,
   soundstart="golgotha/generic.wav",
   soundhit="golgotha/generic.wav",
   explosiongenerator="custom:FACTORY_EXPLOSION",
	      damage                  = {
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,
	      },
  },

VOLATILE_BUILDING = {
   name="Volatile building",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=420,
   soundstart="golgotha/generic.wav",
   soundhit="golgotha/generic.wav",
   explosiongenerator="custom:FACTORY_EXPLOSION",
	      damage                  = {
		Cruiser = 1000,
		Building = 1000,
		Mech = 1000,
		Tank = 1000,
		Aircraft = 1000,
		Ship = 1000,
		Sub = 1000,
	      },
  },

SMALL_UNIT = {

   name="Small Unit",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=75,
   soundstart="golgotha/old_generic.wav",
   soundhit="golgotha/old_generic.wav",

   explosiongenerator="custom:SMALL_UNIT_Expl",
	      damage                  = {
		Cruiser = 50,
		Building = 50,
		Mech = 50,
		Tank = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,
	      },
  },


MEDIUM_UNIT = {

   name="Medium Unit",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=95,
   soundstart="golgotha/old_generic.wav",
   soundhit="golgotha/old_generic.wav",
   explosiongenerator="custom:SMALL_UNIT_Expl",
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,
	      },
  },



BIG_UNIT = {

   name="Big Unit",
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=110,
   soundstart="golgotha/old_generic.wav",
   soundhit="golgotha/old_generic.wav",
   explosiongenerator="custom:MED_UNIT_Expl",
	      damage                  = {
		Cruiser = 150,
		Building = 150,
		Mech = 150,
		Tank = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,
	      },
  },

  ROCK_IMPACT_SMALL = {

   name="Small Unit",
   craterMult=1000,
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=200,
   soundstart="golgotha/old_generic.wav",
   soundhit="golgotha/old_generic.wav",

   explosiongenerator="custom:SMALL_UNIT_Expl",
	      damage                  = {
		Cruiser = 50,
		Building = 50,
		Mech = 50,
		Tank = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,
	      },
  },

ROCK_IMPACT_BIG = {

   name="Large building",
   rendertype=4,
   craterMult=4000,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=400,
   soundstart="golgotha/generic.wav",
   soundhit="golgotha/generic.wav",
   explosiongenerator="custom:FACTORY_EXPLOSION",
	      damage                  = {
		Cruiser = 200,
		Building = 200,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,
	      },
  },
  
  LIGHT_MINE = {

   name="Small Unit",
   craterMult=2000,
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 0,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=75,
   soundstart="golgotha/old_generic.wav",
   soundhit="golgotha/old_generic.wav",

   explosiongenerator="custom:SMALL_UNIT_Expl",
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,
	      },
  },
  
    DRONE_PETARD = {

   name="Drone Petard",
   collideFriendly=0,
   craterMult=1,
   rendertype=4,
   ballistic=1,
   turret=1,
   impulseFactor      = 1,
   range=480,
   reloadtime=3.6,
   weaponvelocity=250,
   areaofeffect=400,  -- "Range" of explosion"
   soundstart="golgotha/old_generic.wav",
   soundhit="golgotha/old_generic.wav",

   explosiongenerator="custom:SMALL_UNIT_Expl",
	      damage                  = {
		Cruiser = 300,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 200,
		Ship = 10,
		Sub = 10,
	      },
  },
}

return lowerkeys(unitDeaths)
