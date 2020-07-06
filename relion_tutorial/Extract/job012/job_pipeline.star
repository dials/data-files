
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
Extract/job012/       None            5            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
CtfFind/job003/micrographs_ctf.star            1 
AutoPick/job011/coords_suffix_autopick.star            2 
Extract/job012/particles.star            3 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
CtfFind/job003/micrographs_ctf.star Extract/job012/ 
AutoPick/job011/coords_suffix_autopick.star Extract/job012/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
Extract/job012/ Extract/job012/particles.star 
 
