
# version 30001

data_job

_rlnJobType                             3
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
    angpix      0.885 
 black_val          0 
blue_value          0 
color_label rlnParticleSelectZScore 
  ctfscale          1 
  diameter        200 
  do_color         No 
  do_queue         No 
do_startend         No 
  fn_color         "" 
     fn_in CtfFind/job003/micrographs_ctf.star 
  highpass         -1 
   lowpass         20 
  micscale       0.25 
min_dedicated         24 
other_args         "" 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
 red_value          2 
sigma_contrast          3 
 white_val          0 
 

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
    angpix Pixel__size__(A)            6         -1     0.300000     5.000000     0.100000  undefined  undefined Pixel__size__in__Angstroms.__This__will__be__used__to__calculate__the__filters__and__the__particle__diameter__in__pixels.__If__a__CTF-containing__STAR__file__is__input,__then__the__value__given__here__will__be__ignored,__and__the__pixel__size__will__be__calculated__from__the__values__in__the__STAR__file.__A__negative__value__can__then__be__given__here. ++undefined++ 
 black_val Black__value:            6          0     0.000000   512.000000    16.000000  undefined  undefined Use__non-zero__values__to__set__the__value__of__the__blackest__pixel__in__the__micrograph. ++undefined++ 
blue_value Blue__value:__            6          0     0.000000     4.000000     0.100000  undefined  undefined The__value__of__this__entry__will__be__blue.__There__will__be__a__linear__scale__from__blue__to__red,__according__to__this__value__and__the__one__given__below. ++undefined++ 
color_label MetaDataLabel__for__color:            1 rlnParticleSelectZScore     0.000000     0.000000     0.000000  undefined  undefined The__Metadata__label__of__the__value__to__plot__from__red<>blue.__Useful__examples__might__be:__&&rlnParticleSelectZScore__&&rlnClassNumber__&&rlnAutopickFigureOfMerit__&&rlnAngleTilt__&&rlnLogLikeliContribution__&&rlnMaxValueProbDistribution__&&rlnNrOfSignificantSamples&& ++undefined++ 
  ctfscale Scale__for__CTF__image:            6          1     0.100000     2.000000     0.100000  undefined  undefined CTFFINDs__CTF__image__(with__the__Thonrings)__will__be__displayed__at__this__relative__scale,__i.e.__a__value__of__0.5__means__that__only__every__second__pixel__will__be__displayed. ++undefined++ 
  diameter Particle__diameter__(A):            6        100     0.000000   500.000000    50.000000  undefined  undefined The__diameter__of__the__circle__used__around__picked__particles__(in__Angstroms).__Only__used__for__display. ++undefined++ 
  do_color Blue<>red__color__particles?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__true,__then__the__circles__for__each__particles__are__coloured__from__red__to__blue__(or__the__other__way__around)__for__a__given__metadatalabel.__If__this__metadatalabel__is__not__in__the__picked__coordinates__STAR__file__(basically__only__the__rlnAutopickFigureOfMerit__or__rlnClassNumber)__would__be__useful__values__there,__then__you__may__provide__an__additional__STAR__file__(e.g.__after__classification/refinement__below.__Particles__with__values__-999,__or__that__are__not__in__the__additional__STAR__file__will__be__coloured__the__default__color:__green ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
do_startend Pick__start-end__coordinates__helices?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__true,__start__and__end__coordinates__are__picked__subsequently__and__a__line__will__be__drawn__between__each__pair ++undefined++ 
  fn_color STAR__file__with__color__label:__            2         ""     0.000000     0.000000     0.000000 STAR__file__(*.star)          . The__program__will__figure__out__which__particles__in__this__STAR__file__are__on__the__current__micrograph__and__color__their__circles__according__to__the__value__in__the__corresponding__column.__Particles__that__are__not__in__this__STAR__file,__but__present__in__the__picked__coordinates__file__will__be__colored__green.__If__this__field__is__left__empty,__then__the__color__label__(e.g.__rlnAutopickFigureOfMerit)__should__be__present__in__the__coordinates__STAR__file. ++undefined++ 
     fn_in Input__micrographs:            3         ""     0.000000     0.000000     0.000000 Input__micrographs__(*.{star,mrc})  undefined Input__STAR__file__(with__or__without__CTF__information),__OR__a__unix-type__wildcard__with__all__micrographs__in__MRC__format__(in__this__case__no__CTFs__can__be__used). ++undefined++ 
  highpass Highpass__filter__(A)            6         -1   100.000000  1000.000000   100.000000  undefined  undefined Highpass__filter__that__will__be__applied__to__the__micrographs.__This__may__be__useful__to__get__rid__of__background__ramps__due__to__uneven__ice__distributions.__Give__a__negative__value__to__skip__the__highpass__filter.__Useful__values__are__often__in__the__range__of__200-400__Angstroms. ++undefined++ 
   lowpass Lowpass__filter__(A)            6         20    10.000000   100.000000     5.000000  undefined  undefined Lowpass__filter__that__will__be__applied__to__the__micrographs.__Give__a__negative__value__to__skip__the__lowpass__filter. ++undefined++ 
  micscale Scale__for__micrographs:            6        0.2     0.100000     1.000000     0.050000  undefined  undefined The__micrographs__will__be__displayed__at__this__relative__scale,__i.e.__a__value__of__0.5__means__that__only__every__second__pixel__will__be__displayed. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
 red_value Red__value:__            6          2     0.000000     4.000000     0.100000  undefined  undefined The__value__of__this__entry__will__be__red.__There__will__be__a__linear__scale__from__blue__to__red,__according__to__this__value__and__the__one__given__above. ++undefined++ 
sigma_contrast Sigma__contrast:            6          3     0.000000    10.000000     0.500000  undefined  undefined The__micrographs__will__be__displayed__with__the__black__value__set__to__the__average__of__all__values__MINUS__this__values__times__the__standard__deviation__of__all__values__in__the__micrograph,__and__the__white__value__will__be__set__to__the__average__PLUS__this__value__times__the__standard__deviation.__Use__zero__to__set__the__minimum__value__in__the__micrograph__to__black,__and__the__maximum__value__to__white__ ++undefined++ 
 white_val White__value:            6          0     0.000000   512.000000    16.000000  undefined  undefined Use__non-zero__values__to__set__the__value__of__the__whitest__pixel__in__the__micrograph. ++undefined++ 
 
