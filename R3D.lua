--#region Type aliases

---@alias R3D.ModelChannelCall { action: "add"|"remove"|"update"|"setMatrix", modelId: string, model: obj }
---@alias R3D.InputChannelCall { mat: mat4, frustum:{near:table}}
---@alias R3D.OutputChannelCall table
--#endregion


---@class R3D 
--- Top-level namespace object
local R3D = {}

--- Model channel 
-- Handles model adding, removing and modification
---@type love.Channel
R3D.modelChannel = love.thread.getChannel("r3d_model")

--- Input channel 
-- Transports matrices for calculations
---@type love.Channel
R3D.inputChannel = love.thread.getChannel("r3d_input")

--- Output channel 
-- Transports arrays of draw calls
---@type love.Channel
R3D.outputChannel = love.thread.getChannel("r3d_output")

return R3D