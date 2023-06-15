cd ~/$rom_name
tar -zcf overlay.tar.gz -C out/target/product/$device/system/product ./overlay
bash <(curl -s https://raw.githubusercontent.com/snaac/ntg/$CIRRUS_BRANCH/uploading.sh) -f overlay.tar.gz
