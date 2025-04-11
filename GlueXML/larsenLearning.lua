local myLearningFrame = CreateFrame("Frame", "MyLearningFrame", UIParent)
myLearningFrame:SetFrameStrata("HIGH")
myLearningFrame:SetPoint("TOP", 0, 0)
myLearningFrame:SetSize(200, 200)
myLearningFrame:EnableMouse(true) --//TO ENABLE MOUSE CLICKS

fs = myLearningFrame:CreateFontString(nil, "OVERLAY", "GlueFontNormal")
fs:SetPoint("TOP", 0, 0)
fs:SetText("Hello World!")

local function easeOutQuad(progress)
    return 1 - (1 - progress)^2
end

myLearningFrame:SetScript("OnMouseDown", function()
    local startTime = GetTime();
    local _, _, _, _, yOffset = fs:GetPoint();
    myLearningFrame:SetScript("OnUpdate", function(self, elapsed)
        local timeElapsed = GetTime() - startTime;
        local desiredDuration = 1 --seconds
        local progress = timeElapsed/desiredDuration
    
        if progress > 1 then progress = 1 end
    
        local desiredOffset = -200
        
        fs:SetPoint("TOP", 0, yOffset + easeOutQuad(progress) * desiredOffset)
    end)
end)

--message(fs:GetAlpha())
--message(time())