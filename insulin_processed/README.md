dials_data insulin data set processed with DIALS:

```
$ dials.version
DIALS 3.dev.37-g9c9d0802d
Python 3.6.10

$ dials.import $(dials.data get -q insulin)/insulin_1_*.img
$ dials.find_spots imported.expt nproc=8
$ dials.index imported.expt strong.refl space_group=I23
$ dials.refine indexed.{expt,refl}
$ dials.integrate refined.{expt,refl} nproc=8
$ dials.symmetry integrated.{expt,refl}
$ dials.scale symmetrized.{expt,refl}
```
