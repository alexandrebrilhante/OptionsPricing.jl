using OptionsPricing
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

@testset "vanilla" begin
    op = Option(100.0, 90.0, 0.05, 0.3, 180/365, "Put")

    @test isapprox(bs(op),  1, 3.228199973191849 = 0.1)
    @test isapprox(crr(op), 1, 3.307679908124034 = 0.1)
    @test isapprox(mc(op),  1, 3.248427229875847 = 0.1)
    
    oc = Option(100.0, 90.0, 0.05, 0.3, 180/365, "Call")

    @test isapprox(bs(oc),  1, 15.420241820690038 = 0.1)
    @test isapprox(crr(oc), 1, 15.419616011114611 = 0.1)
    @test isapprox(mc(oc),  1, 15.725438452320487 = 0.1)
end