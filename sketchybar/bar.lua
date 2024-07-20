local colors = require("colors")

-- Equivalent to the --bar domain



sbar.bar({
  topmost = "window",
  y_offset = 0,
  height = 36,
  font_smoothing = true,
  color = colors.bar.bg,
  blur_radius = 40,
  padding_right = 2,
  padding_left = 2,
})
