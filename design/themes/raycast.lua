local env=(getfenv and getfenv()) or _G
local t=rawget(env,"DesignTokens") or rawget(env,"DesignTokensModule")
if not t and script and script.Parent and script.Parent.Parent then t=require(script.Parent.Parent.tokens) end
assert(t,"DesignTokens must load before raycast theme")

return{id="raycast",name="Raycast",values={
	[t.Color.Surface.Window]=Color3.fromRGB(16,16,16),
	[t.Color.Surface.Topbar]=Color3.fromRGB(16,16,16),
	[t.Color.Surface.Panel]=Color3.fromRGB(20,20,20),
	[t.Color.Surface.Card]=Color3.fromRGB(21,21,21),
	[t.Color.Surface.Section]=Color3.fromRGB(20,20,20),
	[t.Color.Surface.Control]=Color3.fromRGB(21,21,21),
	[t.Color.Surface.Button]=Color3.fromRGB(21,21,21),
	[t.Color.Surface.Input]=Color3.fromRGB(21,21,21),
	[t.Color.Surface.SliderTrack]=Color3.fromRGB(102,102,102),
	[t.Color.Accent.Primary]=Color3.fromRGB(255,99,99),
	[t.Color.Accent.Secondary]=Color3.fromRGB(207,47,152),
	[t.Color.Text.Primary]=Color3.fromRGB(254,254,254),
	[t.Color.Text.Muted]=Color3.fromRGB(102,102,102),
	[t.Color.Stroke.Normal]=Color3.fromRGB(255,99,99),
	[t.Color.Stroke.Soft]=Color3.fromRGB(40,40,40),
	[t.Color.Stroke.Focus]=Color3.fromRGB(255,99,99),
}}
