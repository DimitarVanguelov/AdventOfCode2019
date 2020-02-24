using AdventOfCode2019
using Test

@testset "AoC 2019 - Day01" begin
    # Day 1, Part 1 examples
    @test naive_fuel(2) == 0
    @test naive_fuel(8) == 0
    @test naive_fuel(9) == 1
    @test naive_fuel(12) == 2
    @test naive_fuel(14) == 2
    @test naive_fuel(1969) == 654
    @test naive_fuel(100756) == 33583
    # Day 1, Part 2 examples
    @test actual_fuel(14) == 2
    @test actual_fuel(1969) == 966
    @test actual_fuel(100756) == 50346
end
