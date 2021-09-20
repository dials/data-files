Processed files derived from image data for the MyD88^{TIR} protein that
can be obtained from https://data.sbgrid.org/dataset/814/. This
is the subject of the MyD88 3DED tutorial for DIALS. Here imported
experiments and strong spots for the first of eighteen datasets is
supplied. The detector distance and rotation axis are incorrect in the
image headers. The distance has been supplied on import but the rotation
axis requires correcting.

```
$ dials.version
DIALS 3.dev.585-ge59b573ff
Python 3.8.6
Installed in: /home/fcx32934/sw/cctbx/modules/dials

$ dials.import 814/1/*.img distance=2193
$ dials.find_spots imported.expt d_max=20
```
