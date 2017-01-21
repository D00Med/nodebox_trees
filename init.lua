
-- waterlily Originally by Ironzorg (MIT) and VanessaE (MIT)
minetest.register_node("nodebox_trees:waterlily", {
	description = "Waterlily (no flower)",
	drawtype = "mesh",
	mesh = "waterlily.b3d",
	paramtype = "light",
	paramtype2 = "facedir",
	visual_scale = 0.5,
	tiles = {"nodeboxtrees_waterlily_noflower.png",},
	inventory_image = "flowers_waterlily.png",
	wield_image = "flowers_waterlily.png",
	liquids_pointable = true,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	floodable = true,
	groups = {snappy = 3, flower = 1, flammable = 1},
	sounds = default.node_sound_leaves_defaults(),
	node_placement_prediction = "",
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16}
	},

	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.above
		local node = minetest.get_node(pointed_thing.under).name
		local def = minetest.registered_nodes[node]
		local player_name = placer:get_player_name()

		if def and def.liquidtype == "source" and
				minetest.get_item_group(node, "water") > 0 then
			if not minetest.is_protected(pos, player_name) then
				if math.random(1,2) == 1 then
				minetest.set_node(pos, {name = "nodebox_trees:waterlily",
					param2 = math.random(0, 3)})
				else
				minetest.set_node(pos, {name = "flowers:waterlily",
					param2 = math.random(0, 3)})
				end
				if not minetest.setting_getbool("creative_mode") then
					itemstack:take_item()
				end
			else
				minetest.chat_send_player(player_name, "Node is protected")
				minetest.record_protection_violation(pos, player_name)
			end
		end

		return itemstack
	end
})

--overrides

minetest.override_item("default:cactus", {
	drawtype = "mesh",
	mesh = "cactus.b3d",
	tiles = {"nodeboxtrees_cactus.png"},
	paramtype = "light",
	visual_scale = 0.5,
	selection_box = {
	type = "fixed",
	fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
	collision_box = {
	type = "fixed",
	fixed = {-0.4, -0.5, -0.4, 0.4, 0.5, 0.4},
	},
})

minetest.override_item("flowers:waterlily", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_waterlily.png"},
	mesh = "waterlily.b3d",
	paramtype = "light",
	visual_scale = 0.5,
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.above
		local node = minetest.get_node(pointed_thing.under).name
		local def = minetest.registered_nodes[node]
		local player_name = placer:get_player_name()

		if def and def.liquidtype == "source" and
				minetest.get_item_group(node, "water") > 0 then
			if not minetest.is_protected(pos, player_name) then
				if math.random(1,2) == 1 then
				minetest.set_node(pos, {name = "nodebox_trees:waterlily",
					param2 = math.random(0, 3)})
				else
				minetest.set_node(pos, {name = "flowers:waterlily",
					param2 = math.random(0, 3)})
				end
				if not minetest.setting_getbool("creative_mode") then
					itemstack:take_item()
				end
			else
				minetest.chat_send_player(player_name, "Node is protected")
				minetest.record_protection_violation(pos, player_name)
			end
		end

		return itemstack
	end
})

