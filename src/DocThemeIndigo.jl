module DocThemeIndigo

using Sass

function install(m::Module)
    pkg = dirname(dirname(pathof(m)))
    doc = joinpath(pkg, "docs")
    src = joinpath(@__DIR__, "..", "assets", "indigo.scss")
    assets = joinpath(doc, "src", "assets")
    dst = joinpath(assets, "indigo.css")
    ispath(assets) || mkpath(assets)
    Sass.compile_file(src, dst)
    gitignore = joinpath(pkg, ".gitignore")

    if !is_indigo_css_ignore(m)
        open(gitignore, "a+") do f
            println(f, "/docs/src/assets/indigo.css")
        end
    end
    return joinpath("assets", "indigo.css")
end

function is_indigo_css_ignore(m::Module)
    pkg = dirname(dirname(pathof(m)))
    gitignore = joinpath(pkg, ".gitignore")
    return isfile(gitignore) && ("/docs/src/assets/indigo.css" in readlines(gitignore))
end

end
