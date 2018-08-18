#!/bin/sh

# Apply these patches before compilation:
RACPU=$PWD/patcher/racpu

# Clean up first
git -C build				clean -dfqx
git -C build				reset -q --hard
git -C safetynet			clean -dfqx
git -C safetynet			reset -q --hard


### Racpu's patches
git -C build				apply $RACPU/build0.patch
git -C safetynet			apply $RACPU/remove-safetynet-flags0.patch
