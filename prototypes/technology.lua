data:extend({
	{
		type = "technology",
		name = "exploding-rocks-1",
		description = "exploding-rocks-1",
		icon = "__base__/graphics/icons/stone.png",
		effects = {	},
		prerequisites = {"military"},
	    upgrade = true,
        unit =
	    {
	      count = 50,
	      ingredients =
	      {
	        {"science-pack-1", 1},
	        {"science-pack-2", 1}
	      },
	      time = 30
	    },

	    order = "e-l-z[rocks]-1"
	},

	{
		type = "technology",
		name = "exploding-rocks-2",
		icon = "__base__/graphics/icons/stone.png",
		effects = {	},
		prerequisites = {"exploding-rocks-1"},
	    upgrade = true,
        unit =
	    {
	      count = 100,
	      ingredients =
	      {
	        {"science-pack-1", 1},
	        {"science-pack-2", 1}
	      },
	      time = 30
	    },

	    order = "e-l-z[rocks]-2"
	},

	{
		type = "technology",
		name = "exploding-rocks-3",
		icon = "__base__/graphics/icons/stone.png",
		effects = {	},
		prerequisites = {"exploding-rocks-2"},
	    upgrade = true,
        unit =
	    {
	      count = 50,
	      ingredients =
	      {
	        {"science-pack-1", 1},
	        {"science-pack-2", 1},
	        {"science-pack-3", 1}
	      },
	      time = 30
	    },

	    order = "e-l-z[rocks]-3"
	},

	{
		type = "technology",
		name = "exploding-rocks-4",
		icon = "__base__/graphics/icons/stone.png",
		effects = {	},
		prerequisites = {"exploding-rocks-3"},
	    upgrade = true,
        unit =
	    {
	      count = 100,
	      ingredients =
	      {
	        {"science-pack-1", 1},
	        {"science-pack-2", 1},
	        {"science-pack-3", 1}
	      },
	      time = 30
	    },

	    order = "e-l-z[rocks]-4"
	}
})
