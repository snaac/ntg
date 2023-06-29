cd ~/$rom_name
cd out/target/product/$device/apex/com.android.runtime/lib64
bash <(curl -s https://raw.githubusercontent.com/snaac/ntg/$CIRRUS_BRANCH/uploading.sh) -f libart-compiler.so