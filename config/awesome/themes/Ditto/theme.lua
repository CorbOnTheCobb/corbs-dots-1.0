--[[

     Copland Awesome WM theme 2.0
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local APW   = require("apw/widget")
local dpi   = require("beautiful.xresources").apply_dpi
--local widgets = require("awesome-wm-widgets")

local awesome, client, os = awesome, client, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/Ditto"
theme.wallpaper                                 = theme.dir .. "/bestshinybubbiesedit3.png"
theme.font                                      = "Jetbrains Mono 14"
theme.fg_normal                                 = "#7aa2ff" --"#BBBBBB"
theme.fg_focus                                  = "#7aa2ff"
theme.bg_normal                                 = "#282a36"--"#1a1b26"
theme.bg_focus                                  = "#282a36"--"#282a36"--"#1a1b26"
theme.fg_urgent                                 = "#000000"
theme.bg_urgent                                 = "#FFFFFF"
theme.border_width                              = dpi(0)
theme.border_normal                             = "#141414"
theme.border_focus                              = "#93B6FF"
theme.taglist_fg_focus                          = "#FFFFFF"
theme.taglist_bg_focus                          = "#DDDDFF00"--"#1a1b26"
theme.taglist_bg_normal                         = "#DDDDFF00"--"#1a1b26"
theme.titlebar_bg_normal                        = "#191919"
theme.titlebar_bg_focus                         = "#262626"
theme.menu_height                               = dpi(16)
theme.menu_width                                = dpi(130)
theme.tasklist_disable_icon                     = false
theme.awesome_icon                              = theme.dir .."/icons/awesome.png"
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
--theme.taglist_squares_sel                       = theme.dir .. "/icons/square_unsel.png"
--theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.vol                                       = theme.dir .. "/icons/vol.png"
theme.vol_low                                   = theme.dir .. "/icons/vol_low.png"
theme.vol_no                                    = theme.dir .. "/icons/vol_no.png"
theme.vol_mute                                  = theme.dir .. "/icons/vol_mute.png"
theme.disk                                      = theme.dir .. "/icons/disk.png"
theme.ac                                        = theme.dir .. "/icons/ac.png"
theme.bat                                       = theme.dir .. "/icons/bat.png"
theme.bat_low                                   = theme.dir .. "/icons/bat_low.png"
theme.bat_no                                    = theme.dir .. "/icons/bat_no.png"
theme.play                                      = theme.dir .. "/icons/play.png"
theme.pause                                     = theme.dir .. "/icons/pause.png"
theme.stop                                      = theme.dir .. "/icons/stop.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.useless_gap                               = 0
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.tasklist_font                         = "Terminus 0.0"

-- lain related
theme.layout_centerfair                         = theme.dir .. "/icons/centerfair.png"
theme.layout_termfair                           = theme.dir .. "/icons/termfair.png"
theme.layout_centerwork                         = theme.dir .. "/icons/centerwork.png"

local markup = lain.util.markup
local blue   = theme.fg_focus
local red    = "#EB8F8F"
local green  = "#8FEB8F"

-- Textclock
--os.setlocale(os.getenv("LANG")) -- to localize the clock
local mytextclock = wibox.widget{
    widget = wibox.widget.textclock("<span font='Terminus 5'> </span>%H:%M "),
    align = 'center',
    }
mytextclock.font = theme.font

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { mytextclock },
    notification_preset = {
        font = "Terminus 11",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- Mail IMAP check
--[[ to be set before use
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        mail  = ""
        count = ""

        if mailcount > 0 then
            mail = "<span font='Terminus 5'> </span>Mail "
            count = mailcount .. " "
        end

        widget:set_markup(markup(blue, mail) .. count)
    end
})
--]]

-- MPD
local mpdicon = wibox.widget.imagebox()
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            title = mpd_now.title
            artist  = " " .. mpd_now.artist  .. markup("#777777", " <span font='Terminus 2'> </span>|<span font='Terminus 5'> </span>")
            mpdicon:set_image(theme.play)
        elseif mpd_now.state == "pause" then
            title = "mpd "
            artist  = "paused" .. markup("#777777", " |<span font='Terminus 5'> </span>")
            mpdicon:set_image(theme.pause)
        else
            title  = ""
            artist = ""
            mpdicon._private.image = nil
            mpdicon:emit_signal("widget::redraw_needed")
            mpdicon:emit_signal("widget::layout_changed")
        end

        widget:set_markup(markup.font(theme.font, markup(blue, title) .. artist))
    end
})