minetest.override_item("default:coral_skeleton", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_scoral.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

minetest.override_item("default:coral_brown", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_bcoral.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

minetest.override_item("default:coral_orange", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_ocoral.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

minetest.override_item("default:bush_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_leaves_simple.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

minetest.override_item("default:acacia_bush_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_acacia_leaves_simple.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

minetest.override_item("default:leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
--	paramtype2 = "degrotate",
--	on_construct = function(pos)
--		local node = minetest.get_node(pos)
--		node.param2 = math.random(10, 169)
--	end
})

minetest.override_item("default:acacia_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_acacia_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})


minetest.override_item("default:jungleleaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_jungleleaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

minetest.override_item("default:pine_needles", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_pine_needles.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})

minetest.override_item("default:aspen_leaves", {
	drawtype = "mesh",
	tiles = {"nodeboxtrees_aspen_leaves.png"},
	wield_scale = {x = 0.5, y = 0.5, z = 0.5},
	mesh = "leaf.obj",
	paramtype = "light",
})



--leaves

local snowy_leaves = false

if snowy_leaves then
minetest.register_node("nodebox_trees:leaves_with_snow", {
	description = "Leaves With Snow",
	drawtype = "mesh",
	mesh = "leaf.obj",
	tiles = {"nodeboxtrees_leaves_snow.png", "default_snow.png", "default_snow.png",},
	paramtype = "light",
	groups = {snappy=1, oddly_breakable_by_hand=1, leaves=1}
})

minetest.register_node("nodebox_trees:bush_leaves_with_snow", {
	description = "Bush Leaves With Snow",
	drawtype = "mesh",
	mesh = "leaf.obj",
	tiles = {"nodeboxtrees_leaves_snow_simple.png", "default_snow.png", "default_snow.png",},
	paramtype = "light",
	groups = {snappy=1, oddly_breakable_by_hand=1, leaves=1}
})

minetest.register_node("nodebox_trees:pine_needles_with_snow", {
	description = "Pine Needles With Snow",
	drawtype = "mesh",
	mesh = "leaf.obj",
	tiles = {"nodeboxtrees_pine_needles_snow.png",},
	paramtype = "light",
	groups = {snappy=1, oddly_breakable_by_hand=1, leaves=1}
})

--replace leaves with leaves_with_snow

minetest.register_on_generated(function(minp, maxp)
	if maxp.y < -1 or maxp.y > 31000 then
		return
	end
	local needles = minetest.find_nodes_in_area(minp, maxp,
		{"default:pine_needles"})
	for n = 1, #needles do
		local pos = {x=needles[n].x, y=needles[n].y, z=needles[n].z}
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "default:snow" then
				minetest.set_node(pos, {name="nodebox_trees:pine_needles_with_snow"})
		end
	end

	local leaves = minetest.find_nodes_in_area(minp, maxp,
		{"default:leaves"})
	for n = 1, #leaves do
		local pos = {x=leaves[n].x, y=leaves[n].y, z=leaves[n].z}
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "default:snow" then
				minetest.set_node(pos, {name="nodebox_trees:leaves_with_snow"})
		end
	end

	local bush = minetest.find_nodes_in_area(minp, maxp,
		{"default:bush_leaves"})
	for n = 1, #bush do
		local pos = {x=bush[n].x, y=bush[n].y, z=bush[n].z}
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "default:snow" then
				minetest.set_node(pos, {name="nodebox_trees:bush_leaves_with_snow"})
		end
	end
end)

end

--trunk overrides

minetest.override_item("default:acacia_tree", {
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.375, -0.5, -0.4375, 0.375, 0.5, 0.375}, -- NodeBox1
			{-0.4375, -0.5, -0.375, 0.4375, 0.5, 0.375}, -- NodeBox2
			{-0.375, -0.5, -0.4375, 0.375, 0.5, 0.4375}, -- NodeBox3
			{-0.3125, -0.5, -0.5, -0.25, 0.5, 0.5}, -- NodeBox4
			{-0.125, -0.5, -0.5, -0.0625, 0.5, 0.5}, -- NodeBox5
			{0.0625, -0.5, -0.5, 0.125, 0.5, 0.5}, -- NodeBox6
			{0.25, -0.5, -0.5, 0.3125, 0.5, 0.5}, -- NodeBox7
			{-0.5, -0.5, 0.25, 0.5, 0.5, 0.3125}, -- NodeBox8
			{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.125}, -- NodeBox9
			{-0.5, -0.5, -0.125, 0.5, 0.5, -0.0625}, -- NodeBox10
			{-0.5, -0.5, -0.3125, 0.5, 0.5, -0.25}, -- NodeBox11
		},
		connect_front = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_back = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_left = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_right = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
	},
	connects_to = {"default:acacia_tree"}
})

minetest.override_item("default:tree", {
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.375, -0.5, -0.4375, 0.375, 0.5, 0.4375}, -- NodeBox1
			{-0.4375, -0.5, -0.375, 0.4375, 0.5, 0.375}, -- NodeBox2
		},
		connect_front = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_back = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_left = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_right = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
	},
	connects_to = {"default:tree"}
})

minetest.override_item("default:aspen_tree", {
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.1875, -0.5, -0.25, 0.1875, 0.5, 0.25}, -- NodeBox1
			{-0.25, -0.5, -0.1875, 0.25, 0.5, 0.1875}, -- NodeBox2
		},
		connect_front = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_back = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_left = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_right = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
	},
	connects_to = {"default:aspen_tree"}
})

