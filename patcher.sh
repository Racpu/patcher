#!/bin/sh

# Apply these patches before compilation:
RACPU=$PWD/patcher/racpu

# Clean up first
git -C build						clean -dfqx
git -C build						reset -q --hard
git -C kernel/oneplus/msm8996		clean -dfqx
git -C kernel/oneplus/msm8996		reset -q --hard
git -C frameworks/base				clean -dfqx
git -C frameworks/base				reset -q --hard


### Racpu's patches
git -C build						apply $RACPU/build0.patch
git -C kernel/oneplus/msm8996		apply $RACPU/remove-safetynet-flags0.patch
git -C frameworks/base				apply $RACPU/enable-circular-icons0.patch
git -C frameworks/base				apply $RACPU/set-pixel-accent-color0.patch