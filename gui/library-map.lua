-- Reusable UI appearance catalog.
-- App repos pick profiles from here; they should not duplicate element styling.
local libraryMap={}

libraryMap.DefaultProfileId="original"

libraryMap.Profiles={
	original={
		Id="original",
		Name="Original",

		Style={
			Primary=Color3.fromRGB(12,12,12),
			Stroke=Color3.fromRGB(182,180,180),
			Gradient=Color3.fromRGB(182,180,180),
			GradientOn=false,
			StrokeThickness=1,
			StrokeTransparency=0.84,
		},

		Theme={},

		Shape={
			WindowRadius=0,
			SectionRadius=0,
			ControlRadius=0,
			SliderRadius=0,
			SliderHeight=26,
			SliderStyle="original",
			WindowStrokeTransparency=0.62,
			SectionStrokeTransparency=0.92,
			ControlStrokeTransparency=0.9,
			SliderStrokeTransparency=0.9,
			AccentStrokeTransparency=0.72,
		},

		Components={
			TextFont=Enum.Font.Gotham,
			TitleFont=Enum.Font.GothamBold,
			ControlFont=Enum.Font.GothamMedium,
			SectionPrefix=true,
			SectionPaddingX=12,
			SectionPaddingY=10,
			SectionGap=6,
			SectionHeaderHeight=22,
			SectionTitleSize=14,
			SectionSubtitleSize=11,
			SectionBackgroundTransparency=0,
			SectionStrokeTransparency=0.84,
			SectionBodyInset=2,
			SectionBodyGap=6,
			SliderRowHeight=48,
			SliderValueBoxWidth=58,
			SliderValueBoxVisible=true,
			SliderContainerTransparency=1,
			SliderContainerStrokeTransparency=1,
			SliderLabelX=12,
			SliderRightPadding=8,
			ToggleWidth=48,
			ToggleHeight=20,
			ToggleStyle="switch",
			TextBoxHeight=28,
			ButtonHeight=30,
			ControlStrokeTransparency=0.78,
		},

		Defaults={
			PrimaryR=12,
			PrimaryG=12,
			PrimaryB=12,
			StrokeR=182,
			StrokeG=180,
			StrokeB=180,
			GradientR=182,
			GradientG=180,
			GradientB=180,
			StrokeGradient=false,
			LiquidStroke=false,
			LiquidStrokeSpeed=1,
			LiquidStrokeDirection="Right",
			StrokeThickness=1,
			StrokeTransparency=0.84,
			CornerRadius=0,
			UILib="original",
		},
	},
}

local function copyTable(source)
	local result={}

	for key,value in pairs(source or {}) do
		result[key]=value
	end

	return result
end

function libraryMap.GetProfile(id)
	local profileId=tostring(id or libraryMap.DefaultProfileId):lower()
	return libraryMap.Profiles[profileId] or libraryMap.Profiles[libraryMap.DefaultProfileId]
end

function libraryMap.GetDefaultProfile()
	return libraryMap.GetProfile(libraryMap.DefaultProfileId)
end

function libraryMap.GetDefaultStyle(id)
	local profile=libraryMap.GetProfile(id)
	local defaults=copyTable(profile and profile.Defaults)
	defaults.UILib=tostring(defaults.UILib or profile.Id or libraryMap.DefaultProfileId)
	return defaults
end

return libraryMap
