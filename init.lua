
--leaf overrides

minetest.override_item("default:leaves", {
	drawtype = "mesh",
	mesh = "leaf.b3d",
	paramtype = "light",
	visual_scale = 0.5,
})

minetest.override_item("default:jungleleaves", {
	drawtype = "mesh",
	mesh = "leaf.b3d",
	paramtype = "light",
	visual_scale = 0.5,
})

minetest.override_item("default:pine_needles", {
	drawtype = "mesh",
	mesh = "leaf.b3d",
	paramtype = "light",
	visual_scale = 0.5,
})

minetest.override_item("default:aspen_leaves", {
	drawtype = "mesh",
	mesh = "leaf.b3d",
	paramtype = "light",
	visual_scale = 0.5,
})

minetest.register_abm({
	nodenames = "default:leaves",
	interval = 5,
	chance = 1,
	action = function(pos, node)
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "default:snow" then
			minetest.env:set_node(pos, {name="nodebox_trees:leaves_with_snow"})
		end
	end,
})

minetest.register_abm({
	nodenames = "default:pine_needles",
	interval = 5,
	chance = 1,
	action = function(pos, node)
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "default:snow" then
			minetest.env:set_node(pos, {name="nodebox_trees:pine_needles_with_snow"})
		end
	end,
})

--leaves
minetest.register_node("nodebox_trees:leaves_with_snow", {
	description = "Leaves With Snow",
	drawtype = "mesh",
	mesh = "leaf.b3d",
	tiles = {"default_leaves_snow.png", "default_snow.png", "default_snow.png",}, 
	paramtype = "light",
	visual_scale = 0.5,
	groups = {snappy=1, oddly_breakable_by_hand=1, leaves=1}
})

minetest.register_node("nodebox_trees:pine_needles_with_snow", {
	description = "Pine Needles With Snow",
	drawtype = "mesh",
	mesh = "leaf.b3d",
	tiles = {"default_pine_needles_snow.png",}, 
	paramtype = "light",
	visual_scale = 0.5,
	groups = {snappy=1, oddly_breakable_by_hand=1, leaves=1}
})

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

--change trunk to trunk base

minetest.register_abm({
	nodenames = {"default:tree"},
	interval = 5,
	chance = 1,
	action = function(pos, node)
		if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "default:grass" then
			minetest.set_node(pos, {name="nodebox_trees:trunk_base", param2=node.param2})
		end
	end
})

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