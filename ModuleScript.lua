local module = {}

function module.rotate(planet)

	print(planet.Name)

	-- for orientation
	local incr = 360/20

	while true do
		for deg = 0, 360, incr do
			planet.Rotation = Vector3.new(0, deg, 0)
			print(deg)
			wait(1)
		end
	end
end

return module
