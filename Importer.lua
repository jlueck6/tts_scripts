
bagGuid = "d39ae3"


-- Lukerazor export format has no stats, and linking profiles for BS is probably going to be a pain in the ass
-- make all the profiles and costs here

vehicleStats={
    { name="Buggy", weight=1, hull=6, handling=4, maxGear=6, slots=2, crew=2, abilities="Roll Cage", cans=6 },
    { name="Car", weight=2, hull=10, handling=3, maxGear=5, slots=2, crew=2, abilities="", cans=12 },
    { name="Performance Car", weight=2, hull=8, handling=4, maxGear=6, slots=2, crew=1, abilities="Slip Away", cans=15 },
    { name="Truck", weight=2, hull=12, handling=2, maxGear=4, slots=3, crew=3, abilities="", cans=15 },
    { name="Heavy Truck", weight=3, hull=14, handling=2, maxGear=3, slots=5, crew=4, abilities="", cans=25 },
    { name="Bus", weight=3, hull=16, handling=2, maxGear=3, slots=3, crew=8, abilities="", cans=30 },
    { name="Drag Racer", weight=1, hull=4, handling=4, maxGear=6, slots=2, crew=1, abilities="Jet Engine", cans=5 },
    { name="Ice Cream Truck", weight=2, hull=10, handling=2, maxGear=4, slots=2, crew=2, abilities="Infuriating Jingle", cans=8 },
    { name="Bike", weight=1, hull=4, handling=5, maxGear=6, slots=1, crew=1, abilities="Full Throttle. Pivot", cans=5 },
    { name="Bike with Sidecar", weight=1, hull=4, handling=5, maxGear=6, slots=2, crew=2, abilities="Full Throttle. Pivot", cans=8 },
    { name="Gyrocopter", weight=2, hull=4, handling=4, maxGear=6, slots= 0, crew=1, abilities="Airwolf. Airborne. Bombs Away", cans=10 },
    { name="Ambulance", weight=2, hull=12, handling=2, maxGear=5, slots=3, crew=3, abilities="Uppers. Downers", cans=20 },
    { name="Monster Truck", weight=3, hull=10, handling=3, maxGear=4, slots=2, crew=2, abilities="All Terrain. Up And Over", cans=25 },
    { name="Helicopter", weight=3, hull=8, handling=3, maxGear=4, slots=4, crew=2, abilities="Airwolf. Airborne. Bombs Away", cans=30 },
    { name="Tank", weight=3, hull=20, handling=4, maxGear=3, slots=4, crew=3, abilities="All Terrain. Up And Over. Pivot. Turret", cans=40 },
    { name="War Rig", weight=3, hull=26, handling=2, maxGear=4, slots=5, crew=5, abilities="See War Rig rules", cans=40 }
}

