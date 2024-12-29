cd /workspaces/zmk/app
west build -b nice_nano_v2 -- -DSHIELD=atreyu_rev2 -DZMK_CONFIG="/workspaces/zmk-config/config" -DKEYMAP_FILE="/workspaces/zmk-config/config/atreyu.keymap"
