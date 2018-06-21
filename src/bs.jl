function bs(O::Option)
    d1 = (log(O.s / O.k) + (O.r + O.σ * O.σ / 2) * O.t) / (O.σ * √O.t)
    d2 = d1 - O.σ * √O.t

    if O.call_or_put == "Put"
        return CND(-d2) * O.k * exp(-O.r * O.t) - CND(-d1) * O.s
    else
        return O.s * CND(d1) - exp(-O.r * O.t) * O.k * CND(d2)
    end
end

function CND(x::Float64)
    a1 = 0.31938153
    a2 = -0.356563782
    a3 = 1.781477937
    a4 = -1.821255978
    a5 = 1.330274429
    l = abs(x)
    k = 1 / (1 + 0.2316419 * l)
    
    CND = 1 - 1 / sqrt(2 * π) * exp(-l^2 / 2) * (a1 * k + a2 * k^2 + a3 * k^3 + a4 * k^4 + a5 * k^5)

    if x < 0
        return 1 - CND
    end
    
    return CND
end
