
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
Extract/job018/       None            5            0 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeType #2 
CtfFind/job003/micrographs_ctf.star            1 
Select/job017/particles.star            3 
Extract/job018/particles.star            3 
Extract/job018/coords_suffix_extract.star            2 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
CtfFind/job003/micrographs_ctf.star Extract/job018/ 
Select/job017/particles.star Extract/job018/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
Extract/job018/ Extract/job018/particles.star 
Extract/job018/ Extract/job018/coords_suffix_extract.star 
 