minetest.override_item("default:pine_tree", {
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.3125, -0.5, -0.375, 0.3125, 0.5, 0.375}, -- NodeBox12
			{-0.375, -0.5, -0.3125, 0.375, 0.5, 0.3125}, -- NodeBox13
		},
		connect_front = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_back = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_left = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_right = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
	},
	connects_to = {"default:pine_tree"}
})

minetest.override_item("default:jungletree", {
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "connected",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125}, -- NodeBox3
			{-0.375, -0.5, -0.0625, 0.375, 0.5, 0.25}, -- NodeBox4
			{-0.4375, -0.5, 0.0625, 0.4375, 0.5, 0.1875}, -- NodeBox5
			{-0.375, -0.5, -0.25, 0.375, 0.5, -0.125}, -- NodeBox6
			{-0.25, -0.5, -0.375, 0.1875, 0.5, 0}, -- NodeBox7
			{-0.125, -0.5, -0.4375, 0.125, 0.5, -0.1875}, -- NodeBox8
			{0, -0.5, 0.3125, 0.25, 0.5, 0.375}, -- NodeBox9
			{0.0625, -0.5, 0.3125, 0.1875, 0.5, 0.4375}, -- NodeBox10
			{-0.25, -0.5, 0.0625, -0.0625, 0.5, 0.375}, -- NodeBox11
		},
		connect_front = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_back = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_left = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
		connect_right = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}},
	},
	connects_to = {"default:jungletree"}
})


--[[
minetest.register_node("nodebox_trees:trunk_base", {
	description = "Tree (base)",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.4375, 0.375, 0.5, 0.4375}, -- NodeBox1
			{-0.4375, -0.5, -0.375, 0.4375, 0.5, 0.375}, -- NodeBox2
			{0.4375, -0.5, -0.1875, 0.5, 0.375, 0.125}, -- NodeBox3
			{0.4375, -0.5, -0.3125, 0.5, 0.125, -0.1875}, -- NodeBox4
			{-0.1875, -0.5, -0.5, 0.1875, 0.1875, -0.4375}, -- NodeBox5
			{-0.5, -0.5, 0, -0.4375, -0.125, 0.25}, -- NodeBox6
			{-0.5, -0.5, -0.25, -0.4375, 0.125, 0}, -- NodeBox7
			{-0.25, -0.5, 0.4375, 0.1875, 0.0625, 0.5}, -- NodeBox8
		}
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("nodebox_trees:pine_trunk_base", {
	description = "Tree (base)",
	tiles = {"default_pine_tree_top.png", "default_pine_tree_top.png", "default_pine_tree.png"},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.375, 0.3125, 0.5, 0.375}, -- NodeBox12
			{-0.375, -0.5, -0.3125, 0.375, 0.5, 0.3125}, -- NodeBox13
			{-0.4375, -0.5, -0.1875, 0.4375, -0.0625, 0.125}, -- NodeBox14
			{-0.125, -0.5, -0.4375, 0.1875, -0.0625, 0.4375}, -- NodeBox15
		}
	},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})
]]

--original trunks

minetest.register_node("nodebox_trees:tree", {
	description = "Tree (default)",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("nodebox_trees:pine_tree", {
	description = "Pine Tree (default)",
	tiles = {"default_pine_tree_top.png", "default_pine_tree_top.png", "default_pine_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("nodebox_trees:aspen_tree", {
	description = "Aspen Tree (default)",
	tiles = {"default_aspen_tree_top.png", "default_aspen_tree_top.png", "default_aspen_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("nodebox_trees:jungletree", {
	description = "Jungle Tree (default)",
	tiles = {"default_jungletree_top.png", "default_jungletree_top.png", "default_jungletree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("nodebox_trees:acacia_tree", {
	description = "Acacia Tree (default)",
	tiles = {"default_acacia_tree_top.png", "default_acacia_tree_top.png", "default_acacia_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})



--mapgen

local mapgen = true

if mapgen and minetest.get_mapgen_setting("mg_name") ~= "v6" then
dofile(minetest.get_modpath("nodebox_trees").."/mapgen.lua")
end
