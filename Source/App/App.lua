project "App"
    defines { "PROJECT_NAME=App" }
    kind "ConsoleApp"
    language "C++"
    confromancemode "true"
    cdialectx "C17"
    cppdialect "C++Latest"
    cppmodules "true"
    toolset "msc"

    files { "**.h", "**.cpp", "**.ixx" }

    links { "Library" }

    filter { "configurations:Debug" }
        defines { "_DEBUG" }
        symbols "On"

    filter { "configurations:Release" }
        defines { "NDEBUG" }
        optimize "On"
        symbols "On"
    
    filter { "configurations:Distribution" }
        defines { "NDEBUG" }
        optimize "On"
        symbols "Off"
    
    filter { }
