# Copyright (c) 2021 by profzei
# Licensed under the terms of the GPL v3


path=$1
echo "==============================="
echo Unziping OpenCore
unzip "$path" -d "OpenCore"
echo "==============================="
echo Makeing Dirs
cd OpenCore/X64
mkdir EFI2
mkdir EFI2/BOOT
mkdir EFI2/OC
mkdir EFI2/OC/ACPI
mkdir EFI2/OC/Drivers
mkdir EFI2/OC/Kexts
mkdir EFI2/OC/Resources
mkdir EFI2/OC/Tools
cd ..
cd ..
echo "==============================="
echo "Checking ISK files"
if [ -f "./ISK.key" ]; then
    echo "ISK.key was decrypted successfully"
fi

if [ -f "./ISK.pem" ]; then
    echo "ISK.pem was decrypted successfully"
fi
echo "==============================="
echo "Signing drivers, tools, BOOTx64.efi and OpenCore.efi"
sleep 2
# You can modify drivers and tools to be signed to your like
echo ""
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/BOOT/BOOTx64.efi ./OpenCore/X64/EFI/BOOT/BOOTx64.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/OpenCore.efi ./OpenCore/X64/EFI/OC/OpenCore.efi

sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/AudioDxe.efi ./OpenCore/X64/EFI/OC/Drivers/AudioDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/BiosVideo.efi ./OpenCore/X64/EFI/OC/Drivers/BiosVideo.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/CrScreenshotDxe.efi ./OpenCore/X64/EFI/OC/Drivers/CrScreenshotDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/Ext4Dxe.efi ./OpenCore/X64/EFI/OC/Drivers/Ext4Dxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/HiiDatabase.efi ./OpenCore/X64/EFI/OC/Drivers/HiiDatabase.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/NvmExpressDxe.efi ./OpenCore/X64/EFI/OC/Drivers/NvmExpressDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/OpenCanopy.efi ./OpenCore/X64/EFI/OC/Drivers/OpenCanopy.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/OpenHfsPlus.efi ./OpenCore/X64/EFI/OC/Drivers/OpenHfsPlus.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/OpenLinuxBoot.efi ./OpenCore/X64/EFI/OC/Drivers/OpenLinuxBoot.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/OpenNtfsDxe.efi ./OpenCore/X64/EFI/OC/Drivers/OpenNtfsDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/OpenPartitionDxe.efi ./OpenCore/X64/EFI/OC/Drivers/OpenPartitionDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/OpenRuntime.efi ./OpenCore/X64/EFI/OC/Drivers/OpenRuntime.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/OpenUsbKbDxe.efi ./OpenCore/X64/EFI/OC/Drivers/OpenUsbKbDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/Ps2KeyboardDxe.efi ./OpenCore/X64/EFI/OC/Drivers/Ps2KeyboardDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/Ps2MouseDxe.efi ./OpenCore/X64/EFI/OC/Drivers/Ps2MouseDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/ResetNvramEntry.efi ./OpenCore/X64/EFI/OC/Drivers/ResetNvramEntry.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/ToggleSipEntry.efi ./OpenCore/X64/EFI/OC/Drivers/ToggleSipEntry.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/UsbMouseDxe.efi ./OpenCore/X64/EFI/OC/Drivers/UsbMouseDxe.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Drivers/XhciDxe.efi ./OpenCore/X64/EFI/OC/Drivers/XhciDxe.efi

sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/BootKicker.efi ./OpenCore/X64/EFI/OC/Tools/BootKicker.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/ChipTune.efi ./OpenCore/X64/EFI/OC/Tools/ChipTune.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/CleanNvram.efi ./OpenCore/X64/EFI/OC/Tools/CleanNvram.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/ControlMsrE2.efi ./OpenCore/X64/EFI/OC/Tools/ControlMsrE2.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/CsrUtil.efi ./OpenCore/X64/EFI/OC/Tools/CsrUtil.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/GopStop.efi ./OpenCore/X64/EFI/OC/Tools/GopStop.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/KeyTester.efi ./OpenCore/X64/EFI/OC/Tools/KeyTester.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/MmapDump.efi ./OpenCore/X64/EFI/OC/Tools/MmapDump.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/OpenControl.efi ./OpenCore/X64/EFI/OC/Tools/OpenControl.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/OpenShell.efi ./OpenCore/X64/EFI/OC/Tools/OpenShell.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/ResetSystem.efi ./OpenCore/X64/EFI/OC/Tools/ResetSystem.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/RtcRw.efi ./OpenCore/X64/EFI/OC/Tools/RtcRw.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/TpmInfo.efi ./OpenCore/X64/EFI/OC/Tools/TpmInfo.efi
sbsign --key ISK.key --cert ISK.pem --output ./OpenCore/X64/EFI2/OC/Tools/KeyTool.efi /usr/share/efitools/efi/KeyTool.efi

echo "==============================="
# Clean: remove downloaded files
mv ./OpenCore/X64/EFI/OC/.contentFlavour ./OpenCore/X64/EFI2/OC/
mv ./OpenCore/X64/EFI/OC/Resources ./OpenCore/X64/EFI2/OC/
rm -rf ./OpenCore/X64/EFI/
mv ./OpenCore/X64/EFI2/ ./OpenCore/X64/EFI/
cd OpenCore
zip -vr "Signed_$path" *
mv "Signed_$path" ..
cd ..
rm -rf OpenCore
echo "Cleaned."