-- EmporiumRP Conflict Scanner
-- Detects addon folder collisions and naming conflicts
-- Author: MethMonsignor | License: MIT | Lore: Tribunal audit protocol

function EmporiumRP_ScanConflicts(ply)
    local folders = file.Find("addons/*", "GAME")
    local seen, conflicts = {}, {}

    for _, folder in ipairs(folders) do
        local lower = string.lower(folder)
        if seen[lower] then
            table.insert(conflicts, folder)
        else
            seen[lower] = true
        end
    end

    if #conflicts > 0 then
        local msg = "[EmporiumRP] Conflict detected in folders:\n - " .. table.concat(conflicts, "\n - ")
        print(msg)
        if IsValid(ply) then ply:PrintMessage(HUD_PRINTCONSOLE, msg) end
    else
        local msg = "[EmporiumRP] No conflicts found."
        print(msg)
        if IsValid(ply) then ply:PrintMessage(HUD_PRINTCONSOLE, msg) end
    end
end

