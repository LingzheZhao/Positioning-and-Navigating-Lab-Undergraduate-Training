# CMake generated Testfile for 
# Source directory: /mnt/c/Users/86177/IPOL_AC_RANSAC/src/libOrsa
# Build directory: /mnt/c/Users/86177/IPOL_AC_RANSAC/Build/libOrsa
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(fundamental_model_test "fundamental_model_test")
add_test(fundamental_orsa_test "fundamental_orsa_test")
add_test(homography_model_test "homography_model_test")
add_test(homography_orsa_test "homography_orsa_test")
subdirs("libNumerics")
