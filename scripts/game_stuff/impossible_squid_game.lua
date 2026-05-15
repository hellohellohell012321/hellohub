local segments = workspace:FindFirstChild("segmentSystem"):FindFirstChild("Segments"):GetChildren()

for _, segment in ipairs(segments) do
    for _, part in ipairs(segment.Folder:GetChildren()) do
        part.CanCollide = true
        part.CanTouch = false
        for _, i in ipairs(part:GetChildren()) do
            i:Destroy()
        end
    end
end
