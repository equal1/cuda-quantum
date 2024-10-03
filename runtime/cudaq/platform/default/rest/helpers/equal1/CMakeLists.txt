# ============================================================================ #
# Copyright (c) 2022 - 2024 NVIDIA Corporation & Affiliates.                   #
# All rights reserved.                                                         #
#                                                                              #
# This source code and the accompanying materials are made available under     #
# the terms of the Apache License 2.0 which accompanies this distribution.     #
# ============================================================================ #

# set(LIBRARY_NAME cudaq-equal1-qpu)
message(STATUS "Building Equal1 REST QPU")

# add_library(${LIBRARY_NAME} SHARED Equal1QPU.cpp)

# target_include_directories(${LIBRARY_NAME} PRIVATE .
#   PUBLIC
#     $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/runtime>
#     $<INSTALL_INTERFACE:include>)

# target_link_libraries(${LIBRARY_NAME}
#     PUBLIC
#       cudaq-spin
#       cudaq-common
#     PRIVATE
#       pthread
#       cudaq-mlir-runtime
#       fmt::fmt-header-only
#       cudaq
#       cudaq-platform-default)

# install(TARGETS ${LIBRARY_NAME} DESTINATION lib)
# install(TARGETS ${LIBRARY_NAME} EXPORT cudaq-equal1-qpu-targets DESTINATION lib)

add_target_config(equal1)

target_sources(cudaq-rest-qpu PRIVATE Equal1ServerHelper.cpp)
add_library(cudaq-serverhelper-equal1 SHARED Equal1ServerHelper.cpp)
target_link_libraries(cudaq-serverhelper-equal1
  PUBLIC
    cudaq-common
    fmt::fmt-header-only
)
install(TARGETS cudaq-serverhelper-equal1 DESTINATION lib)
