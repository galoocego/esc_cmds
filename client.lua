
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
