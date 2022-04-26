set_project("Transformation")

add_rules("mode.debug")

add_requires("eigen")

set_languages("cxx17")

target("Transformation")
    set_kind("binary")
    add_packages("eigen")
    add_files("*.cpp")
    set_rundir("$(projectdir)")