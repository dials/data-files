
# version 30001

data_job

_rlnJobType                             2
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
       box        512 
   ctf_win         -1 
      dast        100 
     dfmax      50000 
     dfmin       5000 
    dfstep        500 
    do_EPA         No 
do_ignore_ctffind_params        Yes 
do_phaseshift         No 
  do_queue         No 
fn_ctffind_exe /public/EM/ctffind/ctffind.exe 
fn_gctf_exe /public/EM/Gctf/bin/Gctf 
   gpu_ids         "" 
input_star_mics MotionCorr/job002/corrected_micrographs.star 
min_dedicated         24 
    nr_mpi          6 
other_args         "" 
other_gctf_args         "" 
 phase_max        180 
 phase_min          0 
phase_step         10 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
    resmax          5 
    resmin         30 
slow_search         No 
use_ctffind4        Yes 
  use_gctf         No 
use_given_ps        Yes 
  use_noDW         No 
 

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
       box FFT__box__size__(pix):            6        512    64.000000  1024.000000     8.000000  undefined  undefined CTFFIND's__Box__parameter ++undefined++ 
   ctf_win Estimate__CTF__on__window__size__(pix)__            6         -1    -16.00000  4096.000000    16.000000  undefined  undefined If__a__positive__value__is__given,__a__squared__window__of__this__size__at__the__center__of__the__micrograph__will__be__used__to__estimate__the__CTF.__This__may__be__useful__to__exclude__parts__of__the__micrograph__that__are__unsuitable__for__CTF__estimation,__e.g.__the__labels__at__the__edge__of__phtographic__film.__&&&&The__original__micrograph__will__be__used__(i.e.__this__option__will__be__ignored)__if__a__negative__value__is__given. ++undefined++ 
      dast Amount__of__astigmatism__(A):            6        100     0.000000  2000.000000   100.000000  undefined  undefined CTFFIND's__dAst__parameter,__GCTFs__-astm__parameter ++undefined++ 
     dfmax Maximum__defocus__value__(A):            6      50000 20000.000000 100000.00000  1000.000000  undefined  undefined CTFFIND's__dFMax__parameter ++undefined++ 
     dfmin Minimum__defocus__value__(A):            6       5000     0.000000 25000.000000  1000.000000  undefined  undefined CTFFIND's__dFMin__parameter ++undefined++ 
    dfstep Defocus__step__size__(A):            6        500   200.000000  2000.000000   100.000000  undefined  undefined CTFFIND's__FStep__parameter ++undefined++ 
    do_EPA Perform__equi-phase__averaging?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__equi-phase__averaging__is__used__in__the__defocus__refinement,__otherwise__basic__rotational__averaging__will__be__performed. ++undefined++ 
do_ignore_ctffind_params Ignore__'Searches'__parameters?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__all__parameters__EXCEPT__for__phase__shift__search__and__its__ranges__on__the__'Searches'__tab__will__be__ignored,__and__Gctf's__default__parameters__will__be__used__(box.size=1024;__min.resol=50;__max.resol=4;__min.defocus=500;__max.defocus=90000;__step.defocus=500;__astigm=1000)__&&&&f__set__to__No,__all__parameters__on__the__CTFFIND__tab__will__be__passed__to__Gctf. ++undefined++ 
do_phaseshift Estimate__phase__shifts?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__CTFFIND4__will__estimate__the__phase__shift,__e.g.__as__introduced__by__a__Volta__phase-plate ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
fn_ctffind_exe CTFFIND-4.1__executable:            2 /public/EM/ctffind/ctffind.exe     0.000000     0.000000     0.000000          *          . Location__of__the__CTFFIND__(release__4.1__or__later)__executable.__You__can__control__the__default__of__this__field__by__setting__environment__variable__RELION_CTFFIND_EXECUTABLE,__or__by__editing__the__first__few__lines__in__src/gui_jobwindow.h__and__recompile__the__code. ++undefined++ 
fn_gctf_exe Gctf__executable:            2 /public/EM/Gctf/bin/Gctf     0.000000     0.000000     0.000000          *          . Location__of__the__Gctf__executable.__You__can__control__the__default__of__this__field__by__setting__environment__variable__RELION_GCTF_EXECUTABLE,__or__by__editing__the__first__few__lines__in__src/gui_jobwindow.h__and__recompile__the__code. ++undefined++ 
   gpu_ids Which__GPUs__to__use:            1         ""     0.000000     0.000000     0.000000  undefined  undefined This__argument__is__not__necessary.__If__left__empty,__the__job__itself__will__try__to__allocate__available__GPU__resources.__You__can__override__the__default__allocation__by__providing__a__list__of__which__GPUs__(0,1,2,3,__etc)__to__use.__MPI-processes__are__separated__by__':',__threads__by__','.__ ++undefined++ 
