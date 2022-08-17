using ITensors.ContractionSequenceOptimization

function contraction_sequence(::Algorithm"optimal", tn)
  return optimal_contraction_sequence(tn)
end
