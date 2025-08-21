-- EmporiumRP Contributor Onboarding Kit
-- Displays lore headers, licensing scaffolds, and fingerprint stubs
-- Author: MethMonsignor | License: MIT | Lore: Tribunal welcome protocol

function EmporiumRP_ShowOnboarding(ply)
    if not IsValid(ply) then return end

    chat.AddText(Color(100, 200, 255), "[EmporiumRP] Welcome, contributor.")
    chat.AddText(Color(255, 255, 255), "Use the following scaffolds to ensure compliance and immersion:")
    chat.AddText(Color(200, 255, 200), "// Author: YourNameHere")
    chat.AddText(Color(200, 255, 200), "// License: MIT")
    chat.AddText(Color(200, 255, 200), "// Lore: Tribunal-sanctioned module")
    chat.AddText(Color(200, 255, 200), "// Fingerprint: EmporiumRP_" .. ply:SteamID64())

    MsgC(Color(100, 200, 255), "[EmporiumRP] Onboarding scaffold printed to chat.\n")
end
