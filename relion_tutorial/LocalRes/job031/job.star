
# version 30001

data_job

_rlnJobType                            16
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
adhoc_bfac        -30 
    angpix      1.244 
  do_queue         No 
do_relion_locres        Yes 
do_resmap_locres         No 
     fn_in Refine3D/job029/run_half1_class001_unfil.mrc 
   fn_mask         "" 
    fn_mtf         "" 
 fn_resmap /public/EM/ResMap/ResMap-1.1.4-linux64 
    maxres          0 
min_dedicated         24 
    minres          0 
    nr_mpi         12 
nr_threads          1 
other_args         "" 
      pval       0.05 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
   stepres          1 
 

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
adhoc_bfac User-provided__B-factor:            6       -100   -500.00000     0.000000    -25.00000  undefined  undefined Probably,__the__overall__B-factor__as__was__estimated__in__the__postprocess__is__a__useful__value__for__here.__Use__negative__values__for__sharpening.__Be__careful:__if__you__over-sharpen__your__map,__you__may__end__up__interpreting__noise__for__signal! ++undefined++ 
    angpix Calibrated__pixel__size__(A)            6          1     0.300000     5.000000     0.100000  undefined  undefined Provide__the__final,__calibrated__pixel__size__in__Angstroms.__This__value__may__be__different__from__the__pixel-size__used__thus__far,__e.g.__when__you__have__recalibrated__the__pixel__size__using__the__fit__to__a__PDB__model.__The__X-axis__of__the__output__FSC__plot__will__use__this__calibrated__value. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
do_relion_locres Use__Relion?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_postprocess__will__be__used__for__local-rtesolution__estimation.__This__program__basically__performs__a__series__of__post-processing__operations__with__a__small__soft,__spherical__mask__that__is__moved__over__the__entire__map,__while__using__phase-randomisation__to__estimate__the__convolution__effects__of__that__mask.__&&&&The__output__relion_locres.mrc__map__can__be__used__to__color__the__surface__of__a__map__in__UCSF__Chimera__according__to__its__local__resolution.__The__output__relion_locres_filtered.mrc__is__a__composite__map__that__is__locally__filtered__to__the__estimated__resolution.__This__is__a__developmental__feature__in__need__of__further__testing,__but__initial__results__indicate__it__may__be__useful.__&&&&Note__that__only__this__program__can__use__MPI,__the__ResMap__wrapper__cannot__use__MPI. ++undefined++ 
do_resmap_locres Use__ResMap?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__ResMap__will__be__used__for__local__resolution__estimation. ++undefined++ 
     fn_in One__of__the__2__unfiltered__half-maps:            3         ""     0.000000     0.000000     0.000000 MRC__map__files__(*_unfil.mrc)  undefined Provide__one__of__the__two__unfiltered__half-reconstructions__that__were__output__upon__convergence__of__a__3D__auto-refine__run. ++undefined++ 
   fn_mask User-provided__solvent__mask:            3         ""     0.000000     0.000000     0.000000 Image__Files__(*.{spi,vol,msk,mrc})  undefined Provide__a__mask__with__values__between__0__and__1__around__all__domains__of__the__complex. ++undefined++ 
    fn_mtf MTF__of__the__detector__(STAR__file)            2         ""     0.000000     0.000000     0.000000 STAR__Files__(*.star)          . The__MTF__of__the__detector__is__used__to__complement__the__user-provided__B-factor__in__the__sharpening.__If__you__don't__have__this__curve,__you__can__leave__this__field__empty. ++undefined++ 
 fn_resmap ResMap__executable:            2 /public/EM/ResMap/ResMap-1.1.4-linux64     0.000000     0.000000     0.000000    ResMap*          . Location__of__the__ResMap__executable.__You__can__control__the__default__of__this__field__by__setting__environment__variable__RELION_RESMAP_EXECUTABLE,__or__by__editing__the__first__few__lines__in__src/gui_jobwindow.h__and__recompile__the__code.__&&&&Note__that__the__ResMap__wrapper__cannot__use__MPI. ++undefined++ 
    maxres Lowest__resolution__(A):__            6          0     0.000000    10.000000     0.100000  undefined  undefined ResMaps__maxRes__parameter.__By__default__(0),__the__program__will__stop__at__4x__the__pixel__size ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
    minres Highest__resolution__(A):__            6          0     0.000000    10.000000     0.100000  undefined  undefined ResMaps__minRes__parameter.__By__default__(0),__the__program__will__start__at__just__above__2x__the__pixel__size ++undefined++ 
    nr_mpi Number__of__MPI__procs:            6          1     1.000000    64.000000     1.000000  undefined  undefined Number__of__MPI__nodes__to__use__in__parallel.__When__set__to__1,__MPI__will__not__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_MPI_MAX. ++undefined++ 
nr_threads Number__of__threads:            6          1     1.000000    16.000000     1.000000  undefined  undefined Number__of__shared-memory__(POSIX)__threads__to__use__in__parallel.__When__set__to__1,__no__multi-threading__will__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_THREAD_MAX. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      pval   P-value:            6       0.05     0.000000     1.000000     0.010000  undefined  undefined This__value__is__typically__left__at__0.05.__If__you__change__it,__report__the__modified__value__in__your__paper! ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
   stepres Resolution__step__size__(A)            6          1     0.100000     3.000000     0.100000  undefined  undefined ResMaps__stepSize__parameter. ++undefined++ 
 
