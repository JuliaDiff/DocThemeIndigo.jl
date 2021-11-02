# DocThemeIndigo

[![Build Status](https://github.com/JuliaDiff/DocThemeIndigo.jl/workflows/CI/badge.svg)](https://github.com/JuliaDiff/DocThemeIndigo.jl/actions)
[![Coverage](https://codecov.io/gh/JuliaDiff/DocThemeIndigo.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/JuliaDiff/DocThemeIndigo.jl)
[![ColPrac: Contributor's Guide on Collaborative Practices for Community Packages](https://img.shields.io/badge/ColPrac-Contributor's%20Guide-blueviolet)](https://github.com/SciML/ColPrac)

The Indigo theme for Documenter.

## Installation

<p>
DocThemeIndigo is a &nbsp;
    <a href="https://julialang.org">
        <img src="https://raw.githubusercontent.com/JuliaLang/julia-logo-graphics/master/images/julia.ico" width="16em">
        Julia Language
    </a>
    &nbsp; package. To install DocThemeIndigo,
    please <a href="https://docs.julialang.org/en/v1/manual/getting-started/">open
    Julia's interactive session (known as REPL)</a> and press <kbd>]</kbd> key in the REPL to use the package mode, then type the following command
</p>

```julia
pkg> add DocThemeIndigo
```

## Usage

1. use `DocThemeIndigo.install` to generate the indigo CSS file
2. put the CSS file path into your assets

Your `docs/make.jl` file would look like the following

```julia
using Documenter
using DocThemeIndigo

# 1. generate the indigo theme css
indigo = DocThemeIndigo.install(MyPackageModule)

makedocs(;
    # ...
    format=Documenter.HTML(;
        # ...
        # put your indigo css in assets
        assets=String[indigo #= your other assets =#],
    ),
    # ...
)
```

## Acknowledgement

This theme is based on earlier works made by the following people: [ChainRulesCore#332](https://github.com/JuliaDiff/ChainRulesCore.jl/issues/332).

- [@iamed2](https://github.com/iamed2)
- [@oxinabox](https://github.com/oxinabox)
- [@cormullion](https://github.com/cormullion)
- [@simeonschaub](https://github.com/simeonschaub)

## License

MIT License
