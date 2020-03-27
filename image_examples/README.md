This directory is intended to store example images primarily for the purpose of
testing dxtbx format classes.

DLS_I03_smargon_0001.cbf.gz
- Full CBF image from DLS beamline I03, with SmarGon goniometer installed
dls/i03/data/2017/cm16791-5/20171123/SmarGon/rotation_calibration4/th1_O45_C45_P45_1_0001.cbf
- For testing FormatCBFFullPilatusDLS6MSN126

dlsnxs2cbf_therm_0001.cbf.gz
- miniCBF file converted from original .h5 file using dlsnxs2cbf
- Original file: https://zenodo.org/record/2616448/files/Therm_6_2_master.h5
- For testing FormatCBFMiniEigerDLS16MSN160

SACLA-MPCCD-Phase3-21528-5images.h5
- Courtesy of Takanori Nakane (2019)
- See also: https://github.com/cctbx/dxtbx/issues/70#issuecomment-520026981
- For testing FormatHDF5SaclaMPCCD

simtbx_FormatSMVJHSim_001.img
- A simulated lysozyme diffraction image with electron diffraction geometry
- Created with dev.dials.sim_ED_stills (from dials_scratch)
- For testing FormatSMVJHSim and electron diffraction indexing

TIMEPIX_SU_512-stdgoni_0001.img
- Courtesy of Viktor Bengtsson (2019)
- For testing FormatSMVTimePix_SU_512x512

TIMEPIX_SU_516-stdgoni_0001.img
- Courtesy of Viktor Bengtsson (2019)
- For testing FormatSMVTimePix_SU_516x516

Dectris_Nexus_master.h5\
Dectris_Nexus_data_000001.h5
- Semi-synthetic Dectris standard Nexus format single image data from an Eiger 9M detector.
- Created from [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1221344.svg)](https://doi.org/10.5281/zenodo.1221344), modified to contain only the first image from those data.
- Additionally, various detector metadata have been spoofed to reduce the size of the master file:
  * The first `countrate_correction_lookup_table`, `countrate_correction_table`, `flatfield`, `pixel_mask` and `trimbit` data sets of each `detectorModule` have been chunked in order to enable GZip compression.
  * Equivalent such data sets for the other 35 detector modules have been made hard links to those of the the first detector module.
  * The global `flatfield` and `pixel_mask` have also been chunked to enable compression.
  * To improve compressibility, the detector module `flatfield` and global `flatfield` values have all been set to `1`, the detector module `pixel_mask` and global `pixel_mask` values have all been set to `0` and the detector module `trimbit` values have all been set to `16`.
  * Dectris uses 32-bit unsigned integers to record the global and module `pixel_mask` values.  Since only the five least significant bits are meaningful, the other 27 bits being undefined, a smaller data type would suffice.  Accordingly, the data type has been changed to 8-bit unsigned integers.

