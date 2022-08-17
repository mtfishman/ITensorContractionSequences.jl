# ITensorContractionSequences

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://mtfishman.github.io/ITensorContractionSequences.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://mtfishman.github.io/ITensorContractionSequences.jl/dev/)
[![Build Status](https://github.com/mtfishman/ITensorContractionSequences.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/mtfishman/ITensorContractionSequences.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/mtfishman/ITensorContractionSequences.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/mtfishman/ITensorContractionSequences.jl)
[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)

A package for computing contraction sequences (orders, paths, trees) for tensor networks
of ITensors.

For example:
```julia
julia> using ITensors

julia> using ITensorContractionSequences

julia> i, j, k, l = Index.((2, 2, 2, 2));

julia> A = randomITensor(i, j);

julia> B = randomITensor(j, k);

julia> C = randomITensor(k, l);

julia> contraction_sequence([A, B, C])
2-element Vector{Any}:
 3
  [1, 2]

julia> contraction_sequence([C, A, B])
2-element Vector{Any}:
 1
  [2, 3]
```
