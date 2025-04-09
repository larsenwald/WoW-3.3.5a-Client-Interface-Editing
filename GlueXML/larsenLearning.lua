local myLearningFrame = CreateFrame("Frame", "MyLearningFrame", AccountLogin)
myLearningFrame:SetFrameStrata("HIGH")
myLearningFrame:SetPoint("TOP", 0, 0)
myLearningFrame:SetSize(200, 200)
myLearningFrame:EnableMouse(true)
myLearningFrame:Show()

myLearningFrame:SetScript("OnMouseDown", function(self)
    message("mousedown working!")

    -- Create a FontString in this frame:
    fs = self:CreateFontString(nil, "OVERLAY", "GlueFontNormal")

    -- Place the text in the middle of the frame
    fs:SetPoint("CENTER", 0, 0)
    
    -- Ensure it's visible and set some text
    fs:SetText("Hello World!")
    
    -- Optionally, set a color to be extra sure it's white and fully opaque
    fs:SetTextColor(1, 1, 1, 1)
end)
