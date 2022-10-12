arch_cpu=x86-64-modern
make --no-print-directory -j profile-build ARCH=${arch_cpu} COMP=mingw
strip large-spheres.exe
mv large-spheres.exe large-spheres_x64_modern.exe
make clean
