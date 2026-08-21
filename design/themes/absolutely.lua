local env=(getfenv and getfenv()) or _G
local t=rawget(env,"DesignTokens") or rawget(env,"DesignTokensModule")
if not t and script and script.Parent and script.Parent.Parent then t=require(script.Parent.Parent.tokens) end
assert(t,"DesignTokens must load before absolutely theme")

return{id="absolutely",name="Absolutely",values={
	[t.Color.Surface.Window]=Color3.fromRGB(45,45,43),
	[t.Color.Surface.Topbar]=Color3.fromRGB(55,55,53),
	[t.Color.Surface.Panel]=Color3.fromRGB(55,55,53),
	[t.Color.Surface.Card]=Color3.fromRGB(45,45,43),
	[t.Color.Surface.Section]=Color3.fromRGB(55,55,53),
	[t.Color.Surface.Control]=Color3.fromRGB(55,55,53),
	[t.Color.Surface.Button]=Color3.fromRGB(55,55,53),
	[t.Color.Surface.Input]=Color3.fromRGB(45,45,43),
	[t.Color.Surface.SliderTrack]=Color3.fromRGB(178,178,176),
	[t.Color.Accent.Primary]=Color3.fromRGB(204,125,94),
	[t.Color.Accent.Secondary]=Color3.fromRGB(204,125,94),
	[t.Color.Text.Primary]=Color3.fromRGB(249,249,247),
	[t.Color.Text.Muted]=Color3.fromRGB(178,178,176),
	[t.Color.Stroke.Normal]=Color3.fromRGB(204,125,94),
	[t.Color.Stroke.Soft]=Color3.fromRGB(178,178,176),
	[t.Color.Stroke.Focus]=Color3.fromRGB(204,125,94),
}}
