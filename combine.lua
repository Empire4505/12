local petIds = require("pet_data")

local args = {
    [1] = {}
}

for i = 1, #petIds do
    args[1][petIds[i]] = {
        ["exists"] = 1259,
        ["name"] = "HugeOgre",
        ["petType"] = "golden",
        ["level"] = 1,
        ["equipped"] = false,
        ["currentXP"] = 0
    }
end

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerRainbowMerge"):FireServer(unpack(args))
