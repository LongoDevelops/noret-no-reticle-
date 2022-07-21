--Longo Development--
Citizen.CreateThread(function()
local Sniper = false 
local SniperHash = 100416529
local heavySniper = 205991906
local MarksMan = -952879014
    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(0)

        local weaponHash = GetSelectedPedWeapon(player)

        if weaponHash == SniperHash then
            Sniper = true
        else 
            if weaponHash == heavySniper then
                Sniper = true
            else 
                if weaponHash == MarksMan then
                    Sniper = true
                end
                
                if not Sniper then
                    HideHudComponentThisFrame(14)
                end
            end
        end
    end
end)