weaponStats = {
    { name="Handgun", type="Shooting", attack="1D6", range="Medium", ammo=0, slots=0, rules=", Crew Fired. Blitz", cans=0 },
    { name="Machine Gun", type="Shooting", attack="2D6", range="Double", ammo=0, slots=1, rules="", cans=2 },
    { name="Heavy Machine Gun", type="Shooting", attack="3D6", range="Double", ammo=0, slots=1, rules=" ", cans=3 },
    { name="Mini-Gun", type="Shooting", attack="4D6", range="Double", ammo=0, slots=1, rules="", cans=5 },
    { name="125mm Cannon", type="Shooting", attack="8D6", range="Double", ammo=3, slots=3, rules="Blast. +2 hazards if not Tank", cans=6 },
    { name="Arc Lightning Projector", type="Shooting", attack="6D6", range="Double", ammo=1, slots=2, rules="See rules", cans=6 },
    { name="Bazooka", type="Shooting", attack="3D6", range="Double", ammo=3, slots=2, rules="Blast", cans=4 },
    { name="BFG", type="Shooting", attack="10D6", range="Double", ammo=1, slots=3, rules="See rules", cans=1 },
    { name="Combat Laser", type="Shooting", attack="3D6", range="Double", ammo=0, slots=1, rules="Splash", cans=5 },
    { name="Death Ray", type="Shooting", attack="3D6", range="Double", ammo=1, slots=1, rules="See rules", cans=3 },
    { name="Flamethrower", type="Shooting", attack="6D6", range="Large, Burst", ammo=3, slots=2, rules="Splash. Fire. Indirect", cans=4 },
    { name="Grabber Arm", type="Shooting", attack="3D6", range="Short", ammo=0, slots=1, rules="See rules", cans=6 },
    { name="Grav Gun", type="Shooting", attack="3D6*", range="Double", ammo=1, slots=1, rules=", Electrical. See rules", cans=2 },
    { name="Harpoon", type="Shooting", attack="5D6*", range="Double", ammo=0, slots=1, rules="See rules", cans=2 },
    { name="Kinetic Super Booster", type="Shooting", attack="6D6", range="Double", ammo=1, slots=2, rules="Gear +1 instead of damage", cans=6 },
    { name="Magnetic Jammer", type="Shooting", attack="-", range="Double", ammo=0, slots=0, rules="Target can't use Ammo next activation", cans=2 },
    { name="Mortar", type="Shooting", attack="4D6", range="Double", ammo=3, slots=1, rules="Indirect", cans=4 },
    { name="Rockets", type="Shooting", attack="6D6", range="Double", ammo=3, slots=2, rules="", cans=6 },
    { name="Thumper", type="Shooting", attack="-", range="Medium", ammo=1, slots=2, rules="Electrical. See rules", cans=4 },
    { name="Wall Of Amplifiers", type="Shooting", attack="-", range="Medium", ammo=0, slots=3, rules="See rules", cans=4 },
    { name="Wreck Lobber", type="Shooting", attack="-", range="Double/Dropped", ammo=3, slots=4, rules="See rules", cans=4 },
    { name="Blunderbuss", type="Shooting", attack="2D6", range="Small, Burst", ammo=0, slots=0, rules="Crew Fired. Splash", cans=4 },
    { name="Gas Grenades", type="Shooting", attack="1D6", range="Medium", ammo=5, slots=0, rules="Crew Fired. Indirect. Blitz. See rules", cans=1 },
    { name="Grenades", type="Shooting", attack="1D6", range="Medium", ammo=5, slots=0, rules="Crew Fired. Blast. Indirect. Blitz", cans=1 },
    { name="Magnum", type= "Shooting", attack="1D6", range="Double", ammo=0, slots=0, rules="Crew Fired. Blast", cans=3 },
    { name="Molotov Cocktails", type="Shooting", attack="1D6", range="Medium", ammo=5, slots=0, rules="Crew Fired. Fire. Indirect. Blitz", cans=1 },
    { name="Shotgun", type="Shooting", attack="3/2/1D6", range="Long", ammo=0, slots=0, rules="Crew Fired. See Rules", cans=2 },
    { name="Steel Nets", type="Shooting", attack="3D6", range="Short", ammo=0, slots=0, rules="Crew Fired. Blast. Does no damage, ", cans=2 },
    { name="Submachine Gun", type="Shooting", attack="3D6", range="Medium", ammo=0, slots=0, rules="Crew Fired", cans=5 },
    { name="Caltrop Dropper", type=", Dropped", attack="2D6", range="Small, Burst", ammo=3, slots=1, rules="Treacherous. Remove after collision", cans=1 },
    { name="Glue Dropper", type=", Dropped", attack="-", range="Large, Burst", ammo=1, slots=1, rules="Treacherous. Gear, -2", cans=1 },
    { name="Mine Dropper", type=", Dropped", attack="4D6", range="Small, Burst", ammo=3, slots=1, rules="Blast. Remove after collision", cans=1 },
    { name="Napalm Dropper", type=", Dropped", attack="4D6", range="Small, Burst", ammo=3, slots=1, rules="Fire. Remove after collision", cans=1 },
    { name="Oil Slick Dropper", type=", Dropped", attack="-", range="Large, Burst", ammo=3, slots=0, rules="Treacherous", cans=2 },
    { name="RC Car Bombs", type=", Dropped", attack="4D6", range="Short", ammo=3, slots=0, rules="See rules", cans=3 },
    { name="Sentry Gun", type=", Dropped", attack="2D6", range="Dropped", ammo=3, slots=0, rules="See rules", cans=3 },
    { name="Smoke Dropper", type=", Dropped", attack="-", range="Large, Burst", ammo=3, slots=0, rules="Provides, cover", cans=1 },
    { name="Wrecking Ball", type="", attack="*", range="Short", ammo=0, slots=3, rules="See rules", cans=3 }
}

