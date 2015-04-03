-- Postrequire to lib/tweak_data/weaponfactorytweakdata
local old_vertgrips =  WeaponFactoryTweakData._init_vertical_grips
function WeaponFactoryTweakData:_init_vertical_grips()
	old_vertgrips(self)
	Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_LocExample", function(loc)
	LocalizationManager:add_localized_strings( {
		["bm_wp_upg_vg_ass_smg_verticalgrip"] = "Vertical Grip",
		["bm_wp_upg_vg_ass_smg_stubby"] = "Stubby Grip",
		["bm_wp_upg_vg_ass_smg_afg"] = "Angled Grip",
	} )
	end)
		self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip.stats = {
			value = 2,
			concealment = -1
			}
		self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip.pcs = {30, 40}
		self.parts.wpn_fps_upg_vg_ass_smg_stubby.stats = {
			value = 2,
			concealment = 1
			}
		self.parts.wpn_fps_upg_vg_ass_smg_stubby.pcs = {30, 40}
		self.parts.wpn_fps_upg_vg_ass_smg_afg.stats = {
			value = 2,
			concealment = -1
			}
		self.parts.wpn_fps_upg_vg_ass_smg_afg.pcs = {30, 40}
end
