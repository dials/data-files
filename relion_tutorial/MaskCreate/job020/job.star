
# version 30001

data_job

_rlnJobType                            12
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
    angpix         -1 
  do_helix         No 
  do_queue         No 
extend_inimask          0 
     fn_in Refine3D/job019/run_class001.mrc 
helical_z_percentage         30 
inimask_threshold      0.005 
lowpass_filter         15 
min_dedicated         24 
nr_threads         12 
other_args         "" 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
width_mask_edge          6 
 

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
    angpix Pixel__size__(A)            6         -1     0.300000     5.000000     0.100000  undefined  undefined Provide__the__pixel__size__of__the__input__map__in__Angstroms__to__calculate__the__low-pass__filter.__This__value__is__also__used__in__the__output__image__header. ++undefined++ 
  do_helix Mask__a__3D__helix?            5         No     0.000000     0.000000     0.000000  undefined  undefined Generate__a__mask__for__3D__helix__which__spans__across__Z__axis__of__the__box. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
extend_inimask Extend__binary__map__this__many__pixels:            6          3     0.000000    20.000000     1.000000  undefined  undefined The__initial__binary__mask__is__extended__this__number__of__pixels__in__all__directions. ++undefined++ 
     fn_in Input__3D__map:            3         ""     0.000000     0.000000     0.000000 MRC__map__files__(*.mrc)  undefined Provide__an__input__MRC__map__from__which__to__start__binarizing__the__map. ++undefined++ 
helical_z_percentage Central__Z__length__(%):            6         30     5.000000    80.000000     1.000000  undefined  undefined Reconstructed__helix__suffers__from__inaccuracies__of__orientation__searches.__The__central__part__of__the__box__contains__more__reliable__information__compared__to__the__top__and__bottom__parts__along__Z__axis.__Set__this__value__(%)__to__the__central__part__length__along__Z__axis__divided__by__the__box__size.__Values__around__30%__are__commonly__used__but__you__may__want__to__try__different__lengths. ++undefined++ 
inimask_threshold Initial__binarisation__threshold:            6       0.02     0.000000     0.500000     0.010000  undefined  undefined This__threshold__is__used__to__make__an__initial__binary__mask__from__the__average__of__the__two__unfiltered__half-reconstructions.__If__you__don't__know__what__value__to__use,__display__one__of__the__unfiltered__half-maps__in__a__3D__surface__rendering__viewer__and__find__the__lowest__threshold__that__gives__no__noise__peaks__outside__the__reconstruction. ++undefined++ 
lowpass_filter Lowpass__filter__map__(A)            6         15    10.000000   100.000000     5.000000  undefined  undefined Lowpass__filter__that__will__be__applied__to__the__input__map,__prior__to__binarization.__To__calculate__solvent__masks,__a__lowpass__filter__of__15-20A__may__work__well. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
nr_threads Number__of__threads:            6          1     1.000000    16.000000     1.000000  undefined  undefined Number__of__shared-memory__(POSIX)__threads__to__use__in__parallel.__When__set__to__1,__no__multi-threading__will__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_THREAD_MAX. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
width_mask_edge Add__a__soft-edge__of__this__many__pixels:            6          3     0.000000    20.000000     1.000000  undefined  undefined The__extended__binary__mask__is__further__extended__with__a__raised-cosine__soft__edge__of__the__specified__width. ++undefined++ 
 
