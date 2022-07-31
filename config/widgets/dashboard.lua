local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")


local canvas = wibox {
    visible = true,
    height = 300,
    width = 200,
    opacity = 0.6,
    shape = function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, 0)
    end
}
local widget = wibox.wibox{

}

canvas : setup {
    widget,
    valign = 'center',
    align = 'center',
    layout = wibox.container.place
}

awful.placement.right(canvas, { margins = {right = 40}, parent = awful.screen.focused()})
