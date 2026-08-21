local env=(getfenv and getfenv()) or _G
local t=rawget(env,"DesignTokens") or rawget(env,"DesignTokensModule")
if not t and script and script.Parent and script.Parent.Parent then t=require(script.Parent.Parent.tokens) end
assert(t,"DesignTokens must load before linear theme")

return{id="linear",name="Linear",values={
	[t.Color.Surface.Window]=Color3.fromRGB(15,15,17),
	[t.Color.Surface.Topbar]=Color3.fromRGB(15,18,25),
	[t.Color.Surface.Panel]=Color3.fromRGB(10,12,17),
	[t.Color.Surface.Card]=Color3.fromRGB(23,24,29),
	[t.Color.Surface.Section]=Color3.fromRGB(23,24,29),
	[t.Color.Surface.Control]=Color3.fromRGB(15,18,25),
	[t.Color.Surface.Button]=Color3.fromRGB(15,18,25),
	[t.Color.Surface.Input]=Color3.fromRGB(23,24,29),
	[t.Color.Surface.SliderTrack]=Color3.fromRGB(99,107,123),
	[t.Color.Accent.Primary]=Color3.fromRGB(96,106,204),
	[t.Color.Accent.Secondary]=Color3.fromRGB(194,161,255),
	[t.Color.Text.Primary]=Color3.fromRGB(227,228,230),
	[t.Color.Text.Muted]=Color3.fromRGB(99,107,123),
	[t.Color.Stroke.Normal]=Color3.fromRGB(96,106,204),
	[t.Color.Stroke.Soft]=Color3.fromRGB(99,107,123),
	[t.Color.Stroke.Focus]=Color3.fromRGB(96,106,204),
}}
