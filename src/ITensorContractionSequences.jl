module ITensorContractionSequences

using ITensors
using ITensors: Algorithm, @Algorithm_str

function contraction_sequence(tn::Vector{ITensor}; alg="optimal", kwargs...)
  return contraction_sequence(Algorithm(alg), tn; kwargs...)
end

include("optimal.jl")

export contraction_sequence

end
