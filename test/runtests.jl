using ITensors
using ITensorContractionSequences
using Test

@testset "ITensorContractionSequences.jl" begin
  @testset "optimal contraction_sequence" begin
    i = Index.(fill(2, 4))
    A = randomITensor(i[1], i[2])
    B = randomITensor(i[2], i[3])
    C = randomITensor(i[3], i[4])
    @test contraction_sequence([A, B, C]) == [3, [1, 2]]
    @test contraction_sequence([C, A, B]) == [1, [2, 3]]
  end
end
