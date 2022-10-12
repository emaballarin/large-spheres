arch_cpu=x86-64-avx512
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=mingw
strip large-spheres.exe
mv large-spheres.exe large-spheres_x64_avx512.exe
make clean
