Processed files derived from 3DED image data for a quartz crystal that
can be obtained from https://zenodo.org/record/5579793#.Yg4a6XXP1hF.
The DIALS processing script used to produce the files is included. This
requires installing new format classes and installation of the
tifffile library. After processing, the .expt files were manually edited
to remove absolute paths. This data set can be used for dynamic
diffraction refinement by Jana2020. The integrated intensities are
exported to cif_pets format for this purpose.

```
$ dials.version
DIALS 3.dev.698-gba04be81f
Python 3.8.6
Installed in: /home/fcx32934/sw/cctbx/modules/dials

./process-quartz.sh .
```
