--ct_explosion_building_medium
--Explosion CEG for medium buildings
--by Sanada

return {
  ["ct_explosion_building_medium"] = {  
	
    pop1 = {
      air                = true,
      class              = [[CHeatCloudProjectile]],
      count              = 2,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
        texture            = [[tpsmoke2]], --uglynovaexplo
		heat               = 10,
		maxheat            = 15,
		heatFalloff        = 0.8,
		
		size               = 2,
		sizeGrowth         = 7,
		
		pos                = [[r-2 r2, 5, r-2 r2]],
		speed              = [[0, 1 0, 0]],
      },
    },
	
    pop2 = {
      air                = true,
      class              = [[CHeatCloudProjectile]],
      count              = 2,
      ground             = true,
      underwater         = 1,
      useairlos          = false,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
        texture            = [[flare]],
		heat               = 10,
		maxheat            = 15,
		heatFalloff        = 0.8,
		
		size               = 2,
		sizeGrowth         = 14,
		
		pos                = [[r-2 r2, 5, r-2 r2]],
		speed              = [[0, 1 0, 0]],
      },
    },
	
    POOF01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
	    airdrag            = 0.8,
        colormap           = [[1.0 1.0 1.0 0.04   0.9 0.5 0.2 0.01  0.8 0.1 0.1 0.01]],
        directional        = 1,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 16,
        particlelife       = 9,
        particlelifespread = 8,
        particlesize       = 15,
        particlesizespread = 0,
        particlespeed      = 5,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.05,
        texture            = [[tpsmoke2]], --flashside1
      },
    },

    POOF02 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
	    airdrag            = 0.95,
        colormap           = [[0.1 0.1 0.1 1.0   0.5 0.4 0.3 1.0      0 0 0 0.0]],
        directional        = 1,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 50, --180
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 7,
        particlesizespread = 3,
        particlespeed      = 1,
        particlespeedspread = 5,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1,
        texture            = [[dirt]],
      },
    },
	
    smokeblack = {
      air                = true,
	  class              = [[smoke]],
	  count              = 15,
	  ground             = true,
	  underwater         = 1,
	  useairlos          = true,
	  water              = true,
	  alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
		color              = 0.1,
		ageSpeed           = 0.01,
		startSize          = 5,
		sizeExpansion      = 0.3,
		size               = 25,
		sizeGrowth         = 7,
		pos                = [[r-60 r60, 24, r-60 r60]],
		speed              = [[r-4 r4, -1.5 r-1, r-4 r4]],
	  },
	},
	
    smokegrey = {
      air                = true,
	  class              = [[smoke]],
	  count              = 15,
	  ground             = true,
	  underwater         = 1,
	  useairlos          = true,
	  water              = true,
	  alwaysVisible      = false,
	  properties = {
        alwaysVisible      = false,
		color              = 0.8,
		ageSpeed           = 0.02,
		startSize          = 5,
		sizeExpansion      = 0.3,
		size               = 25,
		sizeGrowth         = 7,
		pos                = [[r-60 r60, 24, r-60 r60]],
		speed              = [[r-3 r3, 1 r2.3, r-3 r3]],
	  },
	},
	
    ["groundflash"] = {
    
	  alwaysVisible        = 1,
      flashSize            = 128,
      flashAlpha           = 0.9,
      circleGrowth         = 3,
      circleAlpha          = 0.6,
      ttl                  = 10,
      color                = [[1 0.3 0]],
	  air                  = 1,
      ground               = 1,
      water                = 1,
   },
  
  },


}