$ dials.version
DIALS 3.dev.1130-g8c524b30c
Python 3.10.13
Installed in: /home/davidmcdonagh/work/dials/modules/dials/src/dials

$ dials.import "$(dials.data get -q isis_sxd_example_data)/sxd_nacl_run.nxs"
$ dials.find_spots imported.expt
$ dials.index imported.expt strong.refl unit_cell=5.64,5.64,5.64,90,90,90 space_group=225
$ dials.refine indexed.expt indexed.refl
