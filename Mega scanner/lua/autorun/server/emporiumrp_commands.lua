-- EmporiumRP Mega Help Tool Command Bindings
print("[EmporiumRP] Command bindings initialized.")

-- Conflict Scanner
concommand.Add("emporium_scan_conflicts", function(ply, cmd, args)
    if not EmporiumRP_ScanConflicts then
        include("server/sv_conflict_scanner.lua")
    end
    if EmporiumRP_ScanConflicts then
        EmporiumRP_ScanConflicts(ply)
    else
        print("[EmporiumRP] Conflict scanner function missing.")
        if IsValid(ply) then
            ply:PrintMessage(HUD_PRINTCONSOLE, "[EmporiumRP] Conflict scanner function missing.")
        end
    end
end)

-- Cleanup Utility
concommand.Add("emporium_cleanup", function(ply, cmd, args)
    if not EmporiumRP_Cleanup then
        include("server/sv_cleanup_utility.lua")
    end
    if EmporiumRP_Cleanup then
        EmporiumRP_Cleanup(ply)
    else
        print("[EmporiumRP] Cleanup function missing.")
        if IsValid(ply) then
            ply:PrintMessage(HUD_PRINTCONSOLE, "[EmporiumRP] Cleanup function missing.")
        end
    end
end)

-- Contributor Onboarding Kit
concommand.Add("emporium_onboard_dev", function(ply, cmd, args)
    if not EmporiumRP_ShowOnboarding then
        include("client/cl_onboarding_kit.lua")
    end
    if EmporiumRP_ShowOnboarding then
        EmporiumRP_ShowOnboarding(ply)
    else
        print("[EmporiumRP] Onboarding function missing.")
        if IsValid(ply) then
            ply:PrintMessage(HUD_PRINTCONSOLE, "[EmporiumRP] Onboarding function missing.")
        end
    end
end)

-- Reload Tool
concommand.Add("emporium_reload_tool", function(ply, cmd, args)
    include("shared/sh_error_categorizer.lua")
    include("server/sv_conflict_scanner.lua")
    include("server/sv_cleanup_utility.lua")
    include("client/cl_error_hud.lua")
    include("client/cl_onboarding_kit.lua")
    print("[EmporiumRP] Mega Help Tool reloaded.")
    if IsValid(ply) then
        ply:PrintMessage(HUD_PRINTCONSOLE, "[EmporiumRP] Mega Help Tool reloaded.")
    end
end)
