local mainMod = "SUPER"

local browser = "zen-browser"
local music_player = "spotify"
--local screen_shot = 'grim -g "$(slurp)" $(zenity --entry --title="Screenshot" --text="Enter filename").png'
--local screen_shot = 'grim -g "$(slurp)" idk.png'

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(music_player))
--hl.bind("Print", hl.dsp.exec_cmd(screen_shot))

hl.bind(mainMod .. " + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.window.move({ direction = "right" }))

hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.resize({ x = 50, y = 0, relative = true, keep_aspect_ratio = true }))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.resize({ x = -50, y = 0, relative = true, keep_aspect_ratio = true }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = 50, relative = true, keep_aspect_ratio = true }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = -50, relative = true, keep_aspect_ratio = true }))
