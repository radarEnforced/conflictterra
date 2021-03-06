    --Armor Defs


    local armorDefs = {

        Cruiser  =  {
            --NKG--


            --combat cruisers
            "bprimarycruiser",
            "bflagship",
            "bmissilecruiser",
            "bbattlecruiser",
            "btransportcruiser",

            --economy cruisers
            "bsupplydepotmobile",

            --factory cruisers
            "bmechcruiser",
            "btankcruiser",
            "baircruiser",
        },


        Building  =  {
            --NKG--


            --landed cruisers
            --T1
            "bprimarycruiserbase",
            "bprimarycruiserbaseai",
            "bsupplydepot",
            "bsupplydepotai",
            "bmechcruiserfactory",
            "btankcruiserfactory",
            "baircruiserfactory",

            --economy buildings
            "bmex",
            "bpowerplant",
            "badvpowerplant",
            "bseapowerplant",

            --defenses
            --T1
            "bantitankmine",
            "bcameratower",
            "bradartower",
            "bjammertower",
            "blandturret",
            "bairturret",
            "blandnavalturret",
            "bgatlingturret",
            "bsearadartower",
            "btorpedoturret",
            --T2
            "badvlandturret",
            "badvairturret",
            "badvlandnavalturret",
            "badvgatlingturret",
            "badvsearadartower",
            "badvtorpedoturret",

            --factory
            --T1
            "bbeacon",
			"brepairstation",
            "bshipyard",


            --DRONE--


            "kgrounddronestructure",
            "kdroneminingtower",
            "kairdronestructure",   
        },

        Land  =  {
            --NKG--


            --T1
            --Mech Cruiser
            "bengineer",
            "bengineerai",
            "bminer",
            "bscoutmech",
            "bbasicmech",
            "bmissilemech",
            "bminemech",
            "bsnipermech",
            "bacemech",
            
            --Tank Cruiser
            "bscoutvehicle",
            "bassaulttank",
            "baabuggy",
            "breztruck",
            "bartillery",
            "bgeneraltank",         
            --T2
            --Mech Cruiser
            "bassaultmech",
            "bheavymissilemech",
            "bheavyassaultmech",
            
            --Tank Cruiser
            "bheavyassaulttank",
            "bbarragetank",
            "bvhsamobile",
			"bvhsadeployed",


            --DRONE--


            "kdroneengineer",
            "kdronewarrior",
            "klightdrone",
            "kdroneroller",
            "ktridroneroller",
			
			
			--PNF--
			
			
			"pncommander",
        },

        Aircraft = {
            --NKG--


            --flying mechs
            "bflyingmech",
            "bheavyflyingmech",

            --aircraft
            "bscoutplane",
            "bfighter",
            "blaserplane",
            "brocketplane",
            "bbomber",


            --DRONE--


            "kairdrone",
            "kdiairdrone",
            "ktriairdrone",


            --PNF--

            --T1
            "pnfighter",        
        },

        Ship = {
            --NKG--


            "bseaengineer1",
            "bseaengineer2",
            "bbattleship",
            "brocketbattleship",
            "bartilleryship",
            "baaship",
            "bradarship",
        },

        Sub = {
            --NKG--


            "bsubmarine",
        }, 


        Drone = {
        },

        Spare1 = {
        },

        Spare2 = {
        },

        Spare3 = {
        },

        Meteor = {
            "ctmeteorimpact",
            "ctmeteorimpact_big",
            "ctminerals",
        },


    }

    for categoryName, categoryTable in pairs(armorDefs) do
        local t = {}
        for _, unitName in pairs(categoryTable) do
            t[unitName] = 1
        end
        armorDefs[categoryName] = t
    end

    return armorDefs
