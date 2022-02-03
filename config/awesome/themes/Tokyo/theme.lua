--[[

     Corb's Bubble Theme (Used PowerArrow-Dark Theme as a base)
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/Tokyo"
theme.wallpaper                                 = "~/.config/awesome/themes/Tokyo/wallpapers/sushi.jpg"
theme.font                                      = "Jetbrains Mono 11"
theme.fg_normal                                 = "#414868"
theme.fg_focus                                  = "#fefefe"
theme.fg_urgent                                 = "#0077ff"
theme.bg_normal                                 = "#98971a"
theme.bg_focus                                  = "#0077ff00"
theme.bg_urgent                                 = "#414868"
theme.bg_systray                                = "#d79921"--"#689d6a"
theme.border_width                              = dpi(0)
theme.border_normal                             = "#0077ff"
theme.border_focus                              = "#dfdfdf"
theme.border_marked                             = "#0077ff"
theme.tasklist_bg_focus                         = "#98971a"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = dpi(16)
theme.menu_width                                = dpi(140)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
--theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
--theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
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
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = false
theme.useless_gap                               = dpi(0)
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

theme.extracolor1                               = "#44bbff"
theme.extracolor2                               = "#0044ff"
theme.lightpurpur                               = "#0077ff"
theme.purpur                                    = "#0060ff"
theme.bbg                                       = "#282828" --"#414868"
theme.red     = "#fb4934" --"#f7768e"
theme.green   = "#98971a"--"#9ece6a"
theme.yellow  = "#d79921"--"#e0af68"
theme.blue    = "#458588"--"#7aa2f7"
theme.magenta = "#b16286"--"#bb9af7"
theme.cyan    = "#689d6a"--"#7dcfff"

local markup = lain.util.markup
local separators = lain.util.separators

local keyboardlayout = awful.widget.keyboardlayout:new()

-- Textclock
--local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = wibox.widget {
    bg = theme.red,
    fg = theme.fg_normal,
    shape = function(cr, width, height)
        gears.shape.rounded_rect(cr, width, height, 15)
    end,
    widget = wibox.container.background,
    {    
        widget = awful.widget.textclock('<span color="#dedede" font="Jetbrains Mono 11"> %H:%M </span>', 5),
    },
}
-- Other version that wasn't EXACTLY what I was looking for. Commented out because it's effectively deprecated.
--local clock = wibox.widget {
--    {
--        wibox.widget.textclock,
--        left    = 5,
--        top     = 2,
--        bottom  = 2,
--        right   = 5,
--        widget  = wibox.container.margin,
--    },
--    bg          = "#0077ff",
--    shape       = gears.shape.rounded_rect,
--    shape_clip  = true,
--    widget      = wibox.container.background,
--}

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "Terminus 10",
        fg   = theme.cyan,
        bg   = theme.bbg
    }
})

-- Mail IMAP check
local mailicon = wibox.widget.imagebox(theme.widget_mail)
--[[ commented because it needs to be set before use
mailicon:buttons(my_table.join(awful.button({ }, 1, function () awful.spawn(mail) end)))
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            widget:set_markup(markup.font(theme.font, " " .. mailcount .. " "))
            mailicon:set_image(theme.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(theme.widget_mail)
        end
    end
})
--]]

-- MPD
local musicplr = awful.util.terminal .. " -title Music -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ "Mod4" }, 1, function () awful.spawn(musicplr) end),
    awful.button({ }, 1, function ()
        os.execute("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 2, function ()
        os.execute("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ }, 3, function ()
        os.execute("mpc next")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
        elseif mpd_now.state == "pause" then
            artist = " mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            mpdicon:set_image(theme.widget_music)
        end

        widget:set_markup(markup.font(theme.font, markup("#1A1A1A", artist) .. title))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = wibox.widget {
    {
    lain.widget.mem({settings = function() widget:set_markup(markup.font(theme.font, "  " .. mem_now.used .. "MB ")) end}),
        left    = 5,
        top     = 2,
        bottom  = 2,
        right   = 3,
        widget  = wibox.container.margin,
    },
    bg          = theme.red,
    fg          = "#dedede",
    shape       = function(cr, width, height) gears.shape.rounded_rect(cr, width, height, 15) end,
    shape_clip  = true,
    widget      = wibox.container.background,
}

local cpu = wibox.widget {
    {
        lain.widget.cpu({settings = function() widget:set_markup(markup.font(theme.font, "  " .. cpu_now.usage .. "% ")) end }),
        left    = 5,
        top     = 2,
        bottom  = 2,
        right   = 3,
        widget  = wibox.container.margin,
    },
    bg          = theme.yellow,
    fg          = "#dedede",
    shape       = function(cr, width, height) gears.shape.rounded_rect(cr, width, height, 15) end,
    shape_clip  = true,
    widget      = wibox.container.background,
}

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    end
})

-- / fs
local fsicon = wibox.widget.imagebox(theme.widget_hdd)

--[[ commented because it needs Gio/Glib >= 2.54
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Terminus 10" },
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. fs_now["/"].percentage .. "% "))
    end
})
--]]

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)
local bat = lain.widget.bat({
    settings = function()
        if bat_now.status and bat_now.status ~= "N/A" then
            if bat_now.ac_status == 1 then
                baticon:set_image(theme.widget_ac)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
                baticon:set_image(theme.widget_battery_empty)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 15 then
                baticon:set_image(theme.widget_battery_low)
            else
                baticon:set_image(theme.widget_battery)
            end
            widget:set_markup(markup.font(theme.font, " " .. bat_now.perc .. "% "))
        else
            widget:set_markup(markup.font(theme.font, " AC "))
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.widget_vol_mute)
        elseif tonumber(volume_now.level) == 0 then
            volicon:set_image(theme.widget_vol_no)
        elseif tonumber(volume_now.level) <= 50 then
            volicon:set_image(theme.widget_vol_low)
        else
            volicon:set_image(theme.widget_vol)
        end

        widget:set_markup(markup.font(theme.font, " " .. volume_now.level .. "% "))
    end
})
theme.volume.widget:buttons(awful.util.table.join(
                               awful.button({}, 4, function ()
                                     awful.util.spawn("amixer set Master 1%+")
                                     theme.volume.update()
                               end),
                               awful.button({}, 5, function ()
                                     awful.util.spawn("amixer set Master 1%-")
                                     theme.volume.update()
                               end)
))

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font(theme.font,
                          markup("#1A1A1A", " " .. string.format("%06.1f", net_now.received))
                          .. " " ..
                          markup("#1A1A1A", " " .. string.format("%06.1f", net_now.sent) .. " ")))
    end
})

