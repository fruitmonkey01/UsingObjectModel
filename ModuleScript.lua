local module = {}

local RunService = game:GetService("RunService")
-- increment rate: increment 60 degrees per frame update 
-- when reach the 360 degree, wrap around to 0 degree.
local increment_rate = 360/60
local degree = 0

-- Params: planet: the planet to rotate
-- rotX: rotate the planet in degrees around the X axes using a Vector3
-- rotY: rotate the planet in degrees around the Y axes using a Vector3
-- rotZ: rotate the planet in degrees around the Z axes using a Vector3
function module.rotate(planet, rotX, rotY, rotZ)
	-- for orientation
	RunService.RenderStepped:Connect(function()
		degree = degree + increment_rate
		if rotX then
			planet.Rotation = Vector3.new(degree, 0, 0)
		elseif rotY then
			planet.Rotation = Vector3.new(0, degree, 0)
		else
			planet.Rotation = Vector3.new(0, 0, degree)
		end
		print("planet " .. tostring(planet.Name) .. degree)
		if degree >= 360 then
			degree = 0
		end
	end)

end

return module
