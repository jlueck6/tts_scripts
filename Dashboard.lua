--[[    Character Sheet Template    by: MrStump

You can set up your own character sheet if you follow these steps.

Step 1) Change the character sheet image
    -Right click on the character sheet, click Custom
    -Replace the image URL with one for your character sheet
    -Click import, make sure your sheet loads
    -SAVE THE GAME (the table setup)
    -LOAD FROM THAT SAVE YOU JUST MADE

Step 2) Edit script to fit your character sheet
    -Below you will see some general options, and then the big data table
    -The data table is what determines how many of which buttons are made
        -Checkboxes
        -Counters
        -Textboxes
    -By default, there are 3 of each. You can add more or remove entries
    -If you intend to add/remove, be sure only to add/remove ENTRIES
        -This is what an entry looks like:
            {
                pos   = {-0.977,0.1,-0.589},
                size  = 800,
                state = false
            },
        -Deleting the whole thing would remove that specific item on the sheet
        -Copy and pasting it after another entry would create another
    -Each entry type has unique data points (pos, size, state, etc)
        -Do not try to add in your own data points or remove them individually
        -There is a summary of what each point does at the top of its category

Step 3) Save and check script changes
    -Hit Save & Apply in the script window to save your code
    -You can edit your code as needed and Save+Apply as often as needed
    -When you are finished, make disableSave = false below then Save+apply
        -This enables saving, so your sheet will remember whats on it.

Bonus) Finding/Editing Positions for elements
    I have included a tool to get positions for buttons in {x,y,z} form
    Place it where you want the center of your element to be
    Then copy the table from the notes (lower right of screen)
        You can highlight it and CTRL+C
    Paste it into the data table where needed (pos=)
    If you want to manually tweek the values:
        {0,0,0} is the center of the character sheet
        {1,0,0} is right, {-1,0,0} is left
        {0,0,-1} is up, {0,0,1} is down
        0.1 for Y is the height off of the page.
            If it was 0, it would be down inside the model of the sheet

Begin editing below:    ]]

--Set this to true while editing and false when you have finished
disableSave = false
--Remember to set this to false once you are done making changes
--Then, after you save & apply it, save your game too

