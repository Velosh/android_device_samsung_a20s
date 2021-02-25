#!/bin/bash

if [ -d "$(pwd)/device/samsung/a20s/" ]; then
   export ALLOW_MISSING_DEPENDENCIES=true
   source build/envsetup.sh
   lunch omni_a20s-eng
   mka recoveryimage
else
  echo "A20s device tree don't exists! Exit."
  exit 1
fi
