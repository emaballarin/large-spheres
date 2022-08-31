arch_cpu=x86-64-avx2
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=mingw
strip big-ballz.exe
mv big-ballz.exe big-ballz_x64_avx2.exe
make clean

