
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
Select/job005/       None            7            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
ManualPick/job004/coords_suffix_manualpick.star            2 
Select/job005/micrographs_selected.star            1 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
ManualPick/job004/coords_suffix_manualpick.star Select/job005/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
Select/job005/ Select/job005/micrographs_selected.star 
 
