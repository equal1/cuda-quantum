# ============================================================================ #
# Copyright (c) 2022 - 2024 NVIDIA Corporation & Affiliates.                   #
# All rights reserved.                                                         #
#                                                                              #
# This source code and the accompanying materials are made available under     #
# the terms of the Apache License 2.0 which accompanies this distribution.     #
# ============================================================================ #

message(STATUS "Building Equal1 REST QPU")

add_target_config(equal1)

target_sources(cudaq-rest-qpu PRIVATE Equal1ServerHelper.cpp)
add_library(cudaq-serverhelper-equal1 SHARED Equal1ServerHelper.cpp)
target_link_libraries(cudaq-serverhelper-equal1
  PUBLIC
    cudaq-common
    fmt::fmt-header-only
)
install(TARGETS cudaq-serverhelper-equal1 DESTINATION lib)
