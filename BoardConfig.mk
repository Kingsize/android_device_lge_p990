# inherit from the proprietary version
-include device/lge/star-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := p990
TARGET_OTA_ASSERT_DEVICE := p990

BOARD_KERNEL_CMDLINE := mem=415M@0M nvmem=96M@416M loglevel=0 muic_state=1 lpj=9994240 CRC=3010002a8e458d7 vmalloc=256M brdrev=1.0 video=tegrafb console=ttyS0,115200n8 usbcore.old_scheme_first=1 tegraboot=sdmmc tegrapart=recovery:35e00:2800:800,linux:34700:1000:800,mbr:400:200:800,system:600:2bc00:800,cache:2c200:8000:800,misc:34200:400:800,userdata:38700:c0000:800 androidboot.hardware=p990
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 665681920
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1170259968
BOARD_FLASH_BLOCK_SIZE := 131072

#prebuilt kernel is deprecated, using kernel source:
TARGET_KERNEL_SOURCE := kernel/lge/star
TARGET_KERNEL_CONFIG := star_cyanogenmod_defconfig
# Keep this as a fallback
#TARGET_PREBUILT_KERNEL := device/lge/p990/kernel 

BOARD_VOLD_MAX_PARTITIONS := 10

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_TOUCH_RECOVERY := true
