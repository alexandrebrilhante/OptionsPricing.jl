module OptionsPricing

export bs, crr, mc, Option, EuropeanOption, AmericanOption, AsianOption

abstract type Option end

struct EuropeanOption<:Option
    s::Float64
    k::Float64
    r::Float64
    σ::Float64
    t::Float64
    call_or_put::String
end

struct AmericanOption<:Option
    s::Float64
    k::Float64
    r::Float64
    σ::Float64
    t::Float64
    call_or_put::String
end

struct AsianOption<:Option
    s::Float64
    k::Float64
    r::Float64
    σ::Float64
    t::Float64
    call_or_put::String
    dates::Vector{DateTime}
end

include("bs.jl")
include("crr.jl")
include("mc.jl")

end # module