--Color information for button text (r,g,b, values of 0-1)
buttonFontColor = {0,0,0}
--Color information for button background
buttonColor = {1,1,1}
--Change scale of button (Avoid changing if possible)
buttonScale = {0.1,0.1,0.1}
inputIdx = 0
indexMap = {}
tableMap = {}
--This is the button placement information
defaultButtonData = {
    --Add checkboxes
    checkbox = {
        --[[
        pos   = the position (pasted from the helper tool)
        size  = height/width/font_size for checkbox
        state = default starting value for checkbox (true=checked, false=not)
        ]]
        --Hull 16
        {
            pos   = {2.062,0.1,-1.380},
            size  = 650,
            state = false,
            name =  "cbHull16"

        },
        --Hull 15
        {
            pos   = {2.062,0.1,-1.193},
            size  = 650,
            state = false
        },
        --Hull 14
        {
            pos   = {2.062,0.1,-1.004},
            size  = 650,
            state = false
        },
        --Hull 13
        {
            pos   = {2.062,0.1,-0.817},
            size  = 650,
            state = false
        },
        --Hull 12
        {
            pos   = {2.062,0.1,-0.632},
            size  = 650,
            state = false
        },
        --Hull 11
        {
            pos   = {2.062,0.1,-0.443},
            size  = 650,
            state = false
        },
        --Hull 10
        {
            pos   = {2.062,0.1,-0.256},
            size  = 650,
            state = false
        },
        --Hull 9
        {
            pos   = {2.062,0.1,-0.070},
            size  = 650,
            state = false
        },
        --Hull 8
        {
            pos   = {2.062,0.1,0.120},
            size  = 650,
            state = false
        },
        --Hull 7
        {
            pos   = {2.062,0.1,0.306},
            size  = 650,
            state = false
        },
        --Hull 6
        {
            pos   = {2.062,0.1,0.493},
            size  = 650,
            state = false
        },
        --Hull 5
        {
            pos   = {2.062,0.1,0.681},
            size  = 650,
            state = false
        },
        --Hull 4
        {
            pos   = {2.062,0.1,0.868},
            size  = 650,
            state = false
        },
        --Hull 3
        {
            pos   = {2.062,0.1,1.055},
            size  = 650,
            state = false
        },
        --Hull 2
        {
            pos   = {2.062,0.1,1.243},
            size  = 650,
            state = false
        },
        --Hull 1
        {
            pos   = {2.062,0.1,1.430},
            size  = 650,
            state = false,
            hideBG = true
        },
        --End of checkboxes
    },
    --Add counters that have a + and - button
    counter = {
        --[[
        pos    = the position (pasted from the helper tool)
        size   = height/width/font_size for counter
        value  = default starting value for counter
        hideBG = if background of counter is hidden (true=hidden, false=not)
        ]]
        --Handling
        {
            pos    = {0.842,0.1,-1.071},
            size   = 900,
            value  = 0,
            hideBG = true,
            name   = "cHandling"
        },
        --Crew
        {
            pos    = {1.244,0.1,-1.071},
            size   = 900,
            value  = 0,
            hideBG = true,
            name   = "cCrew"
        },
        --Max Gear
        {
            pos    = {1.645,0.1,-1.071},
            size   = 900,
            value  = 0,
            hideBG = true,
            name   = "cMaxGear"
        },
        --Current Gear
        {
            pos    = {1.725,0.1,0.403},
            size   = 1200,
            value  = 0,
            hideBG = true,
            name   = "cCurrentGear"
        },
        --Hazards
        {
            pos    = {1.724,0.1,0.965},
            size   = 1200,
            value  = 0,
            hideBG = true,
            name   = "cHazards"
        },
        --End of counters
    },
    --Add editable text boxes
    textbox = {
        --[[
        pos       = the position (pasted from the helper tool)
        rows      = how many lines of text you want for this box
        width     = how wide the text box is
        font_size = size of text. This and "rows" effect overall height
        label     = what is shown when there is no text. "" = nothing
        value     = text entered into box. "" = nothing
        alignment = Number to indicate how you want text aligned
                    (1=Automatic, 2=Left, 3=Center, 4=Right, 5=Justified)
        ]]
        --Vehicle Name
        {
            pos       = {-1.266,0.1,-1.375},
            rows      = 1,
            width     = 8400,
            font_size = 500,
            label     = "Name",
            value     = "",
            alignment = 2,
            name      = "tbVName"
        },
        --Vehicle Type
        {
            pos       = {0.216,0.1,-1.375},
            rows      = 1,
            width     = 5000,
            font_size = 500,
            label     = "Vehicle type",
            value     = "",
            alignment = 2,
            name      = "tbVType"
        },
        --Weight
        {
            pos       = {1.095,0.1,-1.375},
            rows      = 1,
            width     = 2600,
            font_size = 500,
            label     = "L/M/H",
            value     = "",
            alignment = 3,
            name      = "tbVWeight"
        },
        --Cost
        {
            pos       = {1.644,0.1,-1.375},
            rows      = 1,
            width     = 1850,
            font_size = 500,
            label     = "cans",
            value     = "",
            alignment = 3,
            name      = "tbVCans"
        },
        --Team Name
        {
            pos       = {-1.375,0.1,-1.073},
            rows      = 1,
            width     = 7340,
            font_size = 500,
            label     = "The name of your group.",
            value     = "",
            alignment = 2,
            name      = "tbVTName"
        },
        --Sponsor
        {
            pos       = {-0.011,0.1,-1.073},
            rows      = 1,
            width     = 5000,
            font_size = 500,
            label     = "unsponsored",
            value     = "",
            alignment = 2,
            name      = "tbVSponsor"
        },
        -- The Big blocks of text are all beyond this point

        --The giant fuck of the weapons table lies here, pray for your soul
        --Weapon Name 1
        {
            pos       = {-1.668,0.1,-0.735},
            rows      = 2,
            width     = 4490,
            font_size = 450,
            label     = "weapon 1/2",
            value     = "",
            alignment = 2,
            name      = "tbWName1"
        },
        --Weapon Type 1
        {
            pos       = {-0.986,0.1,-0.735},
            rows      = 2,
            width     = 1930,
            font_size = 450,
            label     = "shooting",
            value     = "",
            alignment = 3,
            name      = "tbWType1"
        },
        --Weapon Attack 1
        {
            pos       = {-0.577,0.1,-0.735},
            rows      = 2,
            width     = 1855,
            font_size = 450,
            label     = "xd6",
            value     = "",
            alignment = 3,
            name      = "tbWAttack1"
        },
        --Weapon Range 1
        {
            pos       = {-0.172,0.1,-0.735},
            rows      = 2,
            width     = 1880,
            font_size = 450,
            label     = "Med/Dbl/Burst",
            value     = "",
            alignment = 3,
            name      = "tbWRange1"
        },
        --Weapon Facing 1
        {
            pos       = {0.205,0.1,-0.735},
            rows      = 2,
            width     = 1600,
            font_size = 450,
            label     = "Front/360/Side",
            value     = "",
            alignment = 3,
            name      = "tbWFace1"
        },
        --Weapon Special 1
        {
            pos       = {0.976,0.1,-0.735},
            rows      = 2,
            width     = 5650,
            font_size = 450,
            label     = "e.g. Fire, Ammo, Indirect Etc.",
            value     = "",
            alignment = 2,
            name      = "tbWSpec1"
        },
        --Weapon Slots 1
        {
            pos       = {1.662,0.1,-0.735},
            rows      = 2,
            width     = 800,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWSlots1"
        },
        --Weapon Cans 1
        {
            pos       = {1.838,0.1,-0.735},
            rows      = 2,
            width     = 805,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWCans1"
        },

        --Weapon Name 2
        {
            pos       = {-1.668,0.1,-0.538},
            rows      = 2,
            width     = 4490,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 2,
            name      = "tbWName2"
        },
        --Weapon Type 2
        {
            pos       = {-0.986,0.1,-0.538},
            rows      = 2,
            width     = 1930,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWType2"
        },
        --Weapon Attack 2
        {
            pos       = {-0.577,0.1,-0.538},
            rows      = 2,
            width     = 1855,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWAttack2"
        },
        --Weapon Range 2
        {
            pos       = {-0.172,0.1,-0.538},
            rows      = 2,
            width     = 1880,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWRange2"
        },
        --Weapon Facing 2
        {
            pos       = {0.205,0.1,-0.538},
            rows      = 2,
            width     = 1600,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWFace2"
        },
        --Weapon Special 2
        {
            pos       = {0.976,0.1,-0.538},
            rows      = 2,
            width     = 5650,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 2,
            name      = "tbWSpec2"
        },
        --Weapon Slots 2
        {
            pos       = {1.662,0.1,-0.538},
            rows      = 2,
            width     = 800,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWSlots2"
        },
        --Weapon Cans 2
        {
            pos       = {1.838,0.1,-0.538},
            rows      = 2,
            width     = 805,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWCans2"
        },

        --Weapon Name 3
        {
            pos       = {-1.668,0.1,-0.340},
            rows      = 2,
            width     = 4490,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 2,
            name      = "tbWName3"
        },
        --Weapon Type 3
        {
            pos       = {-0.986,0.1,-0.340},
            rows      = 2,
            width     = 1930,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWType3"
        },
        --Weapon Attack 3
        {
            pos       = {-0.577,0.1,-0.340},
            rows      = 2,
            width     = 1855,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWAttack3"
        },
        --Weapon Range 3
        {
            pos       = {-0.172,0.1,-0.340},
            rows      = 2,
            width     = 1880,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWRange3"
        },
        --Weapon Facing 3
        {
            pos       = {0.205,0.1,-0.340},
            rows      = 2,
            width     = 1600,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWFace3"
        },
        --Weapon Special 3
        {
            pos       = {0.976,0.1,-0.340},
            rows      = 2,
            width     = 5650,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 2,
            name      = "tbWSpec3"
        },
        --Weapon Slots 3
        {
            pos       = {1.662,0.1,-0.340},
            rows      = 2,
            width     = 800,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWSlots3"
        },
        --Weapon Cans 3
        {
            pos       = {1.838,0.1,-0.340},
            rows      = 2,
            width     = 805,
            font_size = 450,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWCans3"
        },

        --Weapon Name 4
        {
            pos       = {-1.668,0.1,-0.160},
            rows      = 2,
            width     = 4490,
            font_size = 380,
            label     = "-",
            value     = "",
            alignment = 2,
            name      = "tbWName4"
        },
        --Weapon Type 4
        {
            pos       = {-0.986,0.1,-0.160},
            rows      = 2,
            width     = 1930,
            font_size = 380,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWType4"
        },
        --Weapon Attack 4
        {
            pos       = {-0.577,0.1,-0.160},
            rows      = 2,
            width     = 1855,
            font_size = 380,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWAttack4"
        },
        --Weapon Range 4
        {
            pos       = {-0.172,0.1,-0.160},
            rows      = 2,
            width     = 1880,
            font_size = 380,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWRange4"

        },
        --Weapon Facing 4
        {
            pos       = {0.205,0.1,-0.160},
            rows      = 2,
            width     = 1600,
            font_size = 380,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbWFace4"
        },
        --Weapon Special 4
        {
            pos       = {0.976,0.1,-0.160},
            rows      = 2,
            width     = 5650,
            font_size = 380,
            label     = "-",
            value     = "",
            alignment = 2,
            name      = "tbWSpec4"
        },
        --Weapon Slots 4
        {
            pos       = {1.662,0.1,-0.160},
            rows      = 2,
            width     = 800,
            font_size = 380,
            label     = "-",
            value     = "-",
            alignment = 3,
            name      = "tbWSlots4"
        },
        --Weapon Cans 4
        {
            pos       = {1.838,0.1,-0.160},
            rows      = 2,
            width     = 805,
            font_size = 380,
            label     = "-",
            value     = "-",
            alignment = 3,
            name      = "tbWCans4"
        },

        --Just perks and Upgrades past here

        --Perks
        {
            pos       = {-0.4400,0.1,0.425},
            rows      = 9,
            width     = 16300,
            font_size = 360,
            label     = "Vehicle Perks",
            value     = "",
            alignment = 2,
            name      = "tbPerks"
        },
        --Perk Costs
        {
            pos       = {1.360,0.1,0.425},
            rows      = 9,
            width     = 850,
            font_size = 360,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbPCans"
        },

        --Upgrades
        {
            pos       = {-0.518,0.1,1.245},
            rows      = 8,
            width     = 15550,
            font_size = 360,
            label     = "Vehicle Upgrades",
            value     = "",
            alignment = 2,
            name      = "tbUpgrades"
        },
        --Upgrades Slots
        {
            pos       = {1.195,0.1,1.245},
            rows      = 8,
            width     = 800,
            font_size = 360,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbUSlots"
        },
        --Upgrades Cans
        {
            pos       = {1.370,0.1,1.245},
            rows      = 8,
            width     = 800,
            font_size = 360,
            label     = "-",
            value     = "",
            alignment = 3,
            name      = "tbUCans"
        },
        --ID number this will hopefully be used to link vehicles with the sheet at some point
        {
            pos       = {1.725,0.1,1.425},
            rows      = 1,
            width     = 1450,
            font_size = 420,
            label     = "-",
            value     = "",
            alignment = 2,
            name      = "tbGuid"
        },
        --End of textboxes
    }
}



