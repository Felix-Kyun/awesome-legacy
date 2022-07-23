local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")

-- widgets 


local help_text = [[
  awesome help widget 
  mod + return -> terminal 
  mod + b      -> browser
]]




local canvas = wibox {
      visible = true,
    height = 100,
    width = 200,
    shape = function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, 10)
    end
}

local widget = wibox.widget {
  text = help_text,
  widget = wibox.widget.textbox
}

canvas : setup {
    widget,
    valign = 'center',
    align = 'center',
    layout = wibox.container.place
}

local button = awful.widget.button()
button:buttons(gears.table.join(
    button:buttons(),
    awful.button({}, 1, nil, function ()
        print("Mouse was clicked")
    end)
))

awful.placement.right(canvas, { margins = {right = 40}, parent = awful.screen.focused()})
