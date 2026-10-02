hl.curve("OpenWindow", { type = "spring", mass = 1.7, stiffness = 60, dampening = 8 })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 10, spring = "OpenWindow", style = "popin 30%" })

-- Curves
hl.curve("workspaces", { type = "bezier", points = { { 0.65, 0.0 }, { 0.30, 1.3 } } })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "workspaces", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3, bezier = "workspaces", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3, bezier = "workspaces", style = "slide" })
