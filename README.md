# OptionsPricing.jl

Simple pricing models for vanilla options.

## Installation
```julia
Pkg.clone("https://github.com/brilhana/OptionsPricing.jl.git")
```

## Usage
```julia
# Black-Scholes
bs(Option(100.0, 90.0, 0.05, 0.3, 180/365, "Put"))

# Cox-Ross-Rubinstein
crr(Option(100.0, 90.0, 0.05, 0.3, 180/365, "Put"))

# Least-Squares Monte Carlo
mc(Option(100.0, 90.0, 0.05, 0.3, 180/365, "Put"))
```

## TODO
* Documentation.
* Support for exotic options.
* Tests.