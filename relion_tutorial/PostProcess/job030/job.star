
# version 30001

data_job

_rlnJobType                            15
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
adhoc_bfac      -1000 
    angpix      1.244 
autob_lowres         10 
do_adhoc_bfac         No 
do_auto_bfac        Yes 
    do_mtf         No 
  do_queue         No 
do_skip_fsc_weighting         No 
     fn_in Refine3D/job029/run_half1_class001_unfil.mrc 
   fn_mask MaskCreate/job020/mask.mrc 
    fn_mtf         "" 
  low_pass          5 
min_dedicated         24 
mtf_angpix          1 
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
adhoc_bfac User-provided__B-factor:            6      -1000  -2000.00000     0.000000    -50.00000  undefined  undefined Use__negative__values__for__sharpening.__Be__careful:__if__you__over-sharpen__your__map,__you__may__end__up__interpreting__noise__for__signal! ++undefined++ 
    angpix Calibrated__pixel__size__(A)            6          1     0.300000     5.000000     0.100000  undefined  undefined Provide__the__final,__calibrated__pixel__size__in__Angstroms.__This__value__may__be__different__from__the__pixel-size__used__thus__far,__e.g.__when__you__have__recalibrated__the__pixel__size__using__the__fit__to__a__PDB__model.__The__X-axis__of__the__output__FSC__plot__will__use__this__calibrated__value. ++undefined++ 
autob_lowres Lowest__resolution__for__auto-B__fit__(A):            6         10     8.000000    15.000000     0.500000  undefined  undefined This__is__the__lowest__frequency__(in__Angstroms)__that__will__be__included__in__the__linear__fit__of__the__Guinier__plot__as__described__in__Rosenthal__and__Henderson__(2003,__JMB).__Dont__use__values__much__lower__or__higher__than__10__Angstroms.__If__your__map__does__not__extend__beyond__10__Angstroms,__then__instead__of__the__automated__procedure__use__your__own__B-factor. ++undefined++ 
do_adhoc_bfac Use__your__own__B-factor?            5         No     0.000000     0.000000     0.000000  undefined  undefined Instead__of__using__the__automated__B-factor__estimation,__provide__your__own__value.__Use__negative__values__for__sharpening__the__map.__This__option__is__useful__if__your__map__does__not__extend__beyond__the__10A__needed__for__the__automated__procedure,__or__when__the__automated__procedure__does__not__give__a__suitable__value__(e.g.__in__more__disordered__parts__of__the__map). ++undefined++ 
do_auto_bfac Estimate__B-factor__automatically?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__then__the__program__will__use__the__automated__procedure__described__by__Rosenthal__and__Henderson__(2003,__JMB)__to__estimate__an__overall__B-factor__for__your__map,__and__sharpen__it__accordingly.__Note__that__your__map__must__extend__well__beyond__the__lowest__resolution__included__in__the__procedure__below,__which__should__not__be__set__to__resolutions__much__lower__than__10__Angstroms.__ ++undefined++ 
    do_mtf Perform__MTF__correction?            5         No     0.000000     0.000000     0.000000  undefined  undefined From__release-3.1,__the__MTF__will__be__corrected__during__refinement,__and__does__not__need__to__be__repeated__here.__Set__to__option__Yes__only__if__you__have__not__yet__performed__MTF__correction__using__optics__groups. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
do_skip_fsc_weighting Skip__FSC-weighting?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__No__(the__default),__then__the__output__map__will__be__low-pass__filtered__according__to__the__mask-corrected,__gold-standard__FSC-curve.__Sometimes,__it__is__also__useful__to__provide__an__ad-hoc__low-pass__filter__(option__below),__as__due__to__local__resolution__variations__some__parts__of__the__map__may__be__better__and__other__parts__may__be__worse__than__the__overall__resolution__as__measured__by__the__FSC.__In__such__cases,__set__this__option__to__Yes__and__provide__an__ad-hoc__filter__as__described__below. ++undefined++ 
     fn_in One__of__the__2__unfiltered__half-maps:            3         ""     0.000000     0.000000     0.000000 MRC__map__files__(*half1_*_unfil.mrc)  undefined Provide__one__of__the__two__unfiltered__half-reconstructions__that__were__output__upon__convergence__of__a__3D__auto-refine__run. ++undefined++ 
   fn_mask Solvent__mask:            3         ""     0.000000     0.000000     0.000000 Image__Files__(*.{spi,vol,msk,mrc})  undefined Provide__a__soft__mask__where__the__protein__is__white__(1)__and__the__solvent__is__black__(0).__Often,__the__softer__the__mask__the__higher__resolution__estimates__you__will__get.__A__soft__edge__of__5-10__pixels__is__often__a__good__edge__width. ++undefined++ 
    fn_mtf MTF__of__the__detector__(STAR__file)            2         ""     0.000000     0.000000     0.000000 STAR__Files__(*.star)          . If__you__know__the__MTF__of__your__detector,__provide__it__here.__Curves__for__some__well-known__detectors__may__be__downloaded__from__the__RELION__Wiki.__Also__see__there__for__the__exact__format__&&If__you__do__not__know__the__MTF__of__your__detector__and__do__not__want__to__measure__it,__then__by__leaving__this__entry__empty,__you__include__the__MTF__of__your__detector__in__your__overall__estimated__B-factor__upon__sharpening__the__map.Although__that__is__probably__slightly__less__accurate,__the__overall__quality__of__your__map__will__probably__not__suffer__very__much. ++undefined++ 
  low_pass Ad-hoc__low-pass__filter__(A):            6          5     1.000000    40.000000     1.000000  undefined  undefined This__option__allows__one__to__low-pass__filter__the__map__at__a__user-provided__frequency__(in__Angstroms).__When__using__a__resolution__that__is__higher__than__the__gold-standard__FSC-reported__resolution,__take__care__not__to__interpret__noise__in__the__map__for__signal... ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
mtf_angpix Original__detector__pixel__size:            6          1     0.300000     2.000000     0.100000  undefined  undefined This__is__the__original__pixel__size__(in__Angstroms)__in__the__raw__(non-super-resolution!)__micrographs. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
 
