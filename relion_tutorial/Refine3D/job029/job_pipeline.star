
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
Refine3D/job029/       None           10            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
Polish/job028/shiny.star            3 
Refine3D/job025/run_class001.mrc            6 
MaskCreate/job020/mask.mrc            7 
Refine3D/job029/run_data.star            3 
Refine3D/job029/run_half1_class001_unfil.mrc           10 
Refine3D/job029/run_class001.mrc            6 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
Polish/job028/shiny.star Refine3D/job029/ 
Refine3D/job025/run_class001.mrc Refine3D/job029/ 
MaskCreate/job020/mask.mrc Refine3D/job029/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
Refine3D/job029/ Refine3D/job029/run_data.star 
Refine3D/job029/ Refine3D/job029/run_half1_class001_unfil.mrc 
Refine3D/job029/ Refine3D/job029/run_class001.mrc 
 
