# TeamWin Recovery Project for Samsung Galaxy A20s

### How to build ###

```bash
# Create dirs
$ mkdir tw; cd tw

# Init repo
$ repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-10.0

# Clone a20s repo
$ git clone https://github.com/a2XX-dev/android_device_samsung_a20s -b twrp-10.0 device/samsung/a20s

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ export ALLOW_MISSING_DEPENDENCIES=true; source build/envsetup.sh; lunch omni_a20s-eng; mka recoveryimage
```

## Status

**Works**

- Booting
- Zip/img flashing
- ADB/MTP
- Vibration
- Backup/Restore
- Mount

**Don't Work**

- Encryption

## Credits
* mohammad92: For ```a11q``` device/kernel tree.
* firemax13/sunamitheory: Helping me a lot.
