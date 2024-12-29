default: build

build:
	podman run -it --rm \
  --security-opt label=disable \
  --workdir /workspaces/zmk \
  -v /home/matt/git/github.com/zmkfirmware/zmk:/workspaces/zmk \
  -v /home/matt/git/zmk-config:/workspaces/zmk-config \
  -p 3000:3000 \
  zmk /bin/bash /workspaces/zmk-config/build.sh

copy:
	cp ~/git/github.com/zmkfirmware/zmk/app/build/zephyr/zmk.uf2 /run/media/matt/NICENANO/
