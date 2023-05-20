# add repo, dt, vt, kt etc.
repo init --depth=1 --no-repo-verify -u https://github.com/NusantaraProject-ROM/android_manifest.git -b 10 -g default,-mips,-darwin,-notdefault
# replace with your manifest
git clone https://github.com/Sa-Sajjad/manifest.git --depth 1 -b 2 .repo/local_manifests
# sync script
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

# fill up
source build/envsetup.sh
# replace with your rom variable
lunch nad_lavender-userdebug
# time zone
export TZ=Asia/Dhaka
export SELINUX_IGNORE_NEVERALLOWS=true
export SKIP_ABI_CHECKS=true
export SELINUX_IGNORE_NEVERALLOWS=true
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
# don't touch
make api-stubs-docs || echo no problem
make system-api-stubs-docs || echo no problem
make test-api-stubs-docs || echo no problem
# replace with your rom variable
mka nad
# idk what is this
rclone copy out/target/product/$device/*.zip cirrus:$device -P
