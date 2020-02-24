# Day 1: The Tyranny of the Rocket Equation - https://adventofcode.com/2019/day/1

function naive_fuel(mass)
    needed_fuel = max((mass ÷ 3) - 2, 0)
    return needed_fuel
end

function actual_fuel(mass)
    meta_fuel = fuel(mass)
    store = meta_fuel
    while meta_fuel > 0
        meta_fuel = fuel(meta_fuel)
        store += meta_fuel
    end
    return store
end
