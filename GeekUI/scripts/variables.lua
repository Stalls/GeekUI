------------------------------
-- Global variables for Geekui
------------------------------

-- Init a few global arrays
G_Geekui = { }
_Geekui = { }

-- Init a few generic datasets
_Geekui.dummy = function() return end
_Geekui.myName = select(1,UnitClass("player"))
_Geekui.myClass = select(2,UnitClass("player"))
_Geekui.level = UnitLevel("player")
_Geekui.resolution = GetCurrentResolution()