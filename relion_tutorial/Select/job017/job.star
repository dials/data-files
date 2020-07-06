
# version 30001

data_job

_rlnJobType                             7
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
discard_label rlnImageName 
discard_sigma          4 
do_discard         No 
  do_queue         No 
 do_random         No 
do_recenter         No 
do_regroup         No 
do_remove_duplicates         No 
do_select_values         No 
  do_split         No 
duplicate_threshold         30 
 fn_coords         "" 
   fn_data         "" 
    fn_mic         "" 
  fn_model Class3D/job016/run_it025_model.star 
image_angpix         -1 
min_dedicated         24 
 nr_groups          1 
  nr_split         -1 
other_args         "" 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
select_label rlnCtfFigureOfMerit 
select_maxval      9999. 
select_minval     -9999. 
split_size        100 
 

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
discard_label Metadata__label__for__images:            1 rlnImageName     0.000000     0.000000     0.000000  undefined  undefined Specify__which__column__from__the__input__STAR__contains__the__names__of__the__images__to__be__used__to__calculate__the__average__and__stddev__values. ++undefined++ 
discard_sigma Sigma-value__for__discarding__images:            6          4     1.000000    10.000000     0.100000  undefined  undefined Images__with__average__and/or__stddev__values__that__are__more__than__this__many__times__the__ensemble__stddev__away__from__the__ensemble__mean__will__be__discarded. ++undefined++ 
do_discard OR:__select__on__image__statistics?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__non-interactive__and__all__images__in__the__input__star__file__that__have__average__and/or__stddev__pixel__values__that__are__more__than__the__specified__sigma-values__away__from__the__ensemble__mean__will__be__discarded. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
 do_random Randomise__order__before__making__subsets?:            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__input__STAR__file__order__will__be__randomised.__If__set__to__No,__the__original__order__in__the__input__STAR__file__will__be__maintained. ++undefined++ 
do_recenter Re-center__the__class__averages?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined This__option__is__only__used__when__selecting__particles__from__2D__classes.__The__selected__class__averages__will__all__re-centered__on__their__center-of-mass.__This__is__useful__when__you__plane__to__use__these__class__averages__as__templates__for__auto-picking. ++undefined++ 
do_regroup Regroup__the__particles?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__the__program__will__regroup__the__selected__particles__in__'more-or-less'__the__number__of__groups__indicated__below.__For__re-grouping__from__individual__particle___data.star__files,__a___model.star__file__with__the__same__prefix__should__exist,__i.e.__the__particle__star__file__should__be__generated__by__relion_refine ++undefined++ 
do_remove_duplicates OR:__remove__duplicates?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__duplicated__particles__that__are__within__a__given__distance__are__removed__leaving__only__one.__Duplicated__particles__are__sometimes__generated__when__particles__drift__into__the__same__position__during__alignment.__They__inflate__and__invalidate__gold-standard__FSC__calculation. ++undefined++ 
do_select_values Select__based__on__metadata__values?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__non-interactive__and__the__selected__star__file__will__be__based__only__on__the__value__of__the__corresponding__metadata__label.__Note__that__this__option__is__only__valid__for__micrographs__or__particles__STAR__files. ++undefined++ 
  do_split OR:__split__into__subsets?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__non-interactive__and__the__star__file__will__be__split__into__subsets__as__defined__below. ++undefined++ 
duplicate_threshold Minimum__inter-particle__distance__(A)            6         30     0.000000  1000.000000     1.000000  undefined  undefined Particles__within__this__distance__are__removed__leaving__only__one. ++undefined++ 
 fn_coords OR__select__from__picked__coords:            3         ""     0.000000     0.000000     0.000000 STAR__files__(coords_suffix*.star)  undefined A__coordinate__suffix__.star__file__to__select__micrographs__while__inspecting__coordinates__(and/or__CTFs). ++undefined++ 
   fn_data OR__select__from__particles.star:            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined A__particles.star__file__to__select__individual__particles__from. ++undefined++ 
    fn_mic OR__select__from__micrographs.star:            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined A__micrographs.star__file__to__select__micrographs__from. ++undefined++ 
  fn_model Select__classes__from__model.star:            3         ""     0.000000     0.000000     0.000000 STAR__files__(*.star)  undefined A___model.star__file__from__a__previous__2D__or__3D__classification__run__to__select__classes__from. ++undefined++ 
image_angpix Pixel__size__before__extraction__(A)            6         -1     -1.00000    10.000000     0.010000  undefined  undefined The__pixel__size__of__particles__(relevant__to__rlnOriginX/Y)__is__read__from__the__STAR__file.__When__the__pixel__size__of__the__original__micrograph__used__for__auto-picking__and__extraction__(relevant__to__rlnCoordinateX/Y)__is__different,__specify__it__here.__In__other__words,__this__is__the__pixel__size__after__binning__during__motion__correction,__but__before__down-sampling__during__extraction. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
 nr_groups Approximate__nr__of__groups:__            6          1    50.000000    20.000000     1.000000  undefined  undefined It__is__normal__that__the__actual__number__of__groups__may__deviate__a__little__from__this__number.__ ++undefined++ 
  nr_split OR:__number__of__subsets:__            6         -1     1.000000    50.000000     1.000000  undefined  undefined Give__a__positive__integer__to__specify__into__how__many__equal-sized__subsets__the__data__will__be__divided ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
select_label Metadata__label__for__subset__selection:            1 rlnCtfFigureOfMerit     0.000000     0.000000     0.000000  undefined  undefined This__column__from__the__input__STAR__file__will__be__used__for__the__subset__selection. ++undefined++ 
select_maxval Maximum__metadata__value:            1      9999.     0.000000     0.000000     0.000000  undefined  undefined Only__lines__in__the__input__STAR__file__with__the__corresponding__metadata__value__smaller__than__this__value__will__be__included__in__the__subset. ++undefined++ 
select_minval Minimum__metadata__value:            1     -9999.     0.000000     0.000000     0.000000  undefined  undefined Only__lines__in__the__input__STAR__file__with__the__corresponding__metadata__value__larger__than__this__value__will__be__included__in__the__subset. ++undefined++ 
split_size Subset__size:__            6        100   100.000000 10000.000000   100.000000  undefined  undefined The__number__of__lines__in__each__of__the__output__subsets.__This__line__will__be__ignored__when__the__number__of__subsets__is__specified__on__the__next__line. ++undefined++ 
 
