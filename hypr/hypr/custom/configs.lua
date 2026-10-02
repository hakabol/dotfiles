hl.config({
	general = {
		gaps_out = 15,
		col = {
			active_border = {
				--colors = { "rgba(20186b88)", "rgba(461b63ee)" },
				colors = { "rgba(5555FFFF)", "rgba(5555FFFF)" },
				angle = 45,
			},
		},
	},
	decoration = {
		rounding = 30,
		glow = {
			enabled = true,
			color = "rgba(461b63ff)",
			render_power = 4,
			range = 30,
		},
		--screen_shader = "~/.config/hypr/shaders/amoled.glsl",
	},
	input = {
		numlock_by_default = true,
	},
})
