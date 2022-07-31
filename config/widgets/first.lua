local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")

-- widgets 


local help_text = [[
    TODO 
 [ ] awesome config rewrite
 [ ] nvim conifg 
 [ ] polybar
 [ ] rofi scripts
 [ ] fix keybinds
 [ ] enforce nord 
 [ ] fix console font
 [ ] and color
 [ ] lockscreen 
 
    LEARN
 [ ] nvim
 [ ] lua
 [ ] git 

    BUILD
 [ ] revanced 
 [ ] tglib
 [x] kitty

]]


local canvas = wibox {
    visible = true,
    height = 300,
    width = 200,
--    opacity = 0.6,
    shape = function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, 0)
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