upgradeStats = {
    {name="Armour Plating", slots=1, cans=4},
    {name="Experimental Nuclear Engine", slots=0, cans=5},
    {name="Experimental Teleporter", slots=0, cans=7},
    {name="Extra Crewmember", slots=0, cans=4},
    {name="Improvised Sludge Thrower", slots=1, cans=2},
    {name="Nitro Booster", slots=0, cans=6},
    {name="Roll Cage", slots=1, cans=4},
    {name="Tank tracks", slots=1, cans=4},
    {name="Prison Vehicle", slots=0, cans=-4},
    {name="Louder Siren", slots=0, cans=2},
    {name="MicroPlate Armour", slots=0, cans=6}
}

perkStats = {
    {name="Double-Barrelled", cans=2},
    {name="Boarding Party", cans=2},
    {name="Battlehammer", cans=4},
    {name="Terrifying Lunatic", cans=5},
    {name="Grinderman", cans=5},
    {name="Murder Tractor", cans=5},
    {name="Powder Keg", cans=1},
    {name="Crowd Pleaser", cans=1},
    {name="Road Warrior", cans=2},
    {name="Cover Me", cans=2},
    {name="Madman", cans=3},
    {name="Bullet-Time", cans=3},
    {name="Dead Weight", cans=2},
    {name="Barrel Roll", cans=2},
    {name="Bruiser", cans=4},
    {name="Splashback", cans=5},
    {name="Crusher", cans=7},
    {name="Feel No Pain", cans=8},
    {name="Chrome-Whisperer", cans=2},
    {name="Slippery", cans=3},
    {name="Handbreak Artist", cans=3},
    {name="Evasive", cans=5},
    {name="Powerslide", cans=5},
    {name="Stunt Driver", cans=7},
    {name="Purifying Flames", cans=1},
    {name="Ecstatic Visions", cans=1},
    {name="Sympathy For The Devil", cans=1},
    {name="Highway To Hell", cans=2},
    {name="Violent Manifestation", cans=3},
    {name="Angel of Death", cans=4},
    {name="Dead-Eye", cans=2},
    {name="Loader", cans=2},
    {name="Fully Loaded", cans=2},
    {name="Rapid Fire", cans=2},
    {name="Headshot", cans=4},
    {name="Return Fire", cans=5},
    {name="Mister Fahrenheit", cans=2},
    {name="Moment of Glory", cans=2},
    {name="Restraint", cans=2},
    {name="Expertise", cans=3},
    {name="Trick Driving", cans=3},
    {name="Easy Rider", cans=5},
    {name="On Your Tail", cans=2},
    {name="Schadenfreude", cans=2},
    {name="Taunt", cans=2},
    {name="Out Run", cans=2},
    {name="PIT", cans=4},
    {name="Unnerving Eye Contact", cans=5},
    {name="Drive Angry", cans=1},
    {name="Hog Wild", cans=2},
    {name="In For A Penny", cans=2},
    {name="Don't Come Knocking", cans=4},
    {name="Bigger'n You", cans=4},
    {name="Beerserker", cans=5},
    {name="Hot Start", cans=1},
    {name="Slipstream", cans=2},
    {name="Overload", cans=2},
    {name="Downshift", cans=3},
    {name="Time Extended!", cans=3},
    {name="Hell For Leather", cans=5},
    {name="Rocket Thrusters", cans=1},
    {name="Whizbang", cans=1},
    {name="Gyroscope", cans=1},
    {name="Satellite Navigation", cans=2},
    {name="Mobile Mechanic", cans=3},
    {name="Eureka!", cans=4},
    {name="Fenderkiss", cans=2},
    {name="Rear Drive", cans=2},
    {name="Delicate Touch", cans=3},
    {name="Momentum", cans=3},
    {name="Purring", cans=6},
    {name="Skiing", cans=6},
}

checkboxes = {
    --[[
    pos   = the position (pasted from the helper tool)
    size  = height/width/font_size for checkbox
    state = default starting value for checkbox (true=checked, false=not)
    ]]
    -- {
    --     pos   = {0.767,0.1,0.482},
    --     size  = 500,
    --     state = false
    -- },
    -- {
    --     pos   = {0.119,0.1,0.469},
    --     size  = 500,
    --     state = false
    -- }
  }

  buttons = {
    {
        pos   = {-0.403,0.1,0.732},
        height  = 500,
        width = 2000,
        funcName = "ImportCars",
        label = "Import"
    }

  }

  textbox = {
    {
        pos       = {0,0.1,-0.446},
        rows      = 12,
        width     = 10000,
        font_size = 500,
        label     = "Paste Your List Here",
        value     = "",
        alignment = 2
    },
  }
  --Set this to true while editing and false when you have finished
  disableSave = true
  --Remember to set this to false once you are done making changes
  --Then, after you save & apply it, save your game too

  --Color information for button text (r,g,b, values of 0-1)
  buttonFontColor = {0,0,0}
  --Color information for button background
  buttonColor = {1,1,1}
  --Change scale of button (Avoid changing if possible)
  buttonScale = {0.1,0.1,0.1}
  --Checks or unchecks the given box
  function click_checkbox(tableIndex, buttonIndex)

    checkboxes[tableIndex].state = not checkboxes[tableIndex].state
    local label = checkboxes[tableIndex].state and string.char(10008) or ""
    self.editButton({index=buttonIndex, label=label})

    -- updateSave()
  end

