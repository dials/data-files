
# version 30001

data_job

_rlnJobType                             1
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
   bfactor        150 
bin_factor          1 
do_dose_weighting        Yes 
do_own_motioncor        Yes 
  do_queue         No 
dose_per_frame      1.277 
first_frame_sum          1 
 fn_defect         "" 
fn_gain_ref Movies/gain.mrc 
fn_motioncor2_exe /public/EM/MOTIONCOR2/MotionCor2 
 gain_flip No__flipping__(0) 
  gain_rot No__rotation__(0) 
   gpu_ids          0 
group_for_ps          4 
group_frames          1 
input_star_mics Import/job001/movies.star 
last_frame_sum          0 
min_dedicated         24 
    nr_mpi          1 
nr_threads         24 
other_args         "" 
other_motioncor2_args         "" 
   patch_x          5 
   patch_y          5 
pre_exposure          0 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
 save_noDW         No 
   save_ps        Yes 
 

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
   bfactor   Bfactor:            6        150     0.000000  1500.000000    50.000000  undefined  undefined The__B-factor__that__will__be__applied__to__the__micrographs. ++undefined++ 
bin_factor Binning__factor:            6          1     1.000000     2.000000     1.000000  undefined  undefined Bin__the__micrographs__this__much__by__a__windowing__operation__in__the__Fourier__Tranform.__Binning__at__this__level__is__hard__to__un-do__later__on,__but__may__be__useful__to__down-scale__super-resolution__images.__Float-values__may__be__used.__Do__make__sure__though__that__the__resulting__micrograph__size__is__even. ++undefined++ 
do_dose_weighting Do__dose-weighting?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__averaged__micrographs__will__be__dose-weighted. ++undefined++ 
do_own_motioncor Use__RELION's__own__implementation?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__use__RELION's__own__implementation__of__a__MotionCor2-like__algorithm__by__Takanori__Nakane.__Otherwise,__wrap__to__the__UCSF__implementation.__Note__that__Takanori's__program__only__runs__on__CPUs__but__uses__multiple__threads,__while__the__UCSF-implementation__needs__a__GPU__but__uses__only__one__CPU__thread.__Takanori's__implementation__is__most__efficient__when__the__number__of__frames__is__divisible__by__the__number__of__threads__(e.g.__12__or__18__threads__per__MPI__process__for__36__frames).__On__some__machines,__setting__the__OMP_PROC_BIND__environmental__variable__to__TRUE__accelerates__the__program.&&hen__running__on__4k__x__4k__movies__and__using__6__to__12__threads,__the__speeds__should__be__similar.__Note__that__Takanori's__program__uses__the__same__model__as__the__UCSF__program__and__gives__results__that__are__almost__identical.&&hichever__program__you__use,__'Motion__Refinement'__is__highly__recommended__to__get__the__most__of__your__dataset. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
dose_per_frame Dose__per__frame__(e/A2):            6          1     0.000000     5.000000     0.200000  undefined  undefined Dose__per__movie__frame__(in__electrons__per__squared__Angstrom). ++undefined++ 
first_frame_sum First__frame__for__corrected__sum:            6          1     1.000000    32.000000     1.000000  undefined  undefined First__frame__to__use__in__corrected__average__(starts__counting__at__1).__ ++undefined++ 
 fn_defect Defect__file:            2         ""     0.000000     0.000000     0.000000          *          . Location__of__the__MOTIONCOR2-style__ASCII__file__that__describes__the__defect__pixels__on__the__detector__(using__the__-DefectFile__option).__Leave__empty__if__you__don't__have__any__defects,__or__don't__want__to__correct__for__defects__on__your__detector.&&his__defect__file__is__not__used__by__RELION's__implementation__of__motion__correction.__Although__this__defect__file__is__used__by__MotionCor2,__Bayesian__Polishing__works__on__uncorrected__raw__movies__and__ignores__the__defect__file. ++undefined++ 
