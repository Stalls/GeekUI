local mult = 768/string.match(GetCVar("gxResolution"), "%d+x(%d+)")/G_Geekui["general"].uiscale
local function scale(x)
    return mult*math.floor(x/mult+.5)
end

function _Geekui.Scale(x) return scale(x) end
_Geekui.mult = mult

function _Geekui.CreatePanel(frame, width, height, frameAnchor, parent, parentAnchor, xOfs, yOfs)
	height = scale(height), width = scale(width)
	frame:SetFrameStrata("BACKGROUND")
	frame:SetFrameLevel(1)
	frame:SetHeight(height), frame:SetWidth(width)
	frame:SetPoint(frameAnchor, parent, parentAnchor, xOfs, yOfs)
	frame:SetBackdrop({
	  bgFile = G_Geek["media"].blank, 
	  edgeFile = G_Geek["media"].blank, 
	  tile = false, tileSize = 0, edgeSize = mult, 
	  insets = { left = -mult, right = -mult, top = -mult, bottom = -mult}
	})
	frame:SetBackdropColor(unpack(G_Geek["media"].backdropColor))
	frame:SetBackdropBorderColor(unpack(G_Geek["media"].borderColor))
end

function _Geekui.SetTemplate(frame)
	frame:SetBackdrop({
	  bgFile = G_Geekui["media"].blank, 
	  edgeFile = G_Geekui["media"].blank, 
	  tile = false, tileSize = 0, edgeSize = mult, 
	  insets = { left = -mult, right = -mult, top = -mult, bottom = -mult}
	})
	frame:SetBackdropColor(unpack(G_Geekui["media"].backdropColor))
	frame:SetBackdropBorderColor(unpack(G_Geekui["media"].borderColor))
end