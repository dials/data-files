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

`EosS2-pre_SHR248e_CHCl3_pentane_1_1.img.bz2`
- A small molecule collected on RIGAKU Supernova, Eos S2 CCD with RIGAKU CrysAlisPro
- For testing FormatROD, TY5 compression, gain 100, bin 4
- Based on XRDa-0504 (https://doi.org/10.51093/xrd-00504) by Hirota et al.

`Gatan_float32_zero_array_001.dm4.gz`
- DM4 format float32 image with the data array zero-filled to aid compression
- For testing FormatGatanDM4
- Based on an image provided by Sam Morris at NTU

`Hypix6000-monoclinic_lysozyme1_1_1.rodhypix.bz2`
- Monoclinic lysozyme collected on HyPix 6000 with RIGAKU CrysAlisPro
- For testing FormatROD, TY6 compression
- Based on XRDa-0093 (https://doi.org/10.51093/xrd-00093) by Ohnishi, Nakane an Kurisu

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
- Images reformatted as NeXus NXmx format by Takanori Nakane, including parameter data_scale_factor, which accounts for a gain of 10

`ALS_1231-q315r_lyso_1_001.img.bz2`
- Original file `ALS_1231/q315r_lyso_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`ALS_422-lyso_041013a_1_001.img.bz2`
- Original file `ALS_422/lyso_041013a_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r44 | aaron | 2013-04-30 07:33:06 +0100 (Tue, 30 Apr 2013) | 3 lines

  NOIR test image from ALS 4.2.2


  ------------------------------------------------------------------------

`ALS_501-als501_q4_1_001.img.bz2`
- Original file `ALS_501/als501_q4_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------


`ALS_733-200mMNaCl5pcGlyc_400.edf`
- Original file `ALS_733/200mMNaCl5pcGlyc_400.edf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`ALS_821-q210_lyso_1_101.img.bz2`
- Original file `ALS_821/q210_lyso_1_101.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`ALS_831-q315r_lyso_001.img.bz2`
- Original file `ALS_831/q315r_lyso_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_14BMC-q315_1_001.img.bz2`
- Original file `APS_14BMC/q315_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_17ID-q210_1_001.img.bz2`
- Original file `APS_17ID/q210_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_19ID-q315_unbinned_a.0001.img.bz2`
- Original file `APS_19ID/q315_unbinned_a.0001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_19ID-t1.0001.img.bz2`
- Original file `APS_19ID/t1.0001.img.bz2`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1604 | upintheair | 2017-03-22 18:12:33 +0000 (Wed, 22 Mar 2017) | 1 line

  First of the bzip compressed SMV images from the DPF3 dataset, available from https://zenodo.org/record/45756#.WNK-RHWLTCI
  ------------------------------------------------------------------------

`APS_22ID-mar300.0001`
- Original file `APS_22ID/mar300.0001`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_23IDD-mar300_1_E1.0001.bz2`
- Original file `APS_23IDD/mar300_1_E1.0001`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_24IDC-pilatus_1_0001.cbf.bz2`
- Original file `APS_24IDC/pilatus_1_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_24IDC-q315_1_001.img.bz2`
- Original file `APS_24IDC/q315_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`APS_24IDE_test-thaum-12_1_0001.cbf.bz2`
- Original file `APS_24IDE_test/thaum-12_1_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1071 | schuerjp | 2015-02-12 21:18:29 +0000 (Thu, 12 Feb 2015) | 1 line

  uploading images from new detector
  ------------------------------------------------------------------------

`Bruker_PHOTON_II-dan_01_0001.sfrm.bz2`
- Original file `Bruker_PHOTON_II/dan_01_0001.sfrm`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1605 | upintheair | 2017-03-23 14:35:25 +0000 (Thu, 23 Mar 2017) | 1 line

  Image courtesy of Arnaud Basle from a Bruker PHOTON II detector installed at Newcastle. The header is not correctly interpreted by FormatBruker.py. For example, that Format (via iotbx/detectors/bruker.py) hard codes the image size as 1024*1024, which is incorrect
  ------------------------------------------------------------------------

`CLS1_08ID1-mar225_2_E0_0001.img.bz2`
- Original file `CLS1_08ID1/mar225_2_E0_0001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`DESY_BW7B-mar345_01_001.mar2300`
- Original file `DESY_BW7B/mar345_01_001.mar2300`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`DESY_ID141-q210_2_001.img.bz2`
- Original file `DESY_ID141/q210_2_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`DLS_I02-X4_wide_M1S4_1_0001.cbf.bz2`
- Original file `DLS_I02/X4_wide_M1S4_1_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r949 | gwinter | 2014-08-11 10:17:49 +0100 (Mon, 11 Aug 2014) | 1 line

  Set binary
  ------------------------------------------------------------------------
  r948 | gwinter | 2014-08-11 10:09:21 +0100 (Mon, 11 Aug 2014) | 1 line

  Image from Diamond I02 which has a very clear backstop shadow
  ------------------------------------------------------------------------

`DLS_I04-grid_full_cbf_0005.cbf.bz2`
- Original file `DLS_I04/grid_full_cbf_0005.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1619 | gwinter | 2017-04-19 15:21:43 +0100 (Wed, 19 Apr 2017) | 2 lines

  An example of a full CBF image which kills dxtbx@

  ------------------------------------------------------------------------

`DLS_I19-I19_P300k_00001.cbf`
- Original file `DLS_I19/I19_P300k_00001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r86 | gwinter | 2013-07-01 15:23:49 +0100 (Mon, 01 Jul 2013) | 1 line

  I19 imgCIF Pilatus 300k file
  ------------------------------------------------------------------------

`DLS_I23-I23_P12M_alpha_0001.cbf.bz2`
- Original file `DLS_I23/I23_P12M_alpha_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r799 | gwinter | 2014-07-01 08:42:22 +0100 (Tue, 01 Jul 2014) | 1 line

  Early images from I23 12M: be warned these are not really there yet, minimal header etc...
  ------------------------------------------------------------------------

`DLS_I23-germ_13KeV_0001.cbf.bz2`
- Original file `DLS_I23/germ_13KeV_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1067 | gwinter | 2015-01-23 13:07:08 +0000 (Fri, 23 Jan 2015) | 1 line

  Propset to bin
  ------------------------------------------------------------------------
  r1066 | gwinter | 2015-01-23 13:06:09 +0000 (Fri, 23 Jan 2015) | 1 line

  A real diffraction image from germanate from I23 @ 13 KeV; request to add such for tests
  ------------------------------------------------------------------------

`DLS_I24_stills-still_0001.cbf.bz2`
- Original file `DLS_I24_stills/still_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1914 | mgerstel | 2018-06-19 08:02:22 +0100 (Tue, 19 Jun 2018) | 3 lines

  Correct file name mismatch


  ------------------------------------------------------------------------
  r1912 | james.parkhurst | 2018-06-18 17:23:28 +0100 (Mon, 18 Jun 2018) | 2 lines

  Added i24 stills example

  ------------------------------------------------------------------------

`DLS_eBIC-nanB_4_singleframe_1.ser.bz2`
- Original file `DLS_eBIC/nanB_4_singleframe_1.ser.bz2`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1943 | upintheair | 2021-04-22 17:08:51 +0100 (Thu, 22 Apr 2021) | 2 lines

  We treat dials_regression as static and do not remove files

  ------------------------------------------------------------------------
  r1695 | upintheair | 2017-08-07 15:36:52 +0100 (Mon, 07 Aug 2017) | 1 line

  Single diffraction image from eBIC's Talos 200 keV microscope to exercise FormatSEReBIC
  ------------------------------------------------------------------------

`DTREK_home_lab-s01f0001.osc.bz2`
- Original file `DTREK_home_lab/s01f0001.osc`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`ESRF_BM14-mar165_001.mccd.bz2`
- Original file `ESRF_BM14/mar165_001.mccd`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`ESRF_BM14-mar225_1_001.mccd.bz2`
- Original file `ESRF_BM14/mar225_1_001.mccd`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`ESRF_ID231-q315r_7_001.img.bz2`
- Original file `ESRF_ID231/q315r_7_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`ESRF_ID29-trypsin_1_0001.cbf.bz2`
- Original file `ESRF_ID29/trypsin_1_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r45 | sauter | 2013-05-01 01:05:00 +0100 (Wed, 01 May 2013) | 1 line

  Pilatus CBFlib 0.8.0 case not previously supported.
  ------------------------------------------------------------------------

`LCLS_CXI-shot-s00-2011-12-02T21_07Z29.723_00569.pickle`
- Original file `LCLS_CXI/shot-s00-2011-12-02T21_07Z29.723_00569.pickle`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`LCLS_cspad_nexus-idx-20130301060858801.cbf`
- Original file `LCLS_cspad_nexus/idx-20130301060858801.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1625 | aaron | 2017-04-21 00:24:32 +0100 (Fri, 21 Apr 2017) | 5 lines

  CSPAD CBF and CSPAD NeXus example data

  This is a work in process.  The NeXus files here are being actively developed and will change.  See the README file.


  ------------------------------------------------------------------------

`LCLS_jungfrau-jungfrau_multipanel.cbf`
- Original file `LCLS_jungfrau/jungfrau_multipanel.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1909 | aaron | 2018-05-25 20:01:44 +0100 (Fri, 25 May 2018) | 3 lines

  Add jungfrau example cbf. General cbf from cbf_writer.py. Includes README with source info.


  ------------------------------------------------------------------------

`MLFSOM_simulation-fake_00001.img.bz2`
- Original file `MLFSOM_simulation/fake_00001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`MacScience-reallysurprise_001.ipf`
- Original file `MacScience/reallysurprise_001.ipf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`RAXIS-HTC-test1_lysozyme_0111060001.osc.bz2`
- Original file `RAXIS-HTC/test1_lysozyme_0111060001.osc`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`RigakuA200-XV10001.img.bz2`
- Original file `RigakuA200/XV10001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r54 | gwinter | 2013-05-14 16:01:07 +0100 (Tue, 14 May 2013) | 1 line

  Adding example A200 image: I should have done this when I added support to dxtbx; my bad
  ------------------------------------------------------------------------

`SACLA_MPCCD_Cheetah-run266702-0-subset.h5`
- Original file `SACLA_MPCCD_Cheetah/run266702-0-subset.h5`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1522 | nakane | 2016-10-13 03:15:40 +0100 (Thu, 13 Oct 2016) | 1 line

  Added test images from SACLA
  ------------------------------------------------------------------------

`SLS_Eiger_16M_as_CBF-insu_with_bs_labelit_0001.cbf.bz2`
- Original file `SLS_Eiger_16M_as_CBF/insu_with_bs_labelit_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1578 | gwinter | 2017-01-23 08:11:31 +0000 (Mon, 23 Jan 2017) | 1 line

  Example data from Eiger2CBF for Labelit tests; images at 0, 90 degrees 0.1 degrees each drawn from a DECTRIS example set
  ------------------------------------------------------------------------

`SLS_X06SA-mar225_2_001.img.bz2`
- Original file `SLS_X06SA/mar225_2_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`SLS_X06SA-pilatus6m_1_00001.cbf.bz2`
- Original file `SLS_X06SA/pilatus6m_1_00001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`SPring8_ADSC_SN916-Xtal17-2phi_3_015.cbf.bz2`
- Original file `SPring8_ADSC_SN916/Xtal17-2phi_3_015.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r155 | gwinter | 2013-10-03 09:39:07 +0100 (Thu, 03 Oct 2013) | 1 line

  Consistent naming of facility according to web page
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`SPring8_BL12B2_MX225HE-lys001_000001.img.bz2`
- Original file `SPring8_BL12B2_MX225HE/lys001_000001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SPring8_BL26B1_Raxis5-raxis5_000001.img.bz2`
- Original file `SPring8_BL26B1_Raxis5/raxis5_000001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SPring8_BL26B1_SaturnA200-A200_000001.img.bz2`
- Original file `SPring8_BL26B1_SaturnA200/A200_000001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SPring8_BL26B2_MX225-2sec_Al200um_000001.img.bz2`
- Original file `SPring8_BL26B2_MX225/2sec_Al200um_000001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SPring8_BL32XU-lys_00001.img.bz2`
- Original file `SPring8_BL32XU/lys_00001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`SPring8_BL32XU-rayonix225_0001.img.bz2`
- Original file `SPring8_BL32XU/rayonix225_0001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r154 | gwinter | 2013-10-03 09:29:32 +0100 (Thu, 03 Oct 2013) | 1 line

  Example from this beamline's rayonix detector - which has a reversed phi axis
  ------------------------------------------------------------------------

`SPring8_BL32XU-rayonix225hs_0001.img.bz2`
- Original file `SPring8_BL32XU/rayonix225hs_0001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r240 | gwinter | 2013-11-29 12:04:04 +0000 (Fri, 29 Nov 2013) | 1 line

  Example of data from new instrument there...
  ------------------------------------------------------------------------

`SPring8_BL32XU_MX225HS-ds_000001.img.bz2`
- Original file `SPring8_BL32XU_MX225HS/ds_000001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SPring8_BL38B1_MX225HE-bl38b1_001.img.bz2`
- Original file `SPring8_BL38B1_MX225HE/bl38b1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SPring8_BL41XU_PILATUS3_6M-data1_000001.cbf.bz2`
- Original file `SPring8_BL41XU_PILATUS3_6M/data1_000001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SPring8_BL44XU_MX300HE-bl44xu_lys_000001.img.bz2`
- Original file `SPring8_BL44XU_MX300HE/bl44xu_lys_000001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r1059 | upintheair | 2014-12-24 18:10:23 +0000 (Wed, 24 Dec 2014) | 4 lines

  Images from various SPring-8 beamlines courtesy of Keitaro Yamashita.
  All lysozyme samples, with the exception of BL41XU, which is thaumatin.
  All should create 'reverse-phi' goniometers (FIXME in January).

  ------------------------------------------------------------------------

`SRS_101-mar225_001.img.bz2`
- Original file `SRS_101/mar225_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`SRS_142-q4_1_001.img.bz2`
- Original file `SRS_142/q4_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`SSRL_bl111-mar325_1_001.mccd.bz2`
- Original file `SSRL_bl111/mar325_1_001.mccd`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`SSRL_bl91-q315_1_001.img.bz2`
- Original file `SSRL_bl91/q315_1_001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r2 | gwinter | 2013-02-14 18:03:02 +0000 (Thu, 14 Feb 2013) | 1 line

  First cut of a test suite for image header reading
  ------------------------------------------------------------------------

`Texas_A_and_M_University-lyziph6p5_01_0001.sfrm`
- Original file `Texas_A_and_M_University/lyziph6p5_01_0001.sfrm`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`johns_hopkins_raxisII-lys_001.osc`
- Original file `johns_hopkins_raxisII/lys_001.osc`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`saturn-lyso_00001.img.bz2`
- Original file `saturn/lyso_00001.img`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r3 | sauter | 2013-02-22 00:08:03 +0000 (Fri, 22 Feb 2013) | 1 line

  More comprehensive collection of images readable by LABELIT, along with a test script that reads everything.  A little work still needed on some corner cases.
  ------------------------------------------------------------------------

`xia2-merge2cbf_averaged_0001.cbf.bz2`
- Original file `xia2/merge2cbf_averaged_0001.cbf`committed to `dials_regression`:
  ------------------------------------------------------------------------
  r75 | rjgildea | 2013-06-18 16:36:07 +0100 (Tue, 18 Jun 2013) | 1 line

  xia2/merge2cbf example image
  ------------------------------------------------------------------------