local systray = wibox.widget {
    {
        wibox.widget.systray(),
        left    = 5,
        top     = 2,
        bottom  = 2,
        right   = 5,
        widget  = wibox.container.margin,
    },
    bg          = theme.bg_systray,
    shape       = function(cr, width, height) gears.shape.rounded_rect(cr, width, height, 15) end,
    shape_clip  = true,
    widget      = wibox.container.background,
}

-- Separators
local spr      = wibox.widget.textbox('     ')
local arrl_dl  = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld  = separators.arrow_left("alpha", theme.bg_focus)
local arrl_ldl = separators.arrow_left(theme.extracolor1, "alpha") 
local arrl_lld = separators.arrow_left("alpha", theme.extracolor1)
local arrl_ddl = separators.arrow_left(theme.extracolor2, "alpha")
local arrl_dld = separators.arrow_left("alpha", theme.extracolor2)
local arrl_end = separators.arrow_left("alpha", theme.bg_systray)

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, false)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
local layoutbox = wibox.widget {
    {
        awful.widget.layoutbox(s),
        --layoutbox:buttons(my_table.join(
        --                   awful.button({}, 1, function () awful.layout.inc( 1) end),
        --                   awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
        --                   awful.button({}, 3, function () awful.layout.inc(-1) end),
        --                   awful.button({}, 4, function () awful.layout.inc( 1) end),
        --                   awful.button({}, 5, function () awful.layout.inc(-1) end))),
        left    = 5,
        top     = 2,
        bottom  = 2,
        right   = 5,
        widget  = wibox.container.margin,
    },
    bg          = theme.red,
    shape       = function(cr, width, height) gears.shape.rounded_rect(cr, width, height, 15) end,
    shape_clip  = true,
    widget      = wibox.container.background,
}

local taglist = wibox.widget {
    {
        awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons),
        left    = 5,
        top     = 2,
        bottom  = 3,
        right   = 5,
        widget  = wibox.container.margin,
    },
    bg          = theme.yellow,
    shape       = function(cr, width, height) gears.shape.rounded_rect(cr, width, height, 15) end,
    shape_clip  = true,
    widget      = wibox.container.background,
}


    -- Create a tasklist widget
    local tasklist = wibox.widget {
        bg = theme.green,
        fg = theme.green,
        shape = function(cr, width, height)
            gears.shape.rounded_rect(cr, width, height, 15)
        end,
        widget = wibox.container.background,
        {
            widget = wibox.container.margin,
            margins = 5,
            {
                widget = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons),
            },
        },
    }
    -- Create the filler invis wibox (for a gap at the top of the screen)
    s.mywibox  = awful.wibar({
    position = "top",
    screen = s,
    height = dpi(10), --Controls the size of the gap (will break config if size is zero. Just comment this all out to remove it)
    bg = "#00000000",
    fg = "#00000000",
    opacity = 0.0
    })

    -- Create the ACTUAL wibox lol
    s.mywibox = awful.wibar({ 
    position = "top", 
    screen = s, 
    height = dpi(25),
    --width = 2530,
    bg = "#41486800",
    fg = theme.fg_normal,
    opacity = 1.0,
    shape = function(cr, width, height) 
    gears.shape.rounded_rect(cr, width, height, 15)
    end  
    })

    -- Add widgets to the wibox

    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            spr,
            spr,
            layoutbox,
            spr,
            taglist,
            s.mypromptbox,
            spr,
        },

        spr,
        --tasklist, -- If you want to have a tasklist

        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            spr,
           systray,
            spr,
            mem,
            spr,
            cpu,
            spr,
            clock,
            spr,
            spr,
            --layoutbox,
            --spr,
        },
    }
end

return theme
