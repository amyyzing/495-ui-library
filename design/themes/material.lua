local env=(getfenv and getfenv()) or _G
local t=rawget(env,"DesignTokens") or rawget(env,"DesignTokensModule")
if not t and script and script.Parent and script.Parent.Parent then t=require(script.Parent.Parent.tokens) end
assert(t,"DesignTokens must load before material theme")

return{id="material",name="Material",values={
	[t.Color.Surface.Window]=Color3.fromRGB(33,33,33),
	[t.Color.Surface.Topbar]=Color3.fromRGB(33,33,33),
	[t.Color.Surface.Panel]=Color3.fromRGB(33,33,33),
	[t.Color.Surface.Card]=Color3.fromRGB(43,43,43),
	[t.Color.Surface.Section]=Color3.fromRGB(43,43,43),
	[t.Color.Surface.Control]=Color3.fromRGB(43,43,43),
	[t.Color.Surface.Button]=Color3.fromRGB(43,43,43),
	[t.Color.Surface.Input]=Color3.fromRGB(43,43,43),
	[t.Color.Surface.SliderTrack]=Color3.fromRGB(103,103,103),
	[t.Color.Accent.Primary]=Color3.fromRGB(128,203,196),
	[t.Color.Accent.Secondary]=Color3.fromRGB(199,146,234),
	[t.Color.Text.Primary]=Color3.fromRGB(238,255,255),
	[t.Color.Text.Muted]=Color3.fromRGB(103,103,103),
	[t.Color.Stroke.Normal]=Color3.fromRGB(128,203,196),
	[t.Color.Stroke.Soft]=Color3.fromRGB(97,97,97),
	[t.Color.Stroke.Focus]=Color3.fromRGB(128,203,196),
}}
