local att = {}
att.name = "doi_atow_burstconv"
att.displayName = "Burst-fire receiver"
att.displayNameShort = "Burst"

att.statModifiers = {FireDelayMult = -.35,
AimSpreadMult = 0.6,
HipSpreadMult = 0.5}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/3burstrec")
	att.description = {[1] = {t = "Adds two new firemodes.", c = CustomizableWeaponry.textColors.POSITIVE},
[2] = {t = "Change firemode by pressing E + R", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.BurstCooldownMul = 3.5
	self:CycleFiremodes() 
	self.FireModes = {"2burst","safe", "3burst"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

function att:detachFunc()
	self.BurstCooldownMul = nil
	self:CycleFiremodes()
	self.FireModes = {"auto","safe"}
	self:CycleFiremodes()
	self:CycleFiremodes()
end

CustomizableWeaponry:registerAttachment(att)