set_project("Assignment8")

add_rules("mode.debug", "mode.release")

add_requires("glew", "glfw", "freetype")

set_languages("cxx17")

add_includedirs("CGL/include")

if is_os("windows") then
    target("getopt")
        set_kind("static")
        add_files("getopt-for-windows/*.c")
end

target("CGL")
    set_kind("static")
    add_packages("glew", "glfw", "freetype")
    add_files("CGL/src/*.cpp")

target("main")
    set_kind("binary")
    add_deps("CGL")
    if is_os("windows") then
        add_includedirs("getopt-for-windows")
        add_deps("getopt")
    end
    add_packages("glew", "glfw")
    add_files("src/*.cpp")