-- Used to get stuff out of the stat maps
function findByName(name, list)
    for _,v in ipairs(list) do
      if v.name == name then
          return v
      end
    end
end

function mysplit (inputstr, sep)
  if sep == nil then
          sep = "%s"
  end
  local t={}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
          table.insert(t, str)
  end
  return t
end


--Vehicle Lua table schema for the dashboard
--Some of these are future-proofing for things the dash doesn't use now
-- Should be commented in production, uncommented for coding so I can collapse things, lol
-- vehicleSchema = {
--     name="Vehicle 1",
--     type="Car",
--     sponsor="Rutherford",
--     teamName="Some clever name",
--     weight=2,
--     hull=10,
--     handling=3,
--     maxGear=5,
--     slots=2,
--     crew=2,
--     abilities="",
--     cans=25, -- It's the importer's job to tally this up
--     weapons={
--         {
--             name="Magnum",
--             facing="360",
--             location="Cab",
--             type="Shooting",
--             attack="1D6",
--             range="Medium",
--             ammo=0,
--             slots=0,
--             cans=3,
--             rules="Crew Fired. Blast"
--         }
--     },
--     upgrades={
--       {
--           name="Armour Plating"
--       }
--     },
--     trailer=0,
--     cargo=0,
--     perks={
--         {
--           name="Powder Keg"
--         },
--         {
--           name="Road Warrior"
--         }
--     }
-- }


function parseLRVehicle(v, team)

    local vClass = findByName(v.vehicleType, vehicleStats)

    -- Ugly as hell, but easier to debug than the constructor, lol
    local vehicle = {}
    vehicle.name=v.vehicleName
    vehicle.type=v.vehicleType
    vehicle.sponsor=team.sponsor
    vehicle.teamName = team.teamName
    vehicle.weight=vClass.weight
    vehicle.hull=vClass.hull
    vehicle.handling=vClass.handling
    vehicle.maxGear=vClass.maxGear
    vehicle.slots=vClass.slots
    vehicle.crew=vClass.crew
    abilities=vClass.abilities
    vehicle.cans=vClass.cans -- this gets updated as we parse
    vehicle.trailer=0
    vehicle.weapons={}
    vehicle.upgrades={}
    vehicle.perks={}

    for i, weapon in ipairs(v.weapons) do
        local w=findByName(weapon.weaponType, weaponStats)

        table.insert(vehicle.weapons, {
            name=w.name,
            facing=weapon.facing,
            location=weapon.location,
            type=w.type,
            attack=w.attack,
            range=w.range,
            ammo=w.ammo,
            slots=w.slots,
            cans=w.cans,
            rules=w.rules
        })
        vehicle.cans = vehicle.cans + w.cans
    end


    for i, perk in ipairs(v.perks) do
        local p = findByName(perk.perkType, perkStats)
        table.insert(vehicle.perks, {
            name = p.name,
            cans = p.cans
        })
        vehicle.cans = vehicle.cans + p.cans
    end

    for i, upgrade in ipairs(v.upgrades) do
        local u = findByName(upgrade.upgradeType, upgradeStats)
        table.insert(vehicle.upgrades, {
            name = u.name,
            cans = u.cans,
            slots=u.slots
        })
        vehicle.cans = vehicle.cans + u.cans
    end

    vehicle = adjustStats(vehicle)

    return vehicle

end


