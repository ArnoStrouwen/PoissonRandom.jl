using Documenter, PoissonRandom

cp("./docs/Manifest.toml", "./docs/src/assets/Manifest.toml", force = true)
cp("./docs/Project.toml", "./docs/src/assets/Project.toml", force = true)

include("pages.jl")

makedocs(sitename = "PoissonRandom.jl",
    authors = "Chris Rackauckas",
    modules = [PoissonRandom],
    clean = true, doctest = false, linkcheck = true,
    format = Documenter.HTML(assets = ["assets/favicon.ico"],
        canonical = "https://docs.sciml.ai/PoissonRandom/stable/"),
    pages = pages)

deploydocs(repo = "github.com/SciML/PoissonRandom.jl.git";
    push_preview = true)
