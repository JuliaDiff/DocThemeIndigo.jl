using DocThemeIndigo
using Test

@testset "install" begin
    indigo = DocThemeIndigo.install(DocThemeIndigo)
    path = joinpath(dirname(dirname(pathof(DocThemeIndigo))), "docs", "src", indigo)
    @test ispath(path)
end
