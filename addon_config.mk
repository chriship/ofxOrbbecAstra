meta:
	ADDON_NAME = ofxOrbbecAstra
	ADDON_DESCRIPTION = OF wrapper Orbbec Astra SDK
	ADDON_AUTHOR = Matt Felsen
	ADDON_TAGS = "orbbec" "astra" "depth camera"
	ADDON_URL = https://github.com/mattfelsen/ofxOrbbecAstra

common:	
	#ADDON_LIBS += libs/astra/lib

linux64:	
	ADDON_DATA = libs/astra/lib/linux64/*	
	ADDON_DLLS_TO_COPY  = libs/astra/lib/linux64/
	
osx:
	# Only needs to link with these three libs, not any of the Plugins folder
	ADDON_LIBS  = libs/astra/lib/osx/libastra_core_api.dylib
	ADDON_LIBS += libs/astra/lib/osx/libastra_core.dylib
	ADDON_LIBS += libs/astra/lib/osx/libastra.dylib

	# All of the libs, including those inside the Plugins folder, do need to be
	# available for loading at runtime, so copy them into the bin folder,
	# maintaining the folder structure
	ADDON_DLLS_TO_COPY  = libs/astra/lib/osx/
	
vs:	
	ADDON_DLLS_TO_COPY  = dlls_to_copy