fn_gain_ref Gain-reference__image:            2         ""     0.000000     0.000000     0.000000      *.mrc          . Location__of__the__gain-reference__file__to__be__applied__to__the__input__micrographs.__Leave__this__empty__if__the__movies__are__already__gain-corrected. ++undefined++ 
fn_motioncor2_exe MOTIONCOR2__executable:            2 /public/EM/MOTIONCOR2/MotionCor2     0.000000     0.000000     0.000000        *.*          . Location__of__the__MOTIONCOR2__executable.__You__can__control__the__default__of__this__field__by__setting__environment__variable__RELION_MOTIONCOR2_EXECUTABLE,__or__by__editing__the__first__few__lines__in__src/gui_jobwindow.h__and__recompile__the__code. ++undefined++ 
 gain_flip Gain__flip:            4 No__flipping__(0)     0.000000     0.000000     0.000000  undefined  undefined Flip__the__gain__reference__after__rotation.__This__is__the__same__as__-FlipGain__in__MotionCor2.__0__means__do__nothing,__1__means__flip__Y__(upside__down)__and__2__means__flip__X__(left__to__right). ++No__flipping__(0)++Flip__upside__down__(1)++Flip__left__to__right__(2)++ 
  gain_rot Gain__rotation:            4 No__rotation__(0)     0.000000     0.000000     0.000000  undefined  undefined Rotate__the__gain__reference__by__this__number__times__90__degrees__clockwise__in__relion_display.__This__is__the__same__as__-RotGain__in__MotionCor2.__Note__that__MotionCor2__uses__a__different__convention__for__rotation__so__it__says__'counter-clockwise'.__Valid__values__are__0,__1,__2__and__3. ++No__rotation__(0)++90__degrees__(1)++180__degrees__(2)++270__degrees__(3)++ 
   gpu_ids Which__GPUs__to__use:            1          0     0.000000     0.000000     0.000000  undefined  undefined Provide__a__list__of__which__GPUs__(0,1,2,3,__etc)__to__use.__MPI-processes__are__separated__by__':'.__For__example,__to__place__one__rank__on__device__0__and__one__rank__on__device__1,__provide__'0:1'.&&ote__that__multiple__MotionCor2__processes__should__not__share__a__GPU;__otherwise,__it__can__lead__to__crash__or__broken__outputs__(e.g.__black__images)__. ++undefined++ 
group_for_ps Sum__power__spectra__every__e/A2:            6          4     0.000000    10.000000     0.500000  undefined  undefined McMullan__et__al__(Ultramicroscopy,__2015)__sugggest__summing__power__spectra__every__4.0__e/A2__gives__optimal__Thon__rings ++undefined++ 
group_frames Group__frames:            6          1     1.000000     5.000000     1.000000  undefined  undefined Average__together__this__many__frames__before__calculating__the__beam-induced__shifts. ++undefined++ 
input_star_mics Input__movies__STAR__file:            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined A__STAR__file__with__all__micrographs__to__run__MOTIONCORR__on ++undefined++ 
last_frame_sum Last__frame__for__corrected__sum:            6         -1     0.000000    32.000000     1.000000  undefined  undefined Last__frame__to__use__in__corrected__average.__Values__equal__to__or__smaller__than__0__mean__'use__all__frames'. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
    nr_mpi Number__of__MPI__procs:            6          1     1.000000    64.000000     1.000000  undefined  undefined Number__of__MPI__nodes__to__use__in__parallel.__When__set__to__1,__MPI__will__not__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_MPI_MAX. ++undefined++ 
nr_threads Number__of__threads:            6          1     1.000000    16.000000     1.000000  undefined  undefined Number__of__shared-memory__(POSIX)__threads__to__use__in__parallel.__When__set__to__1,__no__multi-threading__will__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_THREAD_MAX. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
other_motioncor2_args Other__MOTIONCOR2__arguments            1         ""     0.000000     0.000000     0.000000  undefined  undefined Additional__arguments__that__need__to__be__passed__to__MOTIONCOR2. ++undefined++ 
   patch_x Number__of__patches__X:            1          1     0.000000     0.000000     0.000000  undefined  undefined Number__of__patches__(in__X__and__Y__direction)__to__apply__motioncor2. ++undefined++ 
   patch_y Number__of__patches__Y:            1          1     0.000000     0.000000     0.000000  undefined  undefined Number__of__patches__(in__X__and__Y__direction)__to__apply__motioncor2. ++undefined++ 
pre_exposure Pre-exposure__(e/A2):            6          0     0.000000     5.000000     0.500000  undefined  undefined Pre-exposure__dose__(in__electrons__per__squared__Angstrom). ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
 save_noDW Save__non-dose__weighted__as__well?            5         No     0.000000     0.000000     0.000000  undefined  undefined Aligned__but__non-dose__weighted__images__are__sometimes__useful__in__CTF__estimation,__although__there__is__no__difference__in__most__cases.__Whichever__the__choice,__CTF__refinement__job__is__always__done__on__dose-weighted__particles. ++undefined++ 
   save_ps Save__sum__of__power__spectra?            5         No     0.000000     0.000000     0.000000  undefined  undefined Sum__of__non-dose__weighted__power__spectra__provides__better__signal__for__CTF__estimation.__The__power__spectra__can__be__used__by__CTFFIND4__but__not__by__GCTF.__This__option__is__not__available__for__UCSF__MotionCor2. ++undefined++ 
 
