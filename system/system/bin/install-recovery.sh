#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:951abf5fb6f9eb4bc4fa7852b2bdf3b97dbfd716; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:ec1d2eb28855a41a492ba678707bf7fbb38b61e3 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:951abf5fb6f9eb4bc4fa7852b2bdf3b97dbfd716 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
