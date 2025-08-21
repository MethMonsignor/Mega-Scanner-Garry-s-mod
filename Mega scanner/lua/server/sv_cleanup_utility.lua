-- EmporiumRP Cleanup Utility
-- Removes orphaned props, broken entities, and invalid physics objects
-- Author: MethMonsignor | License: MIT | Lore: Tribunal-sanctioned purge protocol

function EmporiumRP_Cleanup(ply)
    local count = 0
    for _, ent in ipairs(ents.GetAll()) do
        if IsValid(ent) and (ent:IsWeapon() or ent:IsVehicle() or ent:GetModel() == "") then
            ent:Remove()
            count = count + 1
        end
    end

    local msg = "[EmporiumRP] Cleanup complete. Purged " .. count .. " entities."
    print(msg) -- Server console
    if IsValid(ply) then
        ply:PrintMessage(HUD_PRINTCONSOLE, msg) -- Player console
    end
end
