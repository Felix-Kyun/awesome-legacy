-- fix this file, should only have content for moving aroud in workspaces 
local gears = require("gears")
local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local modkey = require("config.vars").modkey

local _M = gears.table.join(
  awful.key(
  {modkey}, "s",
  hotkeys_popup.show_help,
  {description = "show help", group = "awesome"}
  ),
  awful.key(
  {modkey}, "Left",
  awful.tag.viewprev,
  {description = "view previous", group = "tag"}
  ),
  awful.key(
  {modkey}, "Right",
  awful.tag.viewnext,
  {description = "view next", group = "tag"}
  ),
  awful.key(
  {modkey}, "Escape",
  awful.tag.history.restore,
  {description = "go back", group = "tag"}
  ),
  awful.key({modkey}, "j",
  function () awful.client.focus.byidx( 1) end,
  {description = "focus next by index", group = "client"}
  ),
  awful.key(
  {modkey}, "k",
  function () awful.client.focus.byidx(-1) end,
  {description = "focus previous by index", group = "client"}
  ),
  awful.key(
  {modkey}, "w",
  function () mymainmenu:show() end,
  {description = "show main menu", group = "awesome"}
  )
)

return _M
