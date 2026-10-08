esptool -b 460800 --chip esp32 erase-flash
esptool --chip esp32 merge-bin -o firmware_factory.bin --flash-mode dio --flash-size 4MB 0x1000 bootloader.bin 0x8000 partitions.bin 0x10000 firmware.bin
esptool -b 460800 write-flash 0x0 ./firmware_factory.bin