local function IsEmporiumDev()
    local ply = LocalPlayer()
    return IsValid(ply) and ply:SteamID() == "STEAM_0:1:12345678"
end

hook.Add("InitPostEntity", "EmporiumRP_ErrorHUDInit", function()
    if not IsEmporiumDev() then
        MsgC(Color(255, 0, 0), "[EmporiumRP] Access denied. Tribunal tools restricted.\n")
        return
    end

    MsgC(Color(0, 255, 0), "[EmporiumRP] Error HUD initialized. Developer access confirmed.\n")
end)
