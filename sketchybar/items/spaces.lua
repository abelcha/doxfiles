local colors = require("colors")
local icons = require("icons")
local settings = require("settings")
local app_icons = require("helpers.app_icons")
-- local focus  require("../..hammerspoon/focus-history")
-- local console = require("../../.hammerspoon/console")
local spaces = {}


function getAppType(fmApp)
  print('GET APP TYPE', fmApp)
  if string.match(fmApp, "Chrome") or string.match(fmApp, "Safari") or string.match(fmApp, "Orion") then
    return 1
  end
  if string.match(fmApp, "Code") or string.match(fmApp, "Zed") then
    return 2
  end
  if string.match(fmApp, "iTerm2") then
    return 3
  end
  return 0
end

local currentBusiness = settings.front_app

function debugTable(obj)
  print(dumpTableToString(obj))
end

function dumpTableToString(o, level)
  if level == nil then
    level = 1
  end
  local showCounter = false
  local intend = string.rep('  ', level)
  if type(o) == 'table' then
    local info = {}
    for k, v in pairs(o) do
      if type(k) ~= 'number' then
        --k = '  ["'..k..'"] = '
        k = '  ' .. k .. ' = '
      else
        k = '  '
      end
      table.insert(info, intend .. k .. dumpTableToString(v, level + 1))

      --if type(k) ~= 'number' then k = '"'..k..'"' end
      --table.insert(info, intend.. '  ['..k..'] = ' .. dumpTableToString(v, level+1))
    end

    local s
    if #info > 0 then
      local counter = (showCounter and ('<' .. #info .. '>') or '')
      s = counter .. '{\n' .. table.concat(info, ',\n') .. '\n' .. intend .. '}'
    else
      s = '{}'
    end

    return s
  else
    return tostring(o)
    -- return hs.inspect(o)
  end
end

for i = 1, 5, 1 do
  local space = sbar.add("space", "space." .. i, {
    space = i,
    icon = {
      font = { family = settings.font.numbers },
      string = i,
      padding_left = 15,
      padding_right = 8,
      color = colors.white,
      highlight_color = colors.red,
    },
    label = {
      padding_right = 20,
      color = colors.grey,
      highlight_color = colors.white,
      font = "sketchybar-app-font:Regular:16.0",
      y_offset = -1,
    },
    padding_right = 1,
    padding_left = 1,
    background = {
      color = colors.bg1,
      border_width = 1,
      height = 26,
      border_color = colors.black,
    },
    popup = { background = { border_width = 5, border_color = colors.black } }
  })

  spaces[i] = space

  -- Single item bracket for space items to achieve double border on highlight
  local space_bracket = sbar.add("bracket", { space.name }, {
    background = {
      color = colors.transparent,
      border_color = colors.bg2,
      height = 28,
      border_width = 2
    }
  })

  -- Padding space
  sbar.add("space", "space.padding." .. i, {
    space = i,
    script = "",
    width = settings.group_paddings,
  })

  local space_popup = sbar.add("item", {
    position = "popup." .. space.name,
    padding_left = 0,
    padding_right = 5,
    background = {
      drawing = true,
      image = {
        corner_radius = 9,
        scale = 0.2
      }
    }
  })

  space:subscribe("space_change", function(env)

  end)

  space:subscribe("mouse.clicked", function(env)
    if env.BUTTON == "other" then
      space_popup:set({ background = { image = "space." .. env.SID } })
      space:set({ popup = { drawing = "toggle" } })
    else
      local op = (env.BUTTON == "right") and "--destroy" or "--focus"
      sbar.exec("yabai -m space " .. op .. " " .. env.SID)
    end
  end)

  space:subscribe("mouse.exited", function(_)
    space:set({ popup = { drawing = false } })
  end)
end






local space_window_observer = sbar.add("item", {
  drawing = false,
  updates = true,
})

local spaces_indicator = sbar.add("item", {
  padding_left = -3,
  padding_right = 0,
  icon = {
    padding_left = 8,
    padding_right = 9,
    color = colors.grey,
    string = icons.switch.on,
  },
  label = {
    width = 0,
    padding_left = 0,
    padding_right = 8,
    string = "Spaces",
    color = colors.bg1,
  },
  background = {
    color = colors.with_alpha(colors.grey, 0.0),
    border_color = colors.with_alpha(colors.bg1, 0.0),
  }
})



local tCodeEditors   = {
  "dev.zed.Zed",
  "com.microsoft.VSCodeInsiders",
  "com.microsoft.VSCode",
  "com.sublimetext.4",
}
local tBrowser       = {
  "Safari",
  "Chrome",
  "Browser",
}

local SpaceOps       = {};
--
local currentAppType = nil
space_window_observer:subscribe("space_windows_change", function(env)
  -- print('-----', "SPACE CALL", env.INFO.space,'----', env.INFO.app, '----------')

  debugTable(env)

  -- currentAppType = (currentAppType)
  if (currentAppType ~= nil and currentAppType ~= getAppType(env.INFO.app)) then
    return 0
  end


  local spaceTypes = { "", "", "", "", "" }
  local icon_line  = ""
  local no_app     = true
  print('Icons:env.INFO.apps', env.INFO.apps)
  -- for app, count in pairs(env.INFO.apps) do
  --   print('APP', app)
  --   local lookup = app_icons[app]
  --   local icon = ((lookup == nil) and app_icons["default"] or lookup)
  --   local appType = getAppType(app) or 0
  --   spaceTypes[appType] = (spaceTypes[appType] or "") .. " " .. icon
  --   print('Icons:spaceTypes[appType]', spaceTypes[appType])
  -- end
  -- evert spacetypes:
  for i = 1, 5, 1 do
    print('SET DES ICONS', spaceTypes[i])
    if (i == 1) then
      spaces[i]:set({ label = ':orion:' })
    elseif (i == 2) then
        spaces[i]:set({ label = ':code:' })
      elseif (i == 3) then
        spaces[i]:set({ label = ':terminal:' })
      elseif (i == 4) then
        spaces[i]:set({ label = ':alacritty:' })
    else
      spaces[i]:set({ label = ':iterm:' })
    end
  end
end)
spaces_indicator:subscribe("swap_menus_and_spaces", function(env)
end)

spaces_indicator:subscribe("mouse.entered", function(env)
  sbar.animate("tanh", 30, function()
    spaces_indicator:set({
      background = {
        color = { alpha = 1.0 },
        border_color = { alpha = 1.0 },
      },
      icon = { color = colors.bg1 },
      label = { width = "dynamic" }
    })
  end)
end)

spaces_indicator:subscribe("mouse.exited", function(env)
  sbar.animate("tanh", 30, function()
    spaces_indicator:set({
      background = {
        color = { alpha = 0.0 },
        border_color = { alpha = 0.0 },
      },
      icon = { color = colors.grey },
      label = { width = 0, }
    })
  end)
end)

spaces_indicator:subscribe("mouse.clicked", function(env)
  sbar.trigger("swap_menus_and_spaces")
end)
spaces_indicator:subscribe("front_app_switched", function(env)
  currentBusiness = env.INFO
  local appType = getAppType(env.INFO) or 0;
  local fmApp = env.INFO
  local lookup = app_icons[fmApp]
  local icon = ((lookup == nil) and app_icons["default"] or lookup)
  local selectedNum = appType

  for i = 1, 5, 1 do
    local selected = (i == selectedNum)
    local color = selected and colors.grey or colors.bg2
    local space_bracket = sbar.add("bracket", { spaces[i].name }, {
      background = {
        color = colors.transparent,
        border_color = colors.bg2,
        height = 28,
        border_width = 2
      }
    })
    local icon_line = selected and " —" or ""
    spaces[i]:set({
      icon = { highlight = selected or icon_line, },
      label = { highlight = selected },
      background = { border_color = selected and colors.black or colors.bg2 }
    })
  end
end)
