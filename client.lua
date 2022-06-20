----------------------------------------------
-- You can add more Screen resolutions here --
----------------------------------------------

local BlacklistedResolution = {
    [1] = {x = 1280,y = 768},
    [2] = {x = 1280,y = 1024},
    [3] = {x = 1280,y = 960},
    [4] = {x = 1800,y = 1080},
    [5] = {x = 1440,y = 1080},
    [6] = {x = 1350,y = 1080},
}

----------------------------------------------
---------  C I T I Z E N T H R E A D  --------
----------------------------------------------

Citizen.CreateThread(function()
    while true do

        local Width,Height = GetActiveScreenResolution()

        for i=1, #BlacklistedResolution do
            if BlacklistedResolution[i].x == Width and BlacklistedResolution[i].y == Height then
                TriggerServerEvent("Kick:Bozo")
            end
        end

        Citizen.Wait(15000)
    end
end)
