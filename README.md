# OptionsPricing.jl

Simple pricing models for vanilla options.

## Installation
```julia
Pkg.clone("https://github.com/brilhana/OptionsPricing.jl.git")
```

## Usage
```julia
using OptionsPricing

# Parameters are in order: underlying asset price, strike price, risk-free interest rate, volatility, time to expiration, Call or Put.
o = Option(100.0, 90.0, 0.05, 0.3, 180/365, "Put")

# Black-Scholes
bs(o)

# Cox-Ross-Rubinstein
crr(o)

# Least-Squares Monte Carlo
mc(o)
```

## TODO
* Documentation.
* Support for exotic options.
* Tests.
