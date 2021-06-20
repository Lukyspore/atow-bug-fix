local att = {}
att.name = "am_atow_heavy"
att.displayName = "Heavy rounds"
att.displayNameShort = "HVY"

att.statModifiers = {DamageMult = 0.15,
	AimSpreadMult = 0.3,
	HipSpreadMult = 0.3,
	RecoilMult = 0.2,
	MaxSpreadIncMult = 0.25}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/hvyammo")
	att.description = {{t = "Decreases damage fall-off by 30%", c = CustomizableWeaponry.textColors.POSITIVE},
	{t = "Increases surface penetration by 40%", c = CustomizableWeaponry.textColors.POSITIVE},}
end

function att:attachFunc()
	self.PenMod = 1.4
	self:unloadWeapon()
end

function att:detachFunc()
	self.PenMod = 1
	self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)