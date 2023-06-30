repo init --depth=1 --no-repo-verify -u https://Sa-Sajjad:$ght@github.com/S-A-build/android_manifest_nusa.git -b Sa-Sajjad-patch-1 -g default,-mips,-darwin,-notdefault
git clone https://github.com/Sa-Sajjad/manifest.git --depth 1 -b 3 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

source build/envsetup.sh
lunch nad_lavender-userdebug
export TZ=Asia/Dhaka
export SELINUX_IGNORE_NEVERALLOWS=true
mka nad
# idk what is this
rclone copy out/target/product/$device/*.zip cirrus:$device -P