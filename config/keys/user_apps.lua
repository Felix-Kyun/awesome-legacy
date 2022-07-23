-- for defining key binds for user apps 

local awful = require("awful")
local gears = require("gears")

local modkey = require("config.vars").modkey
local bin = require("config.vars").bin
--[[ 

Template For Defining Key Binding 
  `awful.key() <- $modkey, "key", function(), {about}`

  Example: 
  awful.key(
  {modkey}, "b",
  function() awful.util.spawn("brave") end,
  {description = "brave", group = "applications"}
  )

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
  )
)

return _M
