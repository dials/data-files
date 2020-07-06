
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
CtfRefine/job024/       None           21            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
CtfRefine/job023/particles_ctf_refine.star            3 
CtfRefine/job024/logfile.pdf           13 
CtfRefine/job024/particles_ctf_refine.star            3 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
CtfRefine/job023/particles_ctf_refine.star CtfRefine/job024/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
CtfRefine/job024/ CtfRefine/job024/logfile.pdf 
CtfRefine/job024/ CtfRefine/job024/particles_ctf_refine.star 
 
