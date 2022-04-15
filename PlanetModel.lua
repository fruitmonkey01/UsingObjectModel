print("Hello world!")
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
local stud_offset = 8

-- creating the basic planet
local planet1 = Instance.new("Part")
planet1.Parent = game.Workspace
planet1.Material = Enum.Material.Wood -- .Neon
planet1.Size = Vector3.new(2, 2, 2)
planet1.Position = Vector3.new(1, 2, 3)
planet1.Shape = "Ball"
planet1.Anchored = true
planet1.CanCollide = true
-- assign the object's Parent to the Model
planet1.Parent = model
planet1.Name = "Planet1"
planet1.Color = Color3.new(0.551961, 0.55095, 0.8500404)

-- creating the 2nd cloned planet with Position offset added 8 studs on the X and Z coordinate
local planet2 = planet1:Clone()
planet2.Position = Vector3.new(planet1.Position.X + stud_offset, planet1.Position.Y, planet1.Position.Z + stud_offset)
planet2.Parent = model
planet2.Name = "Planet2"
planet2.Color = Color3.new(0.501961, 0.25095, 0.0100404) -- Moca

-- creating the 3rd cloned planet with Position offset minused 8 studs on the X and Z coordinate
local planet3 = planet1:Clone()
planet3.Position = Vector3.new(planet1.Position.X - stud_offset, planet1.Position.Y, planet1.Position.Z - stud_offset)
planet3.Parent = model
planet3.Name = "Planet3"
planet3.Color = Color3.new(0.5, 1, 0.5) -- Banana

-- call rotate function for orientation, which defined in the ModuleScript under the game.ReplicatedStorage
local module = require(game.ReplicatedStorage.ModuleScript)

-- pass the part to rotate itself, for example: planet2
module.rotate(planet1, true, false, false)
module.rotate(planet2, false, true, false)
module.rotate(planet3, false, false, true)
