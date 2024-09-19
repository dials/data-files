This directory is intended to store example images primarily for the purpose of
testing dxtbx format classes.

`DLS_I03_smargon_0001.cbf.gz`
- Full CBF image from DLS beamline I03, with SmarGon goniometer installed
dls/i03/data/2017/cm16791-5/20171123/SmarGon/rotation_calibration4/th1_O45_C45_P45_1_0001.cbf
- For testing FormatCBFFullPilatusDLS6MSN126

`DLS_I23_P12M_thau_00001.cbf.gz`
- miniCBF PILATUS 12M image from DLS beamline I23, with Kappa goniometer installed
- Original file: `/dls/i23/data/2021/cm28128-3/TestThaumatin/20210617/TestThaumatin_1_4500eV/data_1_00001.cbf`
- SynchWeb permalink: https://ispyb.diamond.ac.uk/dc/visit/cm28128-3/id/6392922

`dlsnxs2cbf_therm_0001.cbf.gz`
- miniCBF file converted from original .h5 file using dlsnxs2cbf
- Original file: https://zenodo.org/record/2616448/files/Therm_6_2_master.h5
- For testing FormatCBFMiniEigerDLS16MSN160

`Gatan_float32_zero_array_001.dm4.gz`
- DM4 format float32 image with the data array zero-filled to aid compression
- For testing FormatGatanDM4
- Based on an image provided by Sam Morris at NTU

`SACLA-MPCCD-run266702-0-subset.h5`
- This file contains first four images from run 266702-0 in CXIDB #33.
- See http://cxidb.org/id-33.html
- Provided by Takanori Nakane
- SACLA-MPCCD-run266702-0-subset-refined_experiments_level1.json: refined detector metrology from Rahel Woldeyes
- SACLA-MPCCD-run266702-0-subset-known_orientations.expt: indexing results from dials.stills_process

`SACLA-MPCCD-Phase3-21528-5images.h5`
- Courtesy of Takanori Nakane (2019)
- See also: https://github.com/cctbx/dxtbx/issues/70#issuecomment-520026981
- For testing FormatHDF5SaclaMPCCD

`simtbx_FormatSMVJHSim_001.img`
- A simulated lysozyme diffraction image with electron diffraction geometry
- Created with dev.dials.sim_ED_stills (from dials_scratch)
- For testing FormatSMVJHSim and electron diffraction indexing

`ThermoFisher_EPU-D_1.5_001.mrc.gz`
- MRC format image collected by Yun Song at eBIC
- This uses ThermoFisher EPU-D 1.5's FEI2 extended header, which includes comprehensive
  metadata describing the experiment geometry.

`TIMEPIX_SU_512-stdgoni_0001.img`
- Courtesy of Viktor Bengtsson (2019)
- For testing FormatSMVTimePix_SU_512x512

`TIMEPIX_SU_516-stdgoni_0001.img`
- Courtesy of Viktor Bengtsson (2019)
- For testing FormatSMVTimePix_SU_516x516

`dectris_eiger_master.h5`, `dectris_eiger_data_000001.h5`
- Semi-synthetic Dectris standard Nexus format single image data from an Eiger 9M detector.
- Created from [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1221344.svg)](https://doi.org/10.5281/zenodo.1221344), modified to contain only the first image from those data.
- Additionally, various detector metadata have been spoofed to reduce the size of the master file:
  * The first `countrate_correction_lookup_table`, `countrate_correction_table`, `flatfield`, `pixel_mask` and `trimbit` data sets of each `detectorModule` have been chunked in order to enable GZip compression.
  * Equivalent such data sets for the other 35 detector modules have been made hard links to those of the the first detector module.
  * The global `flatfield` and `pixel_mask` have also been chunked to enable compression.
  * To improve compressibility, the detector module `flatfield` and global `flatfield` values have all been set to `1`, the detector module `pixel_mask` and global `pixel_mask` values have all been set to `0` and the detector module `trimbit` values have all been set to `16`.
  * Dectris uses 32-bit unsigned integers to record the global and module `pixel_mask` values.  Since only the five least significant bits are meaningful, the other 27 bits being undefined, a smaller data type would suffice.  Accordingly, the data type has been changed to 8-bit unsigned integers.

`endonat3_001.mar2300`
- Example mar345 file
- Original source: Erskine, Peter, & Cooper, Jonathan. (2016). Atomic resolution X-ray diffraction images of native endothiapepsin. [Data set]. Zenodo. http://doi.org/10.5281/zenodo.196290

`SACLA-MPCCD-run197287-0-nexus.h5`
- Courtesy of Takanori Nakane (2024)
- 3 images from CXI.DB entry 221, https://cxidb.org/id-221.html
- Images reformated as NeXus NXmx format by Takanori Nakane, including parameter data_scale_factor, which accounts for a gain of 10
