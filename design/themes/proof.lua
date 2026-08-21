local env=(getfenv and getfenv()) or _G
local t=rawget(env,"DesignTokens") or rawget(env,"DesignTokensModule")
if not t and script and script.Parent and script.Parent.Parent then t=require(script.Parent.Parent.tokens) end
assert(t,"DesignTokens must load before proof theme")

return{id="proof",name="Proof",values={
	[t.Color.Surface.Window]=Color3.fromRGB(245,243,237),
	[t.Color.Surface.Topbar]=Color3.fromRGB(239,237,230),
	[t.Color.Surface.Panel]=Color3.fromRGB(239,237,230),
	[t.Color.Surface.Card]=Color3.fromRGB(245,243,237),
	[t.Color.Surface.Section]=Color3.fromRGB(239,237,230),
	[t.Color.Surface.Control]=Color3.fromRGB(239,237,230),
	[t.Color.Surface.Button]=Color3.fromRGB(239,237,230),
	[t.Color.Surface.Input]=Color3.fromRGB(245,243,237),
	[t.Color.Surface.SliderTrack]=Color3.fromRGB(75,77,72),
	[t.Color.Accent.Primary]=Color3.fromRGB(61,117,93),
	[t.Color.Accent.Secondary]=Color3.fromRGB(95,106,194),
	[t.Color.Text.Primary]=Color3.fromRGB(47,49,45),
	[t.Color.Text.Muted]=Color3.fromRGB(75,77,72),
	[t.Color.Stroke.Normal]=Color3.fromRGB(61,117,93),
	[t.Color.Stroke.Soft]=Color3.fromRGB(122,118,109),
	[t.Color.Stroke.Focus]=Color3.fromRGB(61,117,93),
}}
