set_project("RayTracing")

add_rules("mode.debug", "mode.release")

set_languages("cxx17")

set_warnings("all")

if is_os("windows") then
    add_defines("_CRT_SECURE_NO_WARNINGS")
    add_cxflags("/utf-8")
end

target("RayTracing")
    set_kind("binary")
    add_files("*.cpp")
    set_rundir("$(projectdir)")