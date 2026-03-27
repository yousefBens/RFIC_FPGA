# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/yousef/Vivado_workspace/RFIC_SPI/Soft/RFIC_platform/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/home/yousef/Vivado_workspace/RFIC_SPI/Soft/RFIC_platform/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/home/yousef/Vivado_workspace/RFIC_SPI/Soft/RFIC_platform/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/home/yousef/Vivado_workspace/RFIC_SPI/Soft/RFIC_platform/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
