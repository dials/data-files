
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
InitialModel/job015/       None           18            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
Select/job014/particles.star            3 
InitialModel/job015/run_it150_data.star            3 
InitialModel/job015/run_it150_model.star            8 
InitialModel/job015/run_it150_class001.mrc            6 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
Select/job014/particles.star InitialModel/job015/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
InitialModel/job015/ InitialModel/job015/run_it150_data.star 
InitialModel/job015/ InitialModel/job015/run_it150_model.star 
InitialModel/job015/ InitialModel/job015/run_it150_class001.mrc 
 
