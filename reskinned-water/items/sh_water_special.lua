
ITEM.name = "Sparkling Breen's Water"
ITEM.model = Model("models/props_lunk/popcan01a.mdl")
ITEM.skin = 2
ITEM.description = "A yellow aluminium can of carbonated water."
ITEM.category = "Consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(75)
		client:SetHealth(math.Clamp(client:Health() + 10, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
	OnCanRun = function(itemTable)
		//return !itemTable.player:IsCombine()
	end
}
