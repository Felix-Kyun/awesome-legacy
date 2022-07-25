-- for defining key binds for user apps 

local awful = require("awful")
local gears = require("gears")

local modkey = require("config.vars").modkey
local bin = require("config.vars").bin
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

local _M = gears.table.join(
  -- browser {depends: brave}
  awful.key(
  {modkey}, "b",
  function() awful.util.spawn("brave") end,
  {description = "brave", group = "applications"}
  ),
  -- screenshot {depends: scrot}
  awful.key(
  {}, "Print",
  function () awful.spawn.with_shell(bin .. "sscrot")  end,
  {description = "Take ScreenShot", group = "applications"}
  ),
  awful.key(
  {modkey}, "KP_Begin",
  function() awful.util.spawn(bin .. "launcher") end,
  {description = "kp middle", group = "applications"}
  ),
  awful.key(
  {modkey}, "KP_Prior",
  function() awful.util.spawn(bin .. "powermenu") end,
  {description = "kp middle", group = "applications"}
  )
)

return _M
