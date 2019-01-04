local json_dir     = "../json-develop/include"

project("ygopen")
	kind("StaticLib")
	flags("ExtraWarnings")
	files({"**.hpp", "**.cpp"})
	links({"sqlite3"})
	includedirs(json_dir)

	configuration("osx")
		buildoptions("-pedantic --std=c++11")
		links("dl")
	configuration("not windows")
		buildoptions("-pedantic")
		links("dl")
