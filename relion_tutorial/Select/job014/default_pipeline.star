
# version 30001

data_pipeline_general

_rlnPipeLineJobCounter                      17
 

# version 30001

data_pipeline_processes

loop_ 
_rlnPipeLineProcessName #1 
_rlnPipeLineProcessAlias #2 
_rlnPipeLineProcessType #3 
_rlnPipeLineProcessStatus #4 
Import/job001/ Import/movies/            0            2 
MotionCorr/job002/ MotionCorr/relioncor2/            1            2 
CtfFind/job003/ CtfFind/ctffind4/            2            2 
ManualPick/job004/ ManualPick/justatest/            3            2 
Select/job005/ Select/5mics/            7            2 
AutoPick/job006/ AutoPick/LoG/            4            2 
Extract/job007/ Extract/LoG/            5            2 
Class2D/job008/ Class2D/LoG/            8            2 
Select/job009/ Select/templates4autopick/            7            2 
AutoPick/job010/ AutoPick/optimise_params/            4            2 
AutoPick/job011/ AutoPick/template/            4            2 
Extract/job012/ Extract/template/            5            2 
Class2D/job013/ Class2D/template/            8            2 
Select/job014/ Select/class2d_template/            7            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
Import/job001/movies.star            0 
MotionCorr/job002/corrected_micrographs.star            1 
MotionCorr/job002/logfile.pdf           13 
MotionCorr/job003/corrected_micrographs.star            1 
CtfFind/job003/micrographs_ctf.star            1 
CtfFind/job003/logfile.pdf           13 
ManualPick/job004/coords_suffix_manualpick.star            2 
ManualPick/job004/micrographs_selected.star            1 
Select/job005/micrographs_selected.star            1 
AutoPick/job006/coords_suffix_autopick.star            2 
AutoPick/job006/logfile.pdf           13 
Extract/job007/particles.star            3 
Extract/job008/particles.star            3 
Class2D/job008/run_it025_data.star            3 
Class2D/job008/run_it025_model.star            8 
Select/job009/particles.star            3 
Select/job009/class_averages.star            5 
AutoPick/job010/coords_suffix_autopick.star            2 
AutoPick/job010/logfile.pdf           13 
AutoPick/job011/coords_suffix_autopick.star            2 
AutoPick/job011/logfile.pdf           13 
Extract/job012/particles.star            3 
Class2D/job013/run_it025_data.star            3 
Class2D/job013/run_it025_model.star            8 
Select/job014/particles.star            3 
Select/job014/class_averages.star            5 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
Import/job001/movies.star MotionCorr/job002/ 
MotionCorr/job003/corrected_micrographs.star CtfFind/job003/ 
MotionCorr/job002/corrected_micrographs.star CtfFind/job003/ 
CtfFind/job003/micrographs_ctf.star ManualPick/job004/ 
ManualPick/job004/coords_suffix_manualpick.star Select/job005/ 
Select/job005/micrographs_selected.star AutoPick/job006/ 
CtfFind/job003/micrographs_ctf.star Extract/job007/ 
AutoPick/job006/coords_suffix_autopick.star Extract/job007/ 
Select/job005/micrographs_selected.star Extract/job007/ 
Extract/job008/particles.star Class2D/job008/ 
Extract/job007/particles.star Class2D/job008/ 
Class2D/job008/run_it025_model.star Select/job009/ 
Select/job005/micrographs_selected.star AutoPick/job010/ 
Select/job009/class_averages.star AutoPick/job010/ 
CtfFind/job003/micrographs_ctf.star AutoPick/job011/ 
Select/job009/class_averages.star AutoPick/job011/ 
Select/job005/micrographs_selected.star Extract/job012/ 
AutoPick/job011/coords_suffix_autopick.star Extract/job012/ 
CtfFind/job003/micrographs_ctf.star Extract/job012/ 
Extract/job012/particles.star Class2D/job013/ 
Class2D/job013/run_it025_model.star Select/job014/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
Import/job001/ Import/job001/movies.star 
MotionCorr/job002/ MotionCorr/job002/corrected_micrographs.star 
MotionCorr/job002/ MotionCorr/job002/logfile.pdf 
CtfFind/job003/ CtfFind/job003/micrographs_ctf.star 
CtfFind/job003/ CtfFind/job003/logfile.pdf 
ManualPick/job004/ ManualPick/job004/coords_suffix_manualpick.star 
ManualPick/job004/ ManualPick/job004/micrographs_selected.star 
Select/job005/ Select/job005/micrographs_selected.star 
AutoPick/job006/ AutoPick/job006/coords_suffix_autopick.star 
AutoPick/job006/ AutoPick/job006/logfile.pdf 
Extract/job007/ Extract/job007/particles.star 
Class2D/job008/ Class2D/job008/run_it025_data.star 
Class2D/job008/ Class2D/job008/run_it025_model.star 
Select/job009/ Select/job009/particles.star 
Select/job009/ Select/job009/class_averages.star 
AutoPick/job010/ AutoPick/job010/coords_suffix_autopick.star 
AutoPick/job010/ AutoPick/job010/logfile.pdf 
AutoPick/job011/ AutoPick/job011/coords_suffix_autopick.star 
AutoPick/job011/ AutoPick/job011/logfile.pdf 
Extract/job012/ Extract/job012/particles.star 
Class2D/job013/ Class2D/job013/run_it025_data.star 
Class2D/job013/ Class2D/job013/run_it025_model.star 
Select/job014/ Select/job014/particles.star 
Select/job014/ Select/job014/class_averages.star 
 
