
# version 30001

data_job

_rlnJobType                            20
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
do_own_params         No 
do_param_optim        Yes 
 do_polish         No 
  do_queue         No 
 eval_frac        0.5 
first_frame          1 
   fn_data Refine3D/job025/run_data.star 
    fn_mic MotionCorr/job002/corrected_micrographs.star 
   fn_post PostProcess/job026/postprocess.star 
last_frame         -1 
    maxres         -1 
min_dedicated         24 
    minres         20 
    nr_mpi          1 
nr_threads         16 
opt_params         "" 
optim_min_part       4000 
other_args         "" 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
 sigma_acc          2 
 sigma_div       5000 
 sigma_vel        0.2 
 

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
do_own_params OR__use__your__own__parameters?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__the__field__for__the__optimised__parameter__file__will__be__ignored__and__the__parameters__specified__below__will__be__used__instead. ++undefined++ 
do_param_optim Train__optimal__parameters?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_motion_refine__will__estimate__optimal__parameter__values__for__the__three__sigma__values__above__on__a__subset__of__the__data__(determined__by__the__minimum__number__of__particles__to__be__used__below). ++undefined++ 
 do_polish Perform__particle__polishing?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__relion_motion_refine__will__be__run__to__estimate__per-particle__motion-tracks__using__the__parameters__below,__and__polished__particles__will__be__generated. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
 eval_frac Fraction__of__Fourier__pixels__for__testing:__            6        0.5     0.000000     1.000000     0.010000  undefined  undefined This__fraction__of__Fourier__pixels__(at__higher__resolution)__will__be__used__for__evaluation__of__the__parameters__(test__set),__whereas__the__rest__(at__lower__resolution)__will__be__used__for__parameter__estimation__itself__(work__set). ++undefined++ 
first_frame First__movie__frame:__            6          1     1.000000    10.000000     1.000000  undefined  undefined First__movie__frame__to__take__into__account__in__motion__fit__and__combination__step ++undefined++ 
   fn_data Particles__(from__Refine3D__or__CtfRefine):            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined The__input__STAR__file__with__the__metadata__of__all__particles. ++undefined++ 
    fn_mic Micrographs__(from__MotionCorr):            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined The__input__STAR__file__with__the__micrograph__(and__their__movie__metadata)__from__a__MotionCorr__job. ++undefined++ 
   fn_post Postprocess__STAR__file:            3         ""     0.000000     0.000000     0.000000 STAR__files__(postprocess.star)  undefined The__STAR__file__generated__by__a__PostProcess__job.__The__mask__used__for__this__postprocessing__will__be__applied__to__the__unfiltered__half-maps__and__should__encompass__the__entire__complex.__The__resulting__FSC__curve__will__be__used__for__weighting__the__different__frequencies. ++undefined++ 
last_frame Last__movie__frame:__            6         -1     5.000000    50.000000     1.000000  undefined  undefined Last__movie__frame__to__take__into__account__in__motion__fit__and__combination__step.__Values__equal__to__or__smaller__than__0__mean__'use__all__frames'. ++undefined++ 
    maxres Maximum__resolution__for__B-factor__fit__(A):__            6         -1     -1.00000    15.000000     1.000000  undefined  undefined The__maximum__spatial__frequency__(in__Angstrom)__used__in__the__B-factor__fit.__If__a__negative__value__is__given,__the__maximum__is__determined__from__the__input__FSC__curve. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
    minres Minimum__resolution__for__B-factor__fit__(A):__            6         20     8.000000    40.000000     1.000000  undefined  undefined The__minimum__spatial__frequency__(in__Angstrom)__used__in__the__B-factor__fit. ++undefined++ 
    nr_mpi Number__of__MPI__procs:            6          1     1.000000    64.000000     1.000000  undefined  undefined Number__of__MPI__nodes__to__use__in__parallel.__When__set__to__1,__MPI__will__not__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_MPI_MAX. ++undefined++ 
nr_threads Number__of__threads:            6          1     1.000000    16.000000     1.000000  undefined  undefined Number__of__shared-memory__(POSIX)__threads__to__use__in__parallel.__When__set__to__1,__no__multi-threading__will__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_THREAD_MAX. ++undefined++ 
opt_params Optimised__parameter__file:            3         ""     0.000000     0.000000     0.000000 TXT__files__(opt_params.txt)  undefined The__output__TXT__file__from__a__previous__Bayesian__polishing__job__in__which__the__optimal__parameters__were__determined. ++undefined++ 
optim_min_part Use__this__many__particles:__            6      10000  5000.000000 50000.000000  1000.000000  undefined  undefined Use__at__least__this__many__particles__for__the__meta-parameter__optimisation.__The__more__particles__the__more__expensive__in__time__and__computer__memory__the__calculation__becomes,__but__the__better__the__results__may__get. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
 sigma_acc Sigma__for__acceleration__(A/dose):__            6          2     -1.00000     7.000000     0.100000  undefined  undefined Standard__deviation__for__the__acceleration__regularisation.__Smaller__values__requires__the__tracks__to__be__straighter. ++undefined++ 
 sigma_div Sigma__for__divergence__(A):__            6       5000     0.000000 10000.000000 10000.000000  undefined  undefined Standard__deviation__for__the__divergence__of__tracks__across__the__micrograph.__Smaller__values__requires__the__tracks__to__be__spatially__more__uniform__in__a__micrograph. ++undefined++ 
 sigma_vel Sigma__for__velocity__(A/dose):__            6        0.2     1.000000    10.000000     0.100000  undefined  undefined Standard__deviation__for__the__velocity__regularisation.__Smaller__values__requires__the__tracks__to__be__shorter. ++undefined++ 
 
