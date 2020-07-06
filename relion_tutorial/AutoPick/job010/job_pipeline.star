
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
AutoPick/job010/       None            4            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
Select/job005/micrographs_selected.star            1 
Select/job009/class_averages.star            5 
AutoPick/job010/coords_suffix_autopick.star            2 
AutoPick/job010/logfile.pdf           13 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
Select/job005/micrographs_selected.star AutoPick/job010/ 
Select/job009/class_averages.star AutoPick/job010/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
AutoPick/job010/ AutoPick/job010/coords_suffix_autopick.star 
AutoPick/job010/ AutoPick/job010/logfile.pdf 
 
