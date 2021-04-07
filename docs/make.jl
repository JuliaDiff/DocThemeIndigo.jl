using DocThemeIndigo
using Documenter

DocMeta.setdocmeta!(DocThemeIndigo, :DocTestSetup, :(using DocThemeIndigo); recursive=true)

makedocs(;
    modules=[DocThemeIndigo],
    authors="Roger-Luo <rogerluo.rl18@gmail.com> and contributors",
    repo="https://github.com/Roger-luo/DocThemeIndigo.jl/blob/{commit}{path}#{line}",
    sitename="DocThemeIndigo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Roger-luo.github.io/DocThemeIndigo.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Roger-luo/DocThemeIndigo.jl",
)
