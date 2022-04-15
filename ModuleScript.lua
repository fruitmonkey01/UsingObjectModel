local module = {}

local RunService = game:GetService("RunService")
local incr = 360/10
local deg = 0

function module.rotate(planet, rotX, rotY, rotZ)
	print(planet.Name)
	-- for orientation
	RunService.RenderStepped:Connect(function()
		deg = deg + incr
		if rotX then
			planet.Rotation = Vector3.new(deg, 0, 0)
		elseif rotY then
			planet.Rotation = Vector3.new(0, deg, 0)
		else
			planet.Rotation = Vector3.new(0, 0, deg)
		end
		print(deg)
		if deg >= 360 then
			deg = 0
		end
	end)
	
end

return module
