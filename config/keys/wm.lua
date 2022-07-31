-- window Manager Related Key Binds

local awful = require("awful")
local gears = require("gears")

local modkey = require("config.vars").modkey
local bin = require("config.vars").bin
local terminal = require("config.vars").terminal

--[[ 

Template For Defining Key Binding 
  `awful.key() <- $modkey, "key", function(), {about}`

  Example: 

  # style 1 
  awful.key(
  {modkey}, "b",
  function() awful.util.spawn("brave") end,
  {description = "brave", group = "applications"}
  )

  # style 2 
  awful.key{
    modifiers   = {mod.super},
    key         = 's',
    description = 'show help',
    group       = 'awesome',
    on_press    = hotkeys_popup.show_help,
  }

--]]
local control = "Control"

local _M = gears.table.join(

-- keypad {{
-- row 1
  awful.key(
  {modkey}, "KP_Home",
  function() awful.util.spawn(bin .. "mpdmenu") end,
  {description = "Launch Mpd Menu", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey}, "KP_Up",
  function() awful.util.spawn(bin .. "launcher") end,
  {description = "Launch Launcher", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey}, "KP_Prior",
  function() awful.util.spawn(bin .. "powermenu") end,
  {description = "Launch Power Menu", group = "Keypad Shortcuts"}
  ),
-- row 2 
  awful.key(
  {modkey}, "KP_Left",
  function() awful.client.focus.byidx( -1) end,
  {description = "", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey}, "KP_Begin",
  function() awful.util.spawn(bin .. "kitten") end,
  {description = "", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey}, "KP_Right",
  function() awful.client.focus.byidx( 1) end,
  {description = "", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey, "Shift"}, "KP_Left",
  function() awful.client.swap.byidx( -1)  end,
  {description = "", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey, "Shift"}, "KP_Begin",
  awful.client.urgent.jumpto,
  {description = "", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey, "Shift"}, "KP_Right",
  function() awful.client.swap.byidx(  1) end,
  {description = "", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey, control}, "KP_Left",
  function() awful.tag.incmwfact(-0.05) end,
  {description = "", group = "Keypad Shortcuts"}
  ),
  awful.key(
  {modkey, control}, "KP_Right",
  function() awful.tag.incmwfact( 0.05) end,
  {description = "", group = "Keypad Shortcuts"}
--[[
  ),
-- row 3
  awful.key(
  {modkey}, "KP_",
  function() awful.util.spawn("") end,
  {description = "", group = "Keypad Shortcuts"}
--]]
  )

  --}}

)

return _M

--[[
 # notes
 -- keypad numbers
  {
    { 7, 8, 9 },
    { 4, 5, 6 },
    { 1, 2, 3 },
  }

 -- keypad naming 
 {
   { Home, Up, Prior },
   { Left, Begin, Right },
   { End, Down, Next },
 }

 -- actual mapping
 {
   {mpdmenu, launcher, powermenu},
   { , terminal, }
 }

--]]
