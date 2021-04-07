module DocThemeIndigo

using Sass

function install(m::Module)
    doc = joinpath(dirname(dirname(pathof(m))), "docs")
    src = joinpath(@__DIR__, "..", "assets", "indigo.scss")
    assets = joinpath(doc, "src", "assets")
    dst = joinpath(assets, "indigo.css")
    ispath(assets) || mkpath(assets)
    Sass.compile_file(src, dst)
    return joinpath("assets", "indigo.css")
end

end
