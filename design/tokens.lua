-- Shared design-token names and defaults.
-- Themes fill these tokens; the app consumes the resolved values.
local designTokens = {}

designTokens.Color = {
	Text = {
		Primary = "color.text.primary",
		Muted = "color.text.muted",
		Inverse = "color.text.inverse",
		Danger = "color.text.danger",
		Success = "color.text.success",
	},

	Surface = {
		Window = "color.surface.window",
		Topbar = "color.surface.topbar",
		Panel = "color.surface.panel",
		Card = "color.surface.card",
		Section = "color.surface.section",
		Control = "color.surface.control",
		Button = "color.surface.button",
		Input = "color.surface.input",
		SliderTrack = "color.surface.sliderTrack",
	},

	Accent = {
		Primary = "color.accent.primary",
		Secondary = "color.accent.secondary",
		Hover = "color.accent.hover",
		Pressed = "color.accent.pressed",
	},

	Stroke = {
		Normal = "color.stroke.normal",
		Soft = "color.stroke.soft",
		Focus = "color.stroke.focus",
	},
}

designTokens.Typography = {
	Title = "typography.title",
	SectionTitle = "typography.sectionTitle",
	Body = "typography.body",
	Caption = "typography.caption",
	Control = "typography.control",
}

designTokens.Space = {
	XSmall = "space.xs",
	Small = "space.sm",
	Medium = "space.md",
	Large = "space.lg",
	XLarge = "space.xl",
}

designTokens.Radius = {
	None = "radius.none",
	Small = "radius.sm",
	Medium = "radius.md",
}

designTokens.Motion = {
	Fast = "motion.fast",
	Normal = "motion.normal",
	Slow = "motion.slow",
}

designTokens.Component = {
	Toggle = {
		TrackOn = "component.toggle.trackOn",
		TrackOff = "component.toggle.trackOff",
		Fill = "component.toggle.fill",
		Tick = "component.toggle.tick",
	},

	Slider = {
		Track = "component.slider.track",
		Fill = "component.slider.fill",
		Stroke = "component.slider.stroke",
	},

	Input = {
		Background = "component.input.background",
		FocusStroke = "component.input.focusStroke",
	},
}

designTokens.Defaults = {
	[designTokens.Space.XSmall] = 4,
	[designTokens.Space.Small] = 6,
	[designTokens.Space.Medium] = 10,
	[designTokens.Space.Large] = 14,
	[designTokens.Space.XLarge] = 18,

	[designTokens.Radius.None] = 0,
	[designTokens.Radius.Small] = 0,
	[designTokens.Radius.Medium] = 0,

	[designTokens.Motion.Fast] = 0.12,
	[designTokens.Motion.Normal] = 0.18,
	[designTokens.Motion.Slow] = 0.28,
}

return designTokens
