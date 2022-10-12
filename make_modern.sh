arch_cpu=x86-64-modern
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=mingw
strip big-ballz.exe
mv big-ballz.exe big-ballz_x64_modern.exe
make clean
