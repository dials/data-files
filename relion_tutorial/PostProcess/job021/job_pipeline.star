
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
PostProcess/job021/       None           15            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
MaskCreate/job020/mask.mrc            7 
Refine3D/job019/run_half1_class001_unfil.mrc           10 
PostProcess/job021/postprocess.mrc           11 
PostProcess/job021/postprocess_masked.mrc           11 
PostProcess/job021/logfile.pdf           13 
PostProcess/job021/postprocess.star           14 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
MaskCreate/job020/mask.mrc PostProcess/job021/ 
Refine3D/job019/run_half1_class001_unfil.mrc PostProcess/job021/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
PostProcess/job021/ PostProcess/job021/postprocess.mrc 
PostProcess/job021/ PostProcess/job021/postprocess_masked.mrc 
PostProcess/job021/ PostProcess/job021/logfile.pdf 
PostProcess/job021/ PostProcess/job021/postprocess.star 
 