function adjustStats(v)
    for i, perk in ipairs(v.perks) do 
        if perk.name == "Expertise" then
            v.handling = v.handling + 1
        end
    end

    for i, upgrade in ipairs(v.upgrades) do
        if upgrade.name == "Armour Plating" then
            v.hull = v.hull + 2

        elseif upgrade.name == "Experimental Nuclear Engine" then 
            if v.maxGear <= 4 then 
                v.maxGear = v.maxGear + 2
            else 
                v.maxGear = 6
            end

        elseif upgrade.name == "Extra Crewmember" then
            v.crew = v.crew + 1

        elseif upgrade.name == "Tank tracks" then
            v.maxGear = v.maxGear - 1
            v.handling = v.handling + 1

        elseif upgrade.name == "Prison Vehicle" then
            v.hull = v.hull - 2

        elseif uprade.name == "MicroPlate Armour" then 
            v.hull = v.hull + 2
        end
    end

    for i, weapon in ipairs(v.weapons) do
        if v.sponsor == "Rutherford" then 
            if weapon.ammo == 3 then
                weapon.ammo = 4
            end
        end
    end

    return v  

end


function spawnDash(i, callback)
  local bag = getObjectFromGUID(bagGuid)
  local dashboard = bag.takeObject({callback_function=callback, position={0,10,0}})
end

function ImportCars()
  if (text == nil or text == '') then
      print("Please paste in a team list")
      return
  end

  importLukerazor()


end

  -- TODO BS is a mess compared to LR for export formats, put a pin in it for now
  function importBattlescribe()
    local lines = mysplit(text, "\n")
    for i, line in ipairs(lines) do
      -- print("line " .. line)
      -- TODO gross workaround for now, need something to find the  [ ]
      if string.match(line, "Car") then
          --print("Car " ..line)
          local object = spawnObjectJSON({
              json = [[{
                  "Name": "Die_6",
                  "Transform": {
                    "posX": 0,
                    "posY": 3                    "posZ": 0,
                    "rotX": 0,
                    "rotY": 180,
                    "rotZ": 0,
                    "scaleX": 2,
                    "scaleY": 2,
                    "scaleZ": 2
                },
                "ColorDiffuse": {
                    "r": 0.3,
                    "g": 0.5,
                    "b": 0.8
                }
              }]],
              callback_function = function(spawned_object)
                  log(spawned_object.getBounds())
              end
          })
        end
    end
  end

  function importLukerazor()
    db = JSON.decode(text)
    team = db.teams[1]
    vehicleExports = {}
    -- first load it all up
    for i, vehicle in ipairs(team.vehicles) do
      vehicleExports[i] = parseLRVehicle(vehicle, team)
      spawnDash( i,
        function(dashboard)
          dashboard.call("loadVehicle", {vehicle=vehicleExports[i]})
        end
      )
    end
  end
  --Makes checkboxes
  function createCheckbox()
      for i, data in ipairs(checkboxes) do
          --Sets up reference function
          local buttonNumber = spawnedButtonCount
          local funcName = "checkbox"..i
          local func = function() click_checkbox(i, buttonNumber) end
          self.setVar(funcName, func)
          --Sets up label
          local label = ""
          if data.state==true then label=string.char(10008) end
          --Creates button and counts it
          self.createButton({
              label=label, click_function=funcName, function_owner=self,
              position=data.pos, height=data.size, width=data.size,
              font_size=data.size, scale=buttonScale,
              color=buttonColor, font_color=buttonFontColor
          })
          spawnedButtonCount = spawnedButtonCount + 1
      end
  end

  function createButtons()
    for i, data in ipairs(buttons) do

        --Creates button and counts it
        self.createButton({
            label=data.label, click_function=data.funcName, function_owner=self,
            position=data.pos, height=data.height, width=data.width,
            font_size=data.height, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end

  end


  --Updates saved value for given text box
  function click_textbox(i, value, selected)
      text = value
  end

  function createTextbox()
      for i, data in ipairs(textbox) do
          --Sets up reference function
          local funcName = "textbox"..i
          local func = function(_,_,val,sel) click_textbox(i,val,sel) end
          self.setVar(funcName, func)

          self.createInput({
              input_function = funcName,
              function_owner = self,
              label          = data.label,
              alignment      = data.alignment,
              position       = data.pos,
              scale          = buttonScale,
              width          = data.width,
              height         = (data.font_size*data.rows)+24,
              font_size      = data.font_size,
              color          = buttonColor,
              font_color     = buttonFontColor,
              value          = data.value,
          })
      end
  end

  --Startup procedure
  function onload(saved_data)
      if disableSave==true then saved_data="" end
      if saved_data ~= "" then
          local loaded_data = JSON.decode(saved_data)
          ref_buttonData = loaded_data
      else
          ref_buttonData = defaultButtonData
      end

      spawnedButtonCount = 0
      createCheckbox()
      createButtons()
      -- createCounter()
      createTextbox()
  end