--Lua beyond this point, I recommend doing something more fun with your life



--Save function
function updateSave()
    saved_data = JSON.encode(ref_buttonData)
    if disableSave==true then saved_data="" end
    self.script_state = saved_data
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
    hullCount = 0
    maxHull = 0
    spawnedButtonCount = 0
    createCheckbox()
    createCounter()
    createTextbox()
end



--Click functions for buttons



--Checks or unchecks the given box
function click_checkbox(tableIndex, buttonIndex)

    ref_buttonData.checkbox[tableIndex].state = not ref_buttonData.checkbox[tableIndex].state

    label = ref_buttonData.checkbox[tableIndex].state and string.char(10008) or ""
    self.editButton({index=buttonIndex, label=label})

    countHull()
    updateOverlay()
    updateSave()
end

--Applies value to given counter display
function click_counter(tableIndex, buttonIndex, amount)
    ref_buttonData.counter[tableIndex].value = ref_buttonData.counter[tableIndex].value + amount
    self.editButton({index=buttonIndex, label=ref_buttonData.counter[tableIndex].value})
    updateOverlay()
    updateSave()
end

--Updates saved value for given text box
function click_textbox(i, value, selected)
    if selected == false then
        ref_buttonData.textbox[i].value = value
        updateOverlay()
        updateSave()
    end
