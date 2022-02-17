city_commoditymarket = {}

local modpath = minetest.get_modpath(minetest.get_current_modname())
local default_modpath = minetest.get_modpath("default")
local currency_modpath = minetest.get_modpath("currency")

local default_items = {"default:axe_bronze","default:axe_diamond","default:axe_mese","default:axe_steel","default:axe_steel","default:axe_stone","default:axe_wood","default:pick_bronze","default:pick_diamond","default:pick_mese","default:pick_steel","default:pick_stone","default:pick_wood","default:shovel_bronze","default:shovel_diamond","default:shovel_mese","default:shovel_steel","default:shovel_stone","default:shovel_wood","default:sword_bronze","default:sword_diamond","default:sword_mese","default:sword_steel","default:sword_stone","default:sword_wood", "default:blueberries", "default:book", "default:bronze_ingot", "default:clay_brick", "default:clay_lump", "default:coal_lump", "default:copper_ingot", "default:copper_lump", "default:diamond", "default:flint", "default:gold_ingot", "default:gold_lump", "default:iron_lump", "default:mese_crystal", "default:mese_crystal_fragment", "default:obsidian_shard", "default:paper", "default:steel_ingot", "default:stick", "default:tin_ingot", "default:tin_lump", "default:acacia_tree", "default:acacia_wood", "default:apple", "default:aspen_tree", "default:aspen_wood", "default:blueberry_bush_sapling", "default:bookshelf", "default:brick", "default:bronzeblock", "default:bush_sapling", "default:cactus", "default:clay", "default:coalblock", "default:cobble", "default:copperblock", "default:desert_cobble", "default:desert_sand", "default:desert_sandstone", "default:desert_sandstone_block", "default:desert_sandstone_brick", "default:desert_stone", "default:desert_stone_block", "default:desert_stonebrick", "default:diamondblock", "default:dirt", "default:glass", "default:goldblock", "default:gravel", "default:ice", "default:junglegrass", "default:junglesapling", "default:jungletree", "default:junglewood", "default:ladder_steel", "default:ladder_wood", "default:large_cactus_seedling", "default:mese", "default:mese_post_light", "default:meselamp", "default:mossycobble", "default:obsidian", "default:obsidian_block", "default:obsidian_glass", "default:obsidianbrick", "default:papyrus", "default:pine_sapling", "default:pine_tree", "default:pine_wood", "default:sand", "default:sandstone", "default:sandstone_block", "default:sandstonebrick", "default:sapling", "default:silver_sand", "default:silver_sandstone", "default:silver_sandstone_block", "default:silver_sandstone_brick", "default:snow", "default:snowblock", "default:steelblock", "default:stone", "default:stone_block", "default:stonebrick", "default:tinblock", "default:tree", "default:wood",}

if currency_modpath then
  city_commoditymarket_currency = {
    ["currency:minegeld_cent_5"] = 0.05,
    ["currency:minegeld_cent_10"] = 0.10,
    ["currency:minegeld_cent_25"] = 0.25,
		["currency:minegeld"] = 1,
		["currency:minegeld_5"] = 5,
		["currency:minegeld_10"] = 10,
		["currency:minegeld_50"] = 50,
		["currency:minegeld_100"] = 100
}
end

-- defines a market and the varables
local market1_def = {
    description = "Central Market Red", -- A short name for this market, appears as the text of the "info" tab of the market's UI
    long_description = "A Central Market for trade", -- A longer description with flavor text and other information to present to the user, shown in the info tab. Optional.
    currency = city_commoditymarket_currency,
    currency_symbol = "$", -- "\u{263C}" Alchemical symbol for gold
	inventory_limit = 300, -- max blocks one player can store in the market inventory
	sell_limit = 550, -- max blocks one player can sell at one time
	initial_items = default_items,
}

commoditymarket.register_market("central_market1", market1_def)

minetest.register_node("city_commoditymarket:central_market_1", {
	description = market1_def.description,
	_doc_items_longdesc = market1_def.long_description,
	tiles = {"central_market2_top.png","central_market2_top.png",
		"central_market2_side.png","central_market2_side.png",
		"central_market2_side.png","central_market2_side.png^central_market_front.png^central_market_front1.png",},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1,},
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        commoditymarket.show_market("central_market1", clicker:get_player_name())
		end
})

-- defines a market and the varables
local market2_def = {
    description = "Central Market Blue", -- A short name for this market, appears as the text of the "info" tab of the market's UI
    long_description = "A Central Market for trade", -- A longer description with flavor text and other information to present to the user, shown in the info tab. Optional.
    currency = city_commoditymarket_currency,
    currency_symbol = "$", -- "\u{263C}" Alchemical symbol for gold
	inventory_limit = 300, -- max blocks one player can store in the market inventory
	sell_limit = 550, -- max blocks one player can sell at one time
	initial_items = default_items,
}

commoditymarket.register_market("central_market2", market2_def)

minetest.register_node("city_commoditymarket:central_market_2", {
	description = market2_def.description,
	_doc_items_longdesc = market2_def.long_description,
	tiles = {"central_market2_top.png","central_market2_top.png",
		"central_market2_side.png","central_market2_side.png",
		"central_market2_side.png","central_market2_side.png^central_market_front.png^central_market_front2.png",},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1,},
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        commoditymarket.show_market("central_market2", clicker:get_player_name())
		end
})

-- defines a market and the varables
local market3_def = {
    description = "Central Market Green", -- A short name for this market, appears as the text of the "info" tab of the market's UI
    long_description = "A Central Market for trade", -- A longer description with flavor text and other information to present to the user, shown in the info tab. Optional.
    currency = city_commoditymarket_currency,
    currency_symbol = "$", -- "\u{263C}" Alchemical symbol for gold
	inventory_limit = 300, -- max blocks one player can store in the market inventory
	sell_limit = 550, -- max blocks one player can sell at one time
	initial_items = default_items,
}

commoditymarket.register_market("central_market3", market3_def)

minetest.register_node("city_commoditymarket:central_market_3", {
	description = market3_def.description,
	_doc_items_longdesc = market3_def.long_description,
	tiles = {"central_market2_top.png","central_market2_top.png",
		"central_market2_side.png","central_market2_side.png",
		"central_market2_side.png","central_market2_side.png^central_market_front.png^central_market_front3.png",},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1,},
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        commoditymarket.show_market("central_market3", clicker:get_player_name())
		end
})

-- defines a market and the varables
local market4_def = {
    description = "Central Market Orange", -- A short name for this market, appears as the text of the "info" tab of the market's UI
    long_description = "A Central Market for trade", -- A longer description with flavor text and other information to present to the user, shown in the info tab. Optional.
    currency = city_commoditymarket_currency,
    currency_symbol = "$", -- "\u{263C}" Alchemical symbol for gold
	inventory_limit = 300, -- max blocks one player can store in the market inventory
	sell_limit = 550, -- max blocks one player can sell at one time
	initial_items = default_items,
}

commoditymarket.register_market("central_market4", market4_def)

minetest.register_node("city_commoditymarket:central_market_4", {
	description = market4_def.description,
	_doc_items_longdesc = market4_def.long_description,
	tiles = {"central_market2_top.png","central_market2_top.png",
		"central_market2_side.png","central_market2_side.png",
		"central_market2_side.png","central_market2_side.png^central_market_front.png^central_market_front4.png",},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 1,},
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        commoditymarket.show_market("central_market4", clicker:get_player_name())
		end
})
