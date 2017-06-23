# Set CMAKE_BUILD_TYPE to Release by default.
if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING
      "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()
# Set the possible values of build type for cmake-gui
set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "RelWithDebInfo" "MinSizeRel")

option(BUILD_TOOLS "Build tools" ON)
option(BUILD_TESTING "Build the testing tree" ON)
option(BUILD_DOCUMENTATION "Build the Doxygen documentation" OFF)
option(BUILD_TUTORIALS "Build Tutorials" OFF)
option(ENABLE_PYTHON "Enable Python Wrapping" OFF)
option(ENABLE_COVERAGE "Enable Coverage" OFF)
if(APPLE)
    option(APPLE_STANDALONE "Install all tiers library" OFF)
endif()

include(UseOpenMP)
include(UseVTK)
include(UseGifti)
include(UseCGAL)
include(ProgressBar)
include(BlasLapackOption)
