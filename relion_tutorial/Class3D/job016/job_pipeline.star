
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
Class3D/job016/       None            9            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
Select/job014/particles.star            3 
InitialModel/job015/run_it150_class001_symD2.mrc            6 
Class3D/job016/run_it025_data.star            3 
Class3D/job016/run_it025_model.star            8 
Class3D/job016/run_it025_class001.mrc            6 
Class3D/job016/run_it025_class002.mrc            6 
Class3D/job016/run_it025_class003.mrc            6 
Class3D/job016/run_it025_class004.mrc            6 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
Select/job014/particles.star Class3D/job016/ 
InitialModel/job015/run_it150_class001_symD2.mrc Class3D/job016/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
Class3D/job016/ Class3D/job016/run_it025_data.star 
Class3D/job016/ Class3D/job016/run_it025_model.star 
Class3D/job016/ Class3D/job016/run_it025_class001.mrc 
Class3D/job016/ Class3D/job016/run_it025_class002.mrc 
Class3D/job016/ Class3D/job016/run_it025_class003.mrc 
Class3D/job016/ Class3D/job016/run_it025_class004.mrc 
 
