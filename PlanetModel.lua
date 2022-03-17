-- References: 
-- For RGB Color: 
-- https://roblox.fandom.com/wiki/Tutorial:Using_Color3
-- For Model Creation: 
-- https://developer.roblox.com/en-us/api-reference/class/Model
-- For Part Object creation using Clone() API
-- https://developer.roblox.com/en-us/api-reference/function/Instance/Clone

-- creating the Model
local model = Instance.new("Model")
model.Name = "Model1"
model.Parent = game.Workspace

-- creating the basic planet
local planet1 = Instance.new("Part")
planet1.Parent = game.Workspace
planet1.Material = Enum.Material.Neon
planet1.Size = Vector3.new(2, 2, 2)
planet1.Position = Vector3.new(1, 2, 3)
planet1.Shape = "Ball"
planet1.Anchored = true
planet1.CanCollide = true
-- assign the object's Parent to the Model
planet1.Parent = model
planet1.Name = "Planet1"

-- creating the 2nd cloned planet with Position offset added 8 studs on the X and Z coordinate
local planet2 = planet1:Clone()
planet2.Position = Vector3.new(planet1.Position.X + 8, planet1.Position.Y, planet1.Position.Z + 8)
planet2.Parent = model
planet2.Name = "Planet2"

-- creating the 3rd cloned planet with Position offset minused 8 studs on the X and Z coordinate
local planet3 = planet1:Clone()
planet3.Position = Vector3.new(planet1.Position.X - 8, planet1.Position.Y, planet1.Position.Z - 8)
planet3.Parent = model
planet3.Name = "Planet3"