input_star_mics Input__micrographs__STAR__file:            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined A__STAR__file__with__all__micrographs__to__run__CTFFIND__or__Gctf__on ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
    nr_mpi Number__of__MPI__procs:            6          1     1.000000    64.000000     1.000000  undefined  undefined Number__of__MPI__nodes__to__use__in__parallel.__When__set__to__1,__MPI__will__not__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_MPI_MAX. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
other_gctf_args Other__Gctf__options:            1         ""     0.000000     0.000000     0.000000  undefined  undefined Provide__additional__gctf__options__here. ++undefined++ 
 phase_max Phase__shift__(deg)__-__Max:            1        180     0.000000     0.000000     0.000000  undefined  undefined Minimum,__maximum__and__step__size__(in__degrees)__for__the__search__of__the__phase__shift ++undefined++ 
 phase_min Phase__shift__(deg)__-__Min:            1          0     0.000000     0.000000     0.000000  undefined  undefined Minimum,__maximum__and__step__size__(in__degrees)__for__the__search__of__the__phase__shift ++undefined++ 
phase_step Phase__shift__(deg)__-__Step:            1         10     0.000000     0.000000     0.000000  undefined  undefined Minimum,__maximum__and__step__size__(in__degrees)__for__the__search__of__the__phase__shift ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
    resmax Maximum__resolution__(A):            6          5     1.000000    20.000000     1.000000  undefined  undefined CTFFIND's__ResMax__parameter ++undefined++ 
    resmin Minimum__resolution__(A):            6         30    10.000000   200.000000    10.000000  undefined  undefined CTFFIND's__ResMin__parameter ++undefined++ 
slow_search Use__exhaustive__search?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__CTFFIND4__will__use__slower__but__more__exhaustive__search.__This__option__is__recommended__for__CTFFIND__version__4.1.8__and__earlier,__but__probably__not__necessary__for__4.1.10__and__later.__It__is__also__worth__trying__this__option__when__astigmatism__and/or__phase__shifts__are__difficult__to__fit. ++undefined++ 
use_ctffind4 Use__CTFFIND-4.1?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__wrapper__will__use__CTFFIND4__(version__4.1)__for__CTF__estimation.__This__includes__thread-support,__calculation__of__Thon__rings__from__movie__frames__and__phase-shift__estimation__for__phase-plate__data. ++undefined++ 
  use_gctf Use__Gctf__instead?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__Kai__Zhang's__Gctf__program__(which__runs__on__NVIDIA__GPUs)__will__be__used__instead__of__Niko__Grigorieff's__CTFFIND4. ++undefined++ 
use_given_ps Use__power__spectra__from__MotionCorr__job?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__CTF__estimation__will__be__done__using__power__spectra__calculated__during__motion__correction. ++undefined++ 
  use_noDW Use__micrograph__without__dose-weighting?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__CTF__estimation__will__be__done__using__the__micrograph__without__dose-weighting__as__in__rlnMicrographNameNoDW__(_noDW.mrc__from__MotionCor2).__If__set__to__No,__the__normal__rlnMicrographName__will__be__used. ++undefined++ 
 
