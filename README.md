This is a basic example for creating a Model and assigned planet objects to the Model by using Roblox Studio and Lua Script.
<br>
Step 1: Place the PlanetModel.lua script under the StarterPlayer -> StarterPlayerScript -> PlanetModel.lua
<br>
Step 2:Place the ModuleScript.lua script under the ReplicatedStorage -> ModuleScript.lua
<br> 

![alt PlanetModelRotate](https://github.com/fruitmonkey01/UsingObjectModel/blob/main/PlanetModelRotate.png)

<br> 
The purpose of using Module Script is to make planet rotation function reusable.
<br> 
The purpose of using RunService.RenderStepped is for updating planet's rotation.

<br> 
Some references used in the example described in the following:
<br>
References:
<br>
1. For Model Creation:
<br>
https://developer.roblox.com/en-us/api-reference/class/Model
<br>
2. For Part Object creation using Clone() API:
<br>
https://developer.roblox.com/en-us/api-reference/function/Instance/Clone
<br>
3. For the rotate function for planet orientation, which defined in the ModuleScript
<br>
ModuleScript.lua located in the the game.ReplicatedStorage
<br>
https://developer.roblox.com/en-us/api-reference/class/ModuleScript
<br>
4. For Rotate function:
<br>
https://developer.roblox.com/en-us/api-reference/property/BasePart/Orientation
<br>
