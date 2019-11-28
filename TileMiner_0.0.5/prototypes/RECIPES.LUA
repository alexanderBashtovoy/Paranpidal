data:extend(
{
  {
    type = "recipe",
    name = "tile-miner",
    enabled = false,subgroup="tile-miner",
		
    ingredients = {
      {"electric-mining-drill", 1},
      {"iron-gear-wheel", 5}
    },
    energy_required = 2,
    results = {{type="item",name="tile-miner",amount=10}}
  },{
    type = "recipe",
    name = "tile-miner-b",
    enabled = false,subgroup="tile-miner-b",
    ingredients = {
      {"burner-mining-drill", 1},
      {"iron-gear-wheel", 5}
    },
    energy_required = 2,
    results = {{type="item",name="tile-miner-b",amount=5}}
  },{
    type = "recipe",
    name = "tile-miner-lb",
    enabled = false,subgroup="tile-miner-b",
    ingredients = {
      {"tile-miner-b", 1}
    },
    energy_required = 2,
    result = "tile-miner-l"
  },{
    type = "recipe",
    name = "tile-miner-bl",
    enabled = false,subgroup="tile-miner-b",
    ingredients = {
      {"tile-miner-l", 1}
    },
    energy_required = 2,
    result = "tile-miner-b"
  },{
    type = "recipe",
    name = "tile-miner-3b",
    enabled = false,subgroup="tile-miner-b",
    ingredients = {
      {"tile-miner-b", 9}
    },
    energy_required = 2,
    result = "tile-miner-3"
  },{
    type = "recipe",
    name = "tile-miner-b3",
    enabled = false,subgroup="tile-miner-b",
    ingredients = {
      {"tile-miner-3", 1}
    },
    energy_required = 2,
    results ={{name="tile-miner-b", amount=9}}
  },{
    type = "recipe",
    name = "tile-miner-op",
    enabled = false,subgroup="tile-miner-b",
    ingredients = {
      {"tile-miner-3", 1}
    },
    energy_required = 2,
    results ={{name="tile-miner-b", amount=9}}
  },{
    type = "recipe",
    name = "tile-miner-3e",
    enabled = false,subgroup="tile-miner",
    ingredients = {
      {"tile-miner", 9}
    },
    energy_required = 2,
    result = "tile-miner-e3"
  },{
    type = "recipe",
    name = "tile-miner-e3",
    enabled = false,subgroup="tile-miner",
    ingredients = {
      {"tile-miner-e3", 1}
    },
    energy_required = 2,
    results ={{name="tile-miner", amount=9}}
  }
 })
