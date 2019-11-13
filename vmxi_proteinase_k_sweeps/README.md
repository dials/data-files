Files generated using DIALS 2.0.1:

XIA2 0.6.260-g28c1e92f-dials-2.0
DIALS 2.0.1-gb22bab67b-release
CCP4 7.0.077

```
$ cat run.sh
module load dials

files="/dls/mx/data/mx21314/mx21314-30/VMXi-AB0813/well_12/images/image_17586_master.h5
/dls/mx/data/mx21314/mx21314-30/VMXi-AB0813/well_46/images/image_17657_master.h5
/dls/mx/data/mx21314/mx21314-30/VMXi-AB0813/well_112/images/image_17578_master.h5
/dls/mx/data/mx21314/mx21314-30/VMXi-AB0813/well_151/images/image_17607_master.h5"

for master_h5 in $files
do
  echo $master_h5
  well=`echo $master_h5 | cut -d/ -f8 | cut -d_ -f 2`
  image=`echo $master_h5 | cut -d/ -f10 | cut -d_ -f 2`
  procdir="well_${well}_image_${image}"
  echo $procdir
  mkdir $procdir
  cd $procdir
  xia2 image=$master_h5
  cd ../
done
```

```
$ cat combine_split.sh 
module load dials
dials.combine_experiments well_*_image_*/DataFiles/AUTOMATIC_DEFAULT_NATIVE_SWEEP1.{expt,refl}
dials.split_experiments combined.{expt,refl} experiments_prefix=experiments reflections_prefix=reflections
```

