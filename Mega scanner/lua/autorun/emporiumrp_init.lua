-- Module loader with fallback
local function safeInclude(path)
    if file.Exists(path, "LUA") then
        include(path)
        print("[EmporiumRP] Loaded: " .. path)
    else
        print("[EmporiumRP] Missing or empty: " .. path)
    end
end

-- Send client files
if SERVER then
    AddCSLuaFile("shared/sh_error_categorizer.lua")
    AddCSLuaFile("client/cl_error_hud.lua")
    AddCSLuaFile("client/cl_onboarding_kit.lua")
end

-- Shared
safeInclude("shared/sh_error_categorizer.lua")

-- Server
if SERVER then
    safeInclude("server/sv_conflict_scanner.lua")
    safeInclude("server/sv_cleanup_utility.lua")
end

-- Client
if CLIENT then
    safeInclude("client/cl_error_hud.lua")
    safeInclude("client/cl_onboarding_kit.lua")
end