-- Battery
local baticon = wibox.widget.imagebox(theme.bat)
local batbar = wibox.widget {
    forced_height    = dpi(1),
    forced_width     = dpi(59),
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = dpi(6),
    widget           = wibox.widget.progressbar,
}
local batupd = lain.widget.bat({
    settings = function()
        if (not bat_now.status) or bat_now.status == "N/A" or type(bat_now.perc) ~= "number" then return end

        if bat_now.status == "Charging" then
            baticon:set_image(theme.ac)
            if bat_now.perc >= 98 then
                batbar:set_color(green)
            elseif bat_now.perc > 50 then
                batbar:set_color(theme.fg_normal)
            elseif bat_now.perc > 15 then
                batbar:set_color(theme.fg_normal)
            else
                batbar:set_color(red)
            end
        else
            if bat_now.perc >= 98 then
                batbar:set_color(green)
            elseif bat_now.perc > 50 then
                batbar:set_color(theme.fg_normal)
                baticon:set_image(theme.bat)
            elseif bat_now.perc > 15 then
                batbar:set_color(theme.fg_normal)
                baticon:set_image(theme.bat_low)
            else
                batbar:set_color(red)
                baticon:set_image(theme.bat_no)
            end
        end
        batbar:set_value(bat_now.perc / 100)
    end
})
local batbg = wibox.container.background(batbar, "#474747", gears.shape.rectangle)
local batwidget = wibox.container.margin(batbg, dpi(2), dpi(7), dpi(4), dpi(4))

-- /home fs
--[[ commented because it needs Gio/Glib >= 2.54
local fsicon = wibox.widget.imagebox(theme.disk)
local fsbar = wibox.widget {
    forced_height    = dpi(1),
    forced_width     = dpi(59),
    color            = theme.fg_normal,
    background_color = theme.bg_normal,
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = dpi(6),
    widget           = wibox.widget.progressbar,
}
theme.fs = lain.widget.fs {
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Terminus 10.5" },
    settings  = function()
        if fs_now["/home"].percentage < 90 then
            fsbar:set_color(theme.fg_normal)
        else
            fsbar:set_color("#EB8F8F")
        end
        fsbar:set_value(fs_now["/home"].percentage / 100)
    end
}
local fsbg = wibox.container.background(fsbar, "#474747", gears.shape.rectangle)
local fswidget = wibox.container.margin(fsbg, dpi(2), dpi(7), dpi(4), dpi(4))
--]]

--[[ ALSA volume bar
local volicon = wibox.widget.imagebox(theme.vol)
theme.volume = lain.widget.alsabar {
    width = dpi(60), border_width = 0, ticks = true, ticks_size = dpi(4),
    notification_preset = { font = theme.font },
    --togglechannel = "IEC958,3",
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.vol_mute)
        elseif volume_now.level == 0 then
            volicon:set_image(theme.vol_no)
        elseif volume_now.level <= 50 then
            volicon:set_image(theme.vol_low)
        else
            volicon:set_image(theme.vol)
        end
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = red,
        unmute       = theme.fg_normal
    }
}
--]]

local volume_widget = require('awesome-wm-widgets.volume-widget.volume')

-- Memory Widget
local mem = lain.widget.mem({settings = function() widget:set_markup(markup.font(theme.font, " ??? " .. mem_now.used .. "MB ")) end})

-- CPU Usage Widget
local cpu = lain.widget.cpu({settings = function() widget:set_markup(markup.font(theme.font, " ??? " .. cpu_now.usage .. "% ")) end })

-- CPU Temperature Widget
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, " ??? " .. coretemp_now .. "??C "))
    end
})

