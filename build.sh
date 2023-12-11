# install RGBDS first - https://github.com/gbdev/rgbds/releases

rgbasm -L -o hello-world.o hello-world.asm
rgblink -o hello-world.gb hello-world.o
rgbfix -v -p 0xFF hello-world.gb

# Create map file
rgblink hello-world.o -m hello-world.map

# perform clean up
rm hello-world.o
