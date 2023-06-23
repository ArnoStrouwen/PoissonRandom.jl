using Documenter, PoissonRandom

cp("./docs/Manifest.toml", "./docs/src/assets/Manifest.toml", force = true)
cp("./docs/Project.toml", "./docs/src/assets/Project.toml", force = true)

include("pages.jl")

makedocs(sitename = "PoissonRandom.jl",
    authors = "Chris Rackauckas",
    modules = [PoissonRandom],
    clean = true, doctest = false, linkcheck = true,
    strict = [
        :doctest,
        :linkcheck,
        :parse_error,
        :example_block,
        :cross_references,
        # Other available options are
        # :autodocs_block, :cross_references, :docs_block, :eval_block, :example_block, :footnote, :meta_block, :missing_docs, :setup_block
    ],
    format = Documenter.HTML(analytics = "UA-90474609-3",
        assets = ["assets/favicon.ico"],
        canonical = "https://docs.sciml.ai/PoissonRandom/stable/"),
    pages = pages)

deploydocs(repo = "github.com/SciML/PoissonRandom.jl.git";
    push_preview = true)
