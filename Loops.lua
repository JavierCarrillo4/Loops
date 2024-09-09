local myTable = {4, 2, 213, 1, "hello!", true}	-- creates a table, myTable and assigns 6 elements

local Players = game.Players:GetPlayers()	-- gets all players in the game and assigns
											-- it to the variable Players
											
local ItemsInWorkspace = game.Workspace:GetChildren()	-- gets all Parent items in Workspace

local DescendantsInWorkspace = game.Workspace:GetDescendants()	-- gets all Parent items and Children
																-- of Workspace

for i = 1, 10, 1 do -- intialize variable i to 1, stop when i = 10,
					-- increase i by 1 every time we loop
	print(i)
end

for i, v in pairs(myTable) do	-- i is the index, v is the value (table)
	print(i)
	print(v)
end

for index, items in ipairs(myTable) do	-- ipairs returns items in table in order rather than scrammbled
	print(index)
	print(items)
end

wait(5)

while #game.Players:GetPlayers() > 0 do	-- While condition is true run loop
										-- Gets the number of players that joined
										--the game and compares if it is greater than 0
	print("There is more than 0 player in the game")
	wait(1)
	
	if #game.Players:GetPlayers() == 0 then	-- Gets the number of players that joined
											--the game and compares if it is equal to 0
		print("All players have left the game!")
		break
	end
end

repeat
	print("hello")
	wait(1)
until
	#game.Players:GetPlayers() > 0	-- will continue to run for each player present
