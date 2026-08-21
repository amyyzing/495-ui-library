local env=(getfenv and getfenv()) or _G
local t=rawget(env,"DesignTokens") or rawget(env,"DesignTokensModule")
if not t and script and script.Parent and script.Parent.Parent then t=require(script.Parent.Parent.tokens) end
assert(t,"DesignTokens must load before everforest theme")

return{id="everforest",name="Everforest",values={
	[t.Color.Surface.Window]=Color3.fromRGB(253,246,227),
	[t.Color.Surface.Topbar]=Color3.fromRGB(253,246,227),
	[t.Color.Surface.Panel]=Color3.fromRGB(253,246,227),
	[t.Color.Surface.Card]=Color3.fromRGB(239,235,212),
	[t.Color.Surface.Section]=Color3.fromRGB(239,235,212),
	[t.Color.Surface.Control]=Color3.fromRGB(239,235,212),
	[t.Color.Surface.Button]=Color3.fromRGB(239,235,212),
	[t.Color.Surface.Input]=Color3.fromRGB(253,246,227),
	[t.Color.Surface.SliderTrack]=Color3.fromRGB(147,159,145),
	[t.Color.Accent.Primary]=Color3.fromRGB(147,178,89),
	[t.Color.Accent.Secondary]=Color3.fromRGB(223,105,186),
	[t.Color.Text.Primary]=Color3.fromRGB(92,106,114),
	[t.Color.Text.Muted]=Color3.fromRGB(147,159,145),
	[t.Color.Stroke.Normal]=Color3.fromRGB(147,178,89),
	[t.Color.Stroke.Soft]=Color3.fromRGB(224,220,199),
	[t.Color.Stroke.Focus]=Color3.fromRGB(147,178,89),
}}
