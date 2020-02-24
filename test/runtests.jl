using AdventOfCode2019
using Test

@testset "AdventOfCode2019.jl" begin
    # Day 1, part 1 examples
    @test fuel(12) == 2
    @test fuel(14) == 2
    @test fuel(1969) == 654
    @test fuel(100756) == 33583
end
