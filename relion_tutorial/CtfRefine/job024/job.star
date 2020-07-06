
# version 30001

data_job

_rlnJobType                            21
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
do_4thorder         No 
do_aniso_mag         No 
  do_astig Per-micrograph 
do_bfactor         No 
    do_ctf        Yes 
do_defocus Per-particle 
  do_phase         No 
  do_queue         No 
   do_tilt         No 
do_trefoil        Yes 
   fn_data CtfRefine/job023/particles_ctf_refine.star 
   fn_post PostProcess/job021/postprocess.star 
min_dedicated         24 
    minres         30 
    nr_mpi          1 
nr_threads         12 
other_args         "" 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
 

# version 30001

data_joboptions_full_definition

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionGUILabel #2 
_rlnJoboptionType #3 
_rlnJobOptionDefaultValue #4 
_rlnJobOptionSliderMin #5 
_rlnJobOptionSliderMax #6 
_rlnJobOptionSliderStep #7 
_rlnJobOptionFilePattern #8 
_rlnJobOptionDirectoryDefault #9 
_rlnJobOptionHelpText #10 
_rlnJobOptionMenuOptions #11 
do_4thorder Estimate__4th__order__aberrations?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_ctf_refine__will__also__estimate__the__Cs__and__the__tetrafoil__(4-fold__astigmatism)__per__optics__group.__This__option__is__only__recommended__for__data__sets__that__extend__beyond__3__Angstrom__resolution. ++undefined++ 
do_aniso_mag Estimate__(anisotropic)__magnification?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_ctf_refine__will__also__estimate__the__(anisotropic)__magnification__per__optics__group.__This__option__cannot__be__done__simultaneously__with__higher-order__aberration__estimation.__It's__probably__best__to__estimate__the__one__that__is__most__off__first,__and__the__other__one__second.__It__might__be__worth__repeating__the__estimation__if__both__are__off. ++undefined++ 
  do_astig Fit__astigmatism?            4         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__per-particle__or__per-micrograph,__then__relion_ctf_refine__will__estimate__astigmatism. ++No++Per-micrograph++Per-particle++ 
do_bfactor Fit__B-factor?            4         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__per-particle__or__per-micrograph,__then__relion_ctf_refine__will__estimate__B-factors__that__describe__the__signal__falloff. ++No++Per-micrograph++Per-particle++ 
    do_ctf Perform__CTF__parameter__fitting?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_ctf_refine__will__be__used__to__estimate__the__selected__parameters__below. ++undefined++ 
do_defocus Fit__defocus?            4         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__per-particle__or__per-micrograph,__then__relion_ctf_refine__will__estimate__defocus__values. ++No++Per-micrograph++Per-particle++ 
  do_phase Fit__phase-shift?            4         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__per-particle__or__per-micrograph,__then__relion_ctf_refine__will__estimate__(VPP?)__phase__shift__values. ++No++Per-micrograph++Per-particle++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
   do_tilt Estimate__beamtilt?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_ctf_refine__will__also__estimate__the__beamtilt__per__optics__group.__This__option__is__only__recommended__for__data__sets__that__extend__beyond__4.5__Angstrom__resolution. ++undefined++ 
do_trefoil Also__estimate__trefoil?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_ctf_refine__will__also__estimate__the__trefoil__(3-fold__astigmatism)__per__optics__group.__This__option__is__only__recommended__for__data__sets__that__extend__beyond__3.5__Angstrom__resolution. ++undefined++ 
   fn_data Particles__(from__Refine3D):            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined The__input__STAR__file__with__the__metadata__of__all__particles. ++undefined++ 
   fn_post Postprocess__STAR__file:            3         ""     0.000000     0.000000     0.000000 STAR__files__(postprocess.star)  undefined The__STAR__file__generated__by__a__PostProcess__job.__The__mask__used__for__this__postprocessing__will__be__applied__to__the__unfiltered__half-maps__and__should__encompass__the__entire__complex.__The__resulting__FSC__curve__will__be__used__for__weighting__the__different__frequencies.__&&&&Note__that__for__helices__it__is__common__practice__to__use__a__mask__only__encompassing__the__central__30%__or__so__of__the__box.__This__gives__higher__resolution__estimates,__as__it__disregards__ill-defined__regions__near__the__box__edges.__However,__for__ctf_refine__it__is__better__to__use__a__mask__encompassing__(almost)__the__entire__box,__as__otherwise__there__may__not__be__enough__signal. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
    minres Minimum__resolution__for__fits__(A):__            6         30     8.000000    40.000000     1.000000  undefined  undefined The__minimum__spatial__frequency__(in__Angstrom)__used__in__the__beamtilt__fit. ++undefined++ 
    nr_mpi Number__of__MPI__procs:            6          1     1.000000    64.000000     1.000000  undefined  undefined Number__of__MPI__nodes__to__use__in__parallel.__When__set__to__1,__MPI__will__not__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_MPI_MAX. ++undefined++ 
nr_threads Number__of__threads:            6          1     1.000000    16.000000     1.000000  undefined  undefined Number__of__shared-memory__(POSIX)__threads__to__use__in__parallel.__When__set__to__1,__no__multi-threading__will__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_THREAD_MAX. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
 
