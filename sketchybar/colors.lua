print('hello')

local serpent = require("serpent")
local bit = require("bit")
-- local color = require("convertcolor")

-- print("==dd>", )
-- local bit = bit32

-- Function to convert RGB and Hex to ARGB
local function rgb_hex_to_argb(r, g, b, alpha)
  -- Default alpha to 255 (opaque) if not provided
  alpha = alpha or 255

  -- Construct ARGB value
  local argb = bit.lshift(alpha, 24) + bit.lshift(r, 16) + bit.lshift(g, 8) + b

  return argb
end

-- Function to parse hex to RGB
local function argb(hex, alpha)
  alpha = alpha or 1
  -- local alphahex = (alpha / 1) *
  hex = hex:gsub("#", "")
  local r, g, b = tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
  return rgb_hex_to_argb(r, g, b, alpha * 255)
end

local function argb_explode(argb)
  -- Extract the alpha, red, green, and blue components
  local alpha = bit.rshift(argb, 24)
  local red = bit.band(bit.rshift(argb, 16), 0xFF)
  local green = bit.band(bit.rshift(argb, 8), 0xFF)
  local blue = bit.band(argb, 0xFF)

  -- Format RGB string
  -- local rgb = string.format("rgb(%d, %d, %d)", red, green, blue)

  -- -- Format Hex string
  -- local hex = string.format("#%02x%02x%02x", red, green, blue)

  return red, green, blue, alpha;
end

local function argb_to_hex(argb)
  -- Extract the alpha, red, green, and blue components
  local red, green, blue, alpha = argb_explode(argb)
  -- Format RGB string
  return string.format("#%02x%02x%02x", red, green, blue)
end


local opacify = function(color, alpha)
  if alpha > 1.0 or alpha < 0.0 then return color end
  return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
end

-- test();





-- black	:	#181819
-- bar	bg	:	#2c2e34
-- bar	border	:	#2c2e34
-- red	:	#fc5d7c
-- transparent	:	#000000
-- white	:	#e2e2e3
-- bg1	:	#363944
-- popup	bg	:	#2c2e34
-- popup	border	:	#7f8490
-- orange	:	#f39660
-- bg2	:	#414550
-- grey	:	#7f8490
-- yellow	:	#e7c664
-- magenta	:	#b39df3
-- green	:	#9ed072
-- blue	:	#76cce0


local black = argb('#181819')
local white = argb('#e2e2e3')
local red = argb('#fc5d7c')
local green = argb('#9ed072')
local blue = argb('#76cce0')
local yellow = argb("#e7c664")
local orange = argb("#b39df3")
local magenta = argb("#9ed072")
local grey = argb('#55585e')
local transparent = 0x00000000
DARK = '#090B17'

local walpha = function(color, alpha)
  if alpha > 1.0 or alpha < 0.0 then return color end
  return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
end

local rtn = {
  black = black,
  white = white,
  red = red,
  green = green,
  blue = blue,
  yellow = yellow,
  orange = orange,
  magenta = magenta,
  grey = grey,
  transparent = transparent,

  bar = {
    bg = 0xf02c2e34,
    border = 0xff2c2e34,
    -- bg = argb(DARK, 0.01), 
    -- bg = argb(DARK, 0.94), 
    -- border = green,
  },
  popup = {
    bg = argb("#7f8490"),
    border = argb("#7f8490"),
  },
  bg1 = transparent,
  bg2 = transparent,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}

-- bar = {
--   -    bg = 0xf02c2e34,
--   -    border = 0xff2c2e34,
--   +    bg = argb(DARK, 0.01),
--   +    -- bg = argb(DARK, 0.94),
--   +    border = green,
--      },
--      popup = {
--   -    bg = 0xc02c2e34,
--   -    border = 0xff7f8490
--   +    bg = argb("#7f8490"),
--   +    border = argb("#7f8490"),
--      },
--   -  bg1 = 0xff363944,
--   -  bg2 = 0xff414550,
--   +  bg1 = transparent,
--   +  bg2 = transparent,


-- for key, value in pairs(rtn) do
--   if type(value) == 'table' then
--     for k, v in pairs(value) do
--       print(key, k, ":", 'rgb_hex_to_argb('n argb_explode(v))
--     end
--   elseif (type(value) == 'number') then
--     print(key, ":", argb_to_hex(value))
--   end
-- end

return rtn
