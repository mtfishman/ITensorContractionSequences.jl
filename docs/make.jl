using ITensorContractionSequences
using Documenter

DocMeta.setdocmeta!(ITensorContractionSequences, :DocTestSetup, :(using ITensorContractionSequences); recursive=true)

makedocs(;
    modules=[ITensorContractionSequences],
    authors="Matthew Fishman <mfishman@flatironinstitute.org> and contributors",
    repo="https://github.com/mtfishman/ITensorContractionSequences.jl/blob/{commit}{path}#{line}",
    sitename="ITensorContractionSequences.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mtfishman.github.io/ITensorContractionSequences.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mtfishman/ITensorContractionSequences.jl",
    devbranch="main",
)
