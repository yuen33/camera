ifneq ($(filter yukon rhine shinano kanuti kitakami loire tone,$(PRODUCT_PLATFORM)),)

MM_V4L2_DRIVER_LIST += msm8960
MM_V4L2_DRIVER_LIST += msm8974
MM_V4L2_DRIVER_LIST += msm8916
MM_V4L2_DRIVER_LIST += msm8226
MM_V4L2_DRIVER_LIST += msm8610
MM_V4L2_DRIVER_LIST += apq8084
MM_V4L2_DRIVER_LIST += mpq8092
MM_V4L2_DRIVER_LIST += msm_bronze
MM_V4L2_DRIVER_LIST += msm8994
MM_V4L2_DRIVER_LIST += msm8084
MM_V4L2_DRIVER_LIST += msm8909
MM_V4L2_DRIVER_LIST += msm8952
MM_V4L2_DRIVER_LIST += msm8996
MM_V4L2_DRIVER_LIST += msm8992
MM_V4L2_DRIVER_LIST += msm8937
MM_V4L2_DRIVER_LIST += msm8953
MM_V4L2_DRIVER_LIST += msmcobalt
MM_V4L2_DRIVER_LIST += msmfalcon

ifneq (,$(filter $(MM_V4L2_DRIVER_LIST),$(TARGET_BOARD_PLATFORM)))
  ifneq ($(strip $(USE_CAMERA_STUB)),true)
    ifneq ($(BUILD_TINY_ANDROID),true)
      include $(call all-subdir-makefiles)
    endif
  endif
endif

endif
