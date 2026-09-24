Config = {}

Config.allowedVehicles = {
    {
        name = 'police',
        gear = { 'bproof', 'refvest', 'helmet' }
    },
    {
        name = 'policeb',
        gear = { 'refvest', 'helmet' }
    },
    {
        name = 'bearcat',
        gear = { 'bproof', 'heavy', 'refvest', 'helmet' }
    }
}

Config.NotifyDuration = 5 -- seconds

Config.Notify = function(title, desc, type, duration)
    lib.notify({
        title = title,
        description = desc,
        type = type,
        duration = duration
    })
end

Config.Sound = {
    Enable = false,
    Name = "CHALLENGE_UNLOCKED",
    Set = "HUD_AWARDS"
}

-- Del Perro Sands: every law-enforcement job. Fire and EMS get their own list later if they want reflective vests off the rigs.
Config.Authorizedjobs = { 'police', 'bcso', 'sasp', 'fib', 'doc', 'dfw', 'rpd', 'rcso', 'uscg', 'natguard' }

Config.RequireUnlocked = true                -- The car has to be unlocked (your car, or one whose keys you hold).
Config.RequireItems = true                   -- Do the items need to be in the trunk to be equipped
Config.VehicleRestricted = false             -- Any vehicle for now; once the LEO fleet is final, list it in allowedVehicles and flip this on.

Config.BProofAddedArmor = 50                 -- How much bulletproof vest should add armor
Config.HVestAddedArmor = 75                  -- How much heavy armor should add armor
Config.HelmetAddedArmor = 25                 -- How much helmet should add armor (Armor caps at 100)

-- Clothing per gender. Freemode drawables differ between mp_m_freemode_01 and
-- mp_f_freemode_01; one number for both was the upstream bug. The bulletproof
-- vest and helmet are the pairs wasabi_police_v2 already uses for its tactical
-- outfit on this server (verified in game there); heavy and reflective are the
-- upstream male numbers with female values marked TUNE until seen in game.
Config.Gear = {
    bproof = { item = 'armour', male = { 15, 2 }, female = { 17, 2 } },   -- component 9
    heavy  = { item = false,    male = { 20, 0 }, female = { 20, 0 } },   -- component 9, female TUNE
    refvest= { item = false,    male = { 21, 0 }, female = { 21, 0 } },   -- component 9, female TUNE
    helmet = { item = false,    male = { 150, 0 }, female = { 149, 0 } }, -- prop 0
}
-- Set a gear entry to false to disable it, e.g. Config.Gear.heavy = false

-- Kept for the upstream code paths; read through Config.Gear above.
Config.BProofItem = Config.Gear.bproof and Config.Gear.bproof.item
Config.HeavyVestItem = Config.Gear.heavy and Config.Gear.heavy.item
Config.RefVestItem = Config.Gear.refvest and Config.Gear.refvest.item
Config.HelmetItem = Config.Gear.helmet and Config.Gear.helmet.item

Config.Translation = {
    take_armor = "Grab bulletproof vest",
    putting_armor = "Equipping bulletproof vest...",
    took_armor = "You've equipped a bulletproof vest.",

    take_heavy = "Grab heavy vest",
    putting_heavy = "Equipping heavy vest...",
    took_heavy = "You've equipped a heavy vest",
    bproof_taken = "You already have a bulletproof vest.",

    take_refvest = "Grab reflective vest",
    putting_vest = "Putting on reflective vest...",
    took_vest = "You've put on a reflective vest.",

    take_helmet = "Grab bulletproof helmet",
    putting_helmet = "Equipping bulletproof helmet...",
    took_helmet = "You've equipped a bulletproof helmet.",
    helmet_taken = "You already have a bulletproof helmet.",

    remove_vest = "Remove vest",
    removing_vest = "Taking off vest...",
    removed_vest = "You removed your vest.",

    remove_helmet = "Remove helmet",
    removing_helmet = "Taking off helmet...",
    removed_helmet = "You removed your helmet.",

    not_in_trunk = 'Item is not in the trunk',

    notifyTitle = "Gear system"
}
