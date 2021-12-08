local BlacklistedResolution = {
    [1] = {x = 1280,y = 768},
    [2] = {x = 1280,y = 1024},
    [3] = {x = 1280,y = 960},
}

Citizen.CreateThread(function()
    while true do

        local Width,Height = GetActiveScreenResolution()
        
        if GetIsWidescreen() == 1 then -- If Aspect Ratio is set on 5:3 etc. it will kick 
            TriggerServerEvent("Kick:Bozo")
        end

        for i=1, #BlacklistedResolution do
            if BlacklistedResolution[i].x == Width and BlacklistedResolution[i].y == Height then
                TriggerServerEvent("Kick:Bozo")
            end
        end

        Citizen.Wait(15000)
    end
end)
