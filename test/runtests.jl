using AdventOfCode2019
import AdventOfCode2019: intcode_calc
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

@testset "AoC 2019 - Day02" begin
    # Day 2, Part 1 examples
    @test intcode_calc(1, 2, 3) == 5
    @test intcode_calc(2, 2, 3) == 6
    @test_throws ErrorException intcode_calc(3, 2, 3)

    @test intcode([1,0,0,0,99]) == [2,0,0,0,99]
    @test intcode([2,3,0,3,99]) == [2,3,0,6,99]
    @test intcode([2,4,4,5,99,0]) == [2,4,4,5,99,9801]
    @test intcode([1,1,1,4,99,5,6,0,99]) == [30,1,1,4,2,5,6,0,99]
    @test intcode([1,9,10,3,2,3,11,0,99,30,40,50]) == [3500,9,10,70,2,3,11,0,99,30,40,50]
end
