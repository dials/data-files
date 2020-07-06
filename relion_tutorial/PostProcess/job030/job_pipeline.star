
# version 30001

data_pipeline_general

_rlnPipeLineJobCounter                       2
 

# version 30001

data_pipeline_processes

loop_ 
_rlnPipeLineProcessName #1 
_rlnPipeLineProcessAlias #2 
_rlnPipeLineProcessType #3 
_rlnPipeLineProcessStatus #4 
PostProcess/job030/       None           15            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
MaskCreate/job020/mask.mrc            7 
Refine3D/job029/run_half1_class001_unfil.mrc           10 
PostProcess/job030/postprocess.mrc           11 
PostProcess/job030/postprocess_masked.mrc           11 
PostProcess/job030/logfile.pdf           13 
PostProcess/job030/postprocess.star           14 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
MaskCreate/job020/mask.mrc PostProcess/job030/ 
Refine3D/job029/run_half1_class001_unfil.mrc PostProcess/job030/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
PostProcess/job030/ PostProcess/job030/postprocess.mrc 
PostProcess/job030/ PostProcess/job030/postprocess_masked.mrc 
PostProcess/job030/ PostProcess/job030/logfile.pdf 
PostProcess/job030/ PostProcess/job030/postprocess.star 
 