end

--Dud function for if you have a background on a counter
function click_none() end



--Button creation


hullCbIndex = 0
hullTableIndex =0
--Makes checkboxes
function createCheckbox()
    for i, data in ipairs(ref_buttonData.checkbox) do

        if data.name == "cbHull16" then
            hullCbIndex=spawnedButtonCount
            hullTableIndex =i
        end
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

--Makes counters
function createCounter()
    for i, data in ipairs(ref_buttonData.counter) do
        --Sets up display
        local displayNumber = spawnedButtonCount
        --Sets up label
        local label = data.value
        --Sets height/width for display
        local size = data.size
        if data.hideBG == true then size = 0 end
        --Creates button and counts it
        self.createButton({
            label=label, click_function="click_none", function_owner=self,
            position=data.pos, height=size, width=size,
            font_size=data.size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        if data.name != nil and data.name != '' then
          indexMap[data.name] = spawnedButtonCount
          tableMap[data.name] = i
        end
        spawnedButtonCount = spawnedButtonCount + 1


        --Sets up add 1
        local funcName = "counterAdd"..i
        local func = function() click_counter(i, displayNumber, 1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "+"
        --Sets up position
        local offsetDistance = (data.size/2 + data.size/4) * (buttonScale[1] * 0.002)
        local pos = {data.pos[1] + offsetDistance, data.pos[2], data.pos[3]}
        --Sets up size
        local size = data.size / 2
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1

        --Sets up subtract 1
        local funcName = "counterSub"..i
        local func = function() click_counter(i, displayNumber, -1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "-"
        --Set up position
        local pos = {data.pos[1] - offsetDistance, data.pos[2], data.pos[3]}
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end
end

function createTextbox()
    --print "load tb"
    for i, data in ipairs(ref_buttonData.textbox) do
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
        if data.name != nil and data.name != '' then
          indexMap[data.name] = inputIdx
          tableMap[data.name] = i
        end
        inputIdx = inputIdx + 1
    end
end

weights={"L","M","H"}


--Vehicle Lua table schema for the dashboard
--Some of these are future-proofing for things the dash doesn't use now
-- Should be commented in production, uncommented for coding so I can collapse things, lol
vehicleSchema = {
    name="Vehicle 1",
    type="Car",
    sponsor="Rutherford",
    teamName="Some clever name",
    weight=2,
    hull=10,
    handling=3,
    maxGear=5,
    slots=2,
    crew=2,
    abilities="",
    cans=25, -- It's the importer's job to tally this up
    weapons={
        {
            name="Magnum",
            facing="360",
            location="Cab",
            type="Shooting",
            attack="1D6",
            range="Medium",
            ammo=0,
            slots=0,
            cans=3,
            rules="Crew Fired. Blast"
        }
    },
    upgrades={
      {
          name="Armour Plating"
      }
    },
    trailer=0,
    cargo=0,
    perks={
        {
          name="Powder Keg"
        },
        {
          name="Road Warrior"
        }
    }
}


function numOrDash(num)
    return (num == 0 and "-") or num
end


function loadCounter(name, value)
    ref_buttonData.counter[tableMap[name]].value = value

    self.editButton({index=indexMap[name], label=value})
end


function loadTextbox(name, value)
    ref_buttonData.textbox[tableMap[name]].value = value
    self.editInput({index=indexMap[name], value= value})
end

-- Note that this is a nasty magic number trick
-- should be evergreen, but wouldn't be if the Hull declarations were interrupted
function loadHull(value)
    local hullToClick = 16 - value
    for i=0, hullToClick-1, 1 do
        ref_buttonData.checkbox[hullTableIndex + i].state = true
        self.editButton({index=hullCbIndex+i, label=string.char(10008)})
    end
end

function countHull()
    for i=0, 15, 1 do
        local box = self.getButtons()[hullCbIndex + 1 + i].label
        if box == "" then
            hullCount = 16-i
            break
        end
    end
end

function updateOverlay()
    local guid = self.getInputs()[indexMap["tbGuid"]+1].value

    local obj = getObjectFromGUID(guid)
    if obj != nil then

        local name = self.getInputs()[indexMap["tbVName"]+1].value

        obj.setName(name)

        local hull = "Hull: "..hullCount .. "/" .. maxHull


        local cGear = self.getButtons()[indexMap["cCurrentGear"]+1].label
        local mGear = self.getButtons()[indexMap["cMaxGear"]+1].label


        local gear = "Gear: " .. cGear .. "/" .. mGear

        local hCount = self.getButtons()[indexMap["cHazards"]+1].label
        local hazards = "Hazards: " .. hCount

        obj.setDescription( hull .. "\r\n" .. gear .. "\r\n" .. hazards)
    end
end


function loadVehicle(params)
    --print("load start")

    local v = params.vehicle

    loadTextbox("tbVName", v.name)
    loadTextbox("tbVType", v.type)
    loadTextbox("tbVWeight", weights[v.weight])
    loadTextbox("tbVCans", v.cans)
    loadTextbox("tbVTName", v.teamName)
    loadTextbox("tbVSponsor", v.sponsor)

    -- Now do the counters
    loadCounter("cCurrentGear", 1)
    loadCounter("cHandling", v.handling)
    loadCounter("cCrew", v.crew)
    loadCounter("cMaxGear", v.maxGear)

    loadHull(v.hull)
    maxHull = v.hull



    -- Determine if we have a trailer, as it affects how weapons display
    hasTrailer = v.trailer != 0
    --print("loaded statics")


    -- Iterate through the weapons
    for i,w in ipairs(v.weapons) do
        -- TODO maybe share weapon lines, but 4 is kind of a lot.
        -- For now, don't, probably better to just split the textboxes anyhow
        if i > 4 then
            break
        end

        local name = w.name
        if hasTrailer then
            name = name .. " (" .. w.location ..")"
        end
        loadTextbox("tbWName"..i, name)


        -- TODO Type box is being commandeered for Ammo, as it's a stat people actually use
        loadTextbox("tbWType"..i, ammo)
        loadTextbox("tbWAttack"..i, w.attack)
        loadTextbox("tbWRange"..i, w.range)
        loadTextbox("tbWFace"..i, w.facing)
        loadTextbox("tbWSpec"..i, w.rules)

        local slots = numOrDash(w.slots)
        loadTextbox("tbWSlots"..i, slots)
        local cans = numOrDash(w.cans)
        loadTextbox("tbWCans"..i, cans)
    end

    local perkNames = " "
    local perkCans = " "
    for i, p in ipairs(v.perks) do
        perkNames = perkNames..p.name.."\r\n"
        perkCans = perkCans..p.cans.."\r\n"
    end
    loadTextbox("tbPerks", perkNames)
    loadTextbox("tbPCans", perkCans)


    local upgradeNames = ""
    local upgradeSlots = ""
    local upgradeCans = ""
    for i, u in ipairs(v.upgrades) do
        upgradeNames = upgradeNames..u.name.."\r\n"
        upgradeSlots = upgradeSlots..u.slots.."\r\n"
        upgradeCans  = upgradeCans..u.cans.."\r\n"
    end

    loadTextbox("tbUpgrades", upgradeNames)
    loadTextbox("tbUSlots", upgradeSlots)
    loadTextbox("tbUCans", upgradeCans)
    updateSave()
    countHull()
    -- Iterate through the upgrades

    -- Iterate through the perks

end