--[[theme.volume.tooltip.wibox.fg = theme.fg_focus
theme.volume.bar:buttons(my_table.join (
          awful.button({}, 1, function()
            awful.spawn(string.format("%s -e alsamixer", awful.util.terminal))
          end),
          awful.button({}, 2, function()
            os.execute(string.format("%s set %s 100%%", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 3, function()
            os.execute(string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 4, function()
            os.execute(string.format("%s set %s 1%%+", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 5, function()
            os.execute(string.format("%s set %s 1%%-", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end)
))
local volumebg = wibox.container.background(theme.volume.bar, "#474747", gears.shape.rectangle)
local volumewidget = wibox.container.margin(volumebg, dpi(2), dpi(7), dpi(4), dpi(4))
--]]
-- Weather
--[[ to be set before use
theme.weather = lain.widget.weather({
    --APPID =
    city_id = 2643743, -- placeholder (London)
})
--]]

--{{{ APW
theme.apw_fg_color = {type = 'linear', from = {0, 0}, to={40,0},
	stops={{0, "#CC8888"}, {.4, "#88CC88"}, {.8, "#8888CC"}}}
theme.apw_bg_color = "#333333"
theme.apw_mute_fg_color = "#CC9393"
theme.apw_mute_bg_color = "#663333"
--}}}

-- Separators
local first     = wibox.widget.textbox(markup.font("Terminus 3", " "))
local spr       = wibox.widget.textbox(' ')
local small_spr = wibox.widget.textbox(markup.font("Terminus 4", " "))
local bar_spr   = wibox.widget.textbox(markup.font("Terminus 10", " ") .. markup.fontfg(theme.font, "#0077ff", " ") .. markup.font("Terminus 10", " "))
local beeg_spr  = wibox.widget.textbox('                                ')
local volsym    = wibox.widget.textbox(markup.font("Jetbrains Mono 15", ' ??? '))

-- Wireless Widget
--net_wireless = net_widgets.wireless({interface="wlp1s0"})

-- Net
--local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, " ??? " .. net_now.received .. " ?????? " .. net_now.sent .. " "))
    end
})

local systray = wibox.widget {
    {
        wibox.widget.systray(),
        left    = 0,
        top     = 2,
        bottom  = 3,
        right   = 0,
        widget  = wibox.container.margin,
    },
    bg          = theme.bg_normal,
    shape       = function(cr, width, height) gears.shape.rounded_rect(cr, width, height, 0) end,
    shape_clip  = true,
    widget      = wibox.container.background,
}

-- Eminent-like task filtering
local orig_filter = awful.widget.taglist.filter.all

--[[ Taglist label functions
awful.widget.taglist.filter.all = function (t, args)
    if t.selected or #t:clients() > 0 then
        return orig_filter(t, args)
    end
end
--]]
function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    --s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create a tasklist widget
    local tasklist = wibox.widget {
        bg = theme.bg_normal,
        fg = theme.fg_normal,
        shape = function(cr, width, height)
            gears.shape.rounded_rect(cr, width, height, 15)
        end,
        widget = wibox.container.background,
        {
            widget = wibox.container.margin,
            left = 0,
            right = 0,
            top = 6,
            bottom = 6,
            {
                widget = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons),
            },
        },
    }

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(36), bg = "#282a36BB", fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --spr,
            --spr,
            --bar_spr,
            spr,
            s.mylayoutbox,
            spr,
            spr,
            spr,
            first,
            --bar_spr,
            s.mytaglist,
            first,
            s.mypromptbox,
            bar_spr,
            --[[tasklist,
            bar_spr,
            beeg_spr,
            beeg_spr,
            beeg_spr,
            beeg_spr,
            beeg_spr,
            beeg_spr,
            beeg_spr,
            beeg_spr,
            beeg_spr,
            bar_spr,
            bar_spr,
            bar_spr,
            spr,
            spr,
            spr,
            spr,
            spr, --]]
        },
        --{
            --layout = wibox.layout.flex.horizontal,
            mytextclock,
        --},
        { -- Right widgets 
            layout = wibox.layout.fixed.horizontal,
            --systray,
            small_spr,
            --bar_spr,
            --net,
            --theme.mail.widget,
            mpdicon,
            theme.mpd.widget,
            --baticon,
            --batwidget,
            bar_spr,
            --net_wireless,
            --fsicon,
            --fswidget,
            --bar_spr,
            cpu,
            bar_spr,
            mem,
            bar_spr,
            temp,
            spr,
            spr,
            spr,
            spr,
            volsym,
            volume_widget{
                widget_type = 'horizontal_bar',
                device = 'pulse'
            },
            --APW,
            --bar_spr,
            --mytextclock,
            --spr,
            --bar_spr,
            --spr,
            spr,
            spr,
            spr,
        },
    }
end

return theme
