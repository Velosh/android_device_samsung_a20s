# Pitch Black Recovery Project for Samsung Galaxy A20s

### How to build ###

```bash
# Create dirs
$ mkdir pb; cd pb

# Init repo
$ repo init --depth=1 -u git://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-10.0

# Clone a20s repo
$ git clone https://github.com/durasame/android_device_samsung_a20s -b pbrp-10.0 device/samsung/a20s

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ mv device/samsung/a20s/build_pb.sh .; chmod +x build_pb.sh; ./build_pb.sh
```

## Credits
* mohammad92: For ```a11q``` device/kernel tree.
* firemax13/sunamitheory: Helping me a lot.
