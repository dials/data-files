
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
LocalRes/job031/       None           16            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
Refine3D/job029/run_half1_class001_unfil.mrc           10 
LocalRes/job031/relion_locres_filtered.mrc           11 
LocalRes/job031/relion_locres.mrc           12 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
Refine3D/job029/run_half1_class001_unfil.mrc LocalRes/job031/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
LocalRes/job031/ LocalRes/job031/relion_locres_filtered.mrc 
LocalRes/job031/ LocalRes/job031/relion_locres.mrc 
 
