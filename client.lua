
-- Mask command
RegisterCommand("mask", function(source, args)
    -- If argument 1 provided
    if args[1] then
        -- Initialise color variable
        local color = 0
        -- If color number provided in argument 2
        if args[2] then
            -- Set color to provided argument
            color = tonumber(args[2])
        end

        -- Update ped
        SetPedComponentVariation(PlayerPedId(), 1, tonumber(args[1]), color, 1)
    else
        SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 1)
    end
end, false)

-- Hat command
RegisterCommand("hat", function(source, args)
    -- If argument 1 provided
    if args[1] then
        -- Initialise color variable
        local color = 0
        -- If color number provided in argument 2
        if args[2] then
            -- Set color to provided argument
            color = tonumber(args[2])
        end

        -- Update ped
        SetPedPropIndex(GetPlayerPed(-1), 0, tonumber(args[1]), color, true);
    else
        ClearPedProp(GetPlayerPed(-1),0)
    end
end, false)


-- Emote command
RegisterCommand("e", function(source, args)
    -- If argument 1 provided
    if args[1] then
		local anim = ""
        if args[1] == "beber" then --drink
			anim = "WORLD_HUMAN_DRINKING"
		elseif args[1] == "fumar" then --smoke
			anim = "WORLD_HUMAN_SMOKING"
		elseif args[1] == "guarda" then --guard
			anim = "WORLD_HUMAN_GUARD_STAND"
		elseif args[1] == "encostar" then --lean
			anim = "WORLD_HUMAN_LEANING"
		elseif args[1] == "deitar" then -- Sunbath
			anim = "WORLD_HUMAN_SUNBATHE_BACK"
		elseif args[1] == "deitar2" then --Sunbath2
			anim = "WORLD_HUMAN_SUNBATHE"
		elseif args[1] == "yoga" then
			anim = "WORLD_HUMAN_YOGA"
		elseif args[1] == "notas" then --clipboard
			anim = "world_human_clipboar"
		elseif args[1] == "limpar" then --maid clean
			anim = "world_human_maid_clean"
		elseif args[1] == "abdominal" then --sit up
			anim = "world_human_sit_ups"
		end
        -- Update ped
        TaskStartScenarioInPlace(GetPlayerPed(-1),anim, 0, true) 
    else
        ClearPedTasksImmediately(GetPlayerPed(-1))
    end
end, false)