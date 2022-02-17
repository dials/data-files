#!/bin/bash
set -e

# Check script input
if [ "$#" -ne 1 ]; then
    echo "You must supply the location of the data parent directory only"
    exit 1
fi

# Install/update the required Format class
dxtbx.install_format -u\
    https://raw.githubusercontent.com/dials/dxtbx_ED_formats/master/FormatTIFFgeneric.py

# NB this requires the library tifffile to be installed, so stop if it is not.
dials.python -c "import tifffile"

# Set up directories
PROCDIR=$(pwd)
DATADIR=$(realpath "$1")
if [ ! -d "$DATADIR" ]; then
    echo "$DATADIR is not found"
    exit 1
fi

# Process
dials.import "$DATADIR"/*.tif\
    fast_slow_beam_centre=508,506\
    geometry.scan.oscillation=-50,1.0\
    geometry.goniometer.axis=0.9999570551912293,0.009267565661199248,0.0\
    distance=280
dials.find_spots imported.expt gain=7 kernel_size=5,5 global_threshold=40 min_spot_size=10 d_max=20

# Need some trickery to get indexing consistent with the reference
# processing by PETS. To reindex successfully, need to start with a P1
# cell. But also need to provide that cell to force γ=120°. Then
# reindex and can force the space group at that time. Then use the
# result to reindex the reflections.
dials.index imported.expt strong.refl detector.fix_list=Dist,Tau unit_cell="4.92,4.92,5.40,90,90,120"
dials.reindex indexed.expt change_of_basis_op=a,-a-b,-c space_group=P3121 # make consistent with PETS
dials.index reindexed.expt strong.refl detector.fix_list=Dist,Tau
dials.refine indexed.expt indexed.refl crystal.unit_cell.force_static=true detector.fix_list=Dist,Tau
dials.plot_scan_varying_model refined.expt
dials.integrate refined.expt refined.refl\
    prediction.d_min=0.555 background.algorithm=simple
dials.scale integrated.expt integrated.refl min_Ih=10

# PETS export
dials.export integrated.expt integrated.refl format=pets id=0 step=1\
    n_merged=2
dials.export integrated.expt integrated.refl format=pets id=0 step=1\
    n_merged=2 intensity=profile filename_prefix=dials_prf
