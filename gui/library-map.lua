local libraryMap={}

libraryMap.DefaultProfileId="raycast"

local shape={
	WindowRadius=0,
	SectionRadius=0,
	ControlRadius=0,
	SliderRadius=0,
	SliderHeight=24,
	SliderStyle="original",
	WindowStrokeTransparency=0.66,
	SectionStrokeTransparency=0.92,
	ControlStrokeTransparency=1,
	SliderStrokeTransparency=1,
	AccentStrokeTransparency=0.62,
}

local components={
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
	SectionStrokeTransparency=0.92,
	SectionBodyInset=2,
	SectionBodyGap=6,
	SliderRowHeight=48,
	SliderValueBoxWidth=58,
	SliderValueBoxVisible=true,
	SliderContainerTransparency=1,
	SliderContainerStrokeTransparency=1,
	SliderTrackStrokeTransparency=1,
	SliderValueBoxStrokeTransparency=1,
	SliderLabelX=12,
	SliderRightPadding=8,
	SliderTrackRole="MUTED",
	SliderValueBoxRole="MUTED",
	SliderTrackTransparency=0.70,
	ToggleWidth=48,
	ToggleHeight=20,
	ToggleStyle="switch",
	ToggleLabelFont=Enum.Font.Gotham,
	TextBoxHeight=28,
	ButtonHeight=30,
	ControlStrokeTransparency=1,
	UnfilledRole="MUTED",
	UnfilledTransparency=0.70,
}

local function copy(source)
	local result={}
	for key,value in pairs(source or {}) do
		result[key]=value
	end
	return result
end

local function profile(id,name,primary,accent,secondary,palette)
	local theme={}
	for role,rgb in pairs(palette) do
		theme[role]=Color3.fromRGB(rgb[1],rgb[2],rgb[3])
	end

	return{
		Id=id,
		Name=name,
		Style={
			Primary=Color3.fromRGB(primary[1],primary[2],primary[3]),
			Stroke=Color3.fromRGB(accent[1],accent[2],accent[3]),
			Gradient=Color3.fromRGB(secondary[1],secondary[2],secondary[3]),
			GradientOn=false,
			StrokeThickness=1,
			StrokeTransparency=0.84,
		},
		Theme=theme,
		Shape=copy(shape),
		Components=copy(components),
		Defaults={
			PrimaryR=primary[1],PrimaryG=primary[2],PrimaryB=primary[3],
			StrokeR=accent[1],StrokeG=accent[2],StrokeB=accent[3],
			GradientR=secondary[1],GradientG=secondary[2],GradientB=secondary[3],
			StrokeGradient=false,
			LiquidStroke=false,
			LiquidStrokeSpeed=1,
			LiquidStrokeDirection="Right",
			StrokeThickness=1,
			StrokeTransparency=0.84,
			CornerRadius=0,
			UILib=id,
		},
	}
end

libraryMap.Profiles={
	raycast=profile("raycast","Raycast",{16,16,16},{255,99,99},{207,47,152},{
		bg={16,16,16},topbar={16,16,16},panel={20,20,20},card={21,21,21},section={20,20,20},
		button={21,21,21},input={21,21,21},sliderBg={21,21,21},sliderFill={255,99,99},
		text={254,254,254},muted={102,102,102},stroke={255,99,99},softStroke={40,40,40},
	}),
	everforest=profile("everforest","Everforest",{253,246,227},{147,178,89},{223,105,186},{
		bg={253,246,227},topbar={253,246,227},panel={253,246,227},card={239,235,212},section={239,235,212},
		button={239,235,212},input={253,246,227},sliderBg={239,235,212},sliderFill={147,178,89},
		text={92,106,114},muted={147,159,145},stroke={147,178,89},softStroke={224,220,199},
	}),
	proof=profile("proof","Proof",{245,243,237},{61,117,93},{95,106,194},{
		bg={245,243,237},topbar={239,237,230},panel={239,237,230},card={245,243,237},section={239,237,230},
		button={239,237,230},input={245,243,237},sliderBg={239,237,230},sliderFill={61,117,93},
		text={47,49,45},muted={75,77,72},stroke={61,117,93},softStroke={122,118,109},
	}),
	linear=profile("linear","Linear",{15,15,17},{96,106,204},{194,161,255},{
		bg={15,15,17},topbar={15,18,25},panel={10,12,17},card={23,24,29},section={23,24,29},
		button={15,18,25},input={23,24,29},sliderBg={23,24,29},sliderFill={96,106,204},
		text={227,228,230},muted={99,107,123},stroke={96,106,204},softStroke={99,107,123},
	}),
	material=profile("material","Material",{33,33,33},{128,203,196},{199,146,234},{
		bg={33,33,33},topbar={33,33,33},panel={33,33,33},card={43,43,43},section={43,43,43},
		button={43,43,43},input={43,43,43},sliderBg={43,43,43},sliderFill={128,203,196},
		text={238,255,255},muted={103,103,103},stroke={128,203,196},softStroke={97,97,97},
	}),
	absolutely=profile("absolutely","Absolutely",{45,45,43},{204,125,94},{204,125,94},{
		bg={45,45,43},topbar={55,55,53},panel={55,55,53},card={45,45,43},section={55,55,53},
		button={55,55,53},input={45,45,43},sliderBg={55,55,53},sliderFill={204,125,94},
		text={249,249,247},muted={178,178,176},stroke={204,125,94},softStroke={178,178,176},
	}),
}

function libraryMap.GetProfile(id)
	local profileId=tostring(id or libraryMap.DefaultProfileId):lower()
	return libraryMap.Profiles[profileId] or libraryMap.Profiles[libraryMap.DefaultProfileId]
end

function libraryMap.GetDefaultProfile()
	return libraryMap.GetProfile(libraryMap.DefaultProfileId)
end

function libraryMap.GetDefaultStyle(id)
	local selected=libraryMap.GetProfile(id)
	local defaults=copy(selected and selected.Defaults)
	defaults.UILib=tostring(defaults.UILib or selected.Id or libraryMap.DefaultProfileId)
	return defaults
end

return libraryMap
