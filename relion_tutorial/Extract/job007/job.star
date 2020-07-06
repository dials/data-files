
# version 30001

data_job

_rlnJobType                             5
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
    angpix          1 
bg_diameter        200 
black_dust         -1 
coords_suffix AutoPick/job006/coords_suffix_autopick.star 
do_cut_into_segments        Yes 
do_extract_helical_tubes        Yes 
do_extract_helix         No 
 do_invert        Yes 
   do_norm        Yes 
  do_queue         No 
do_recenter         No 
do_reextract         No 
do_rescale        Yes 
do_reset_offsets         No 
do_set_angpix         No 
extract_size        256 
fndata_reextract         "" 
helical_bimodal_angular_priors        Yes 
helical_nr_asu          1 
helical_rise          1 
helical_tube_outer_diameter        200 
min_dedicated         24 
    nr_mpi          1 
other_args         "" 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
recenter_x          0 
recenter_y          0 
recenter_z          0 
   rescale         64 
 star_mics Select/job005/micrographs_selected.star 
white_dust         -1 
 

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
    angpix Pixel__size__(A)            6          1     0.300000     5.000000     0.100000  undefined  undefined Provide__the__pixel__size__in__Angstroms__in__the__micrograph__(so__before__any__re-scaling).____If__you__provide__input__CTF__parameters,__then__leave__this__value__to__the__default__of__-1. ++undefined++ 
bg_diameter Diameter__background__circle__(pix):__            6         -1     -1.00000   600.000000    10.000000  undefined  undefined Particles__will__be__normalized__to__a__mean__value__of__zero__and__a__standard-deviation__of__one__for__all__pixels__in__the__background__area.The__background__area__is__defined__as__all__pixels__outside__a__circle__with__this__given__diameter__in__pixels__(before__rescaling).__When__specifying__a__negative__value,__a__default__value__of__75%__of__the__Particle__box__size__will__be__used. ++undefined++ 
black_dust Stddev__for__black__dust__removal:__            6         -1     -1.00000    10.000000     0.100000  undefined  undefined Remove__very__black__pixels__from__the__extracted__particles.__Pixels__values__higher__than__this__many__times__the__image__stddev__will__be__replaced__with__values__from__a__Gaussian__distribution.__&&&&Use__negative__value__to__switch__off__dust__removal. ++undefined++ 
coords_suffix Input__coordinates:__            3         ""     0.000000     0.000000     0.000000 Input__coords_suffix__file__({coords_suffix}*)  undefined Filename__of__the__coords_suffix__file__with__the__directory__structure__and__the__suffix__of__all__coordinate__files. ++undefined++ 
do_cut_into_segments Cut__helical__tubes__into__segments?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__if__you__want__to__extract__multiple__helical__segments__with__a__fixed__inter-box__distance.__If__it__is__set__to__No,__only__one__box__at__the__center__of__each__helical__tube__will__be__extracted. ++undefined++ 
do_extract_helical_tubes Coordinates__are__start-end__only?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__if__you__want__to__extract__helical__segments__from__manually__picked__tube__coordinates__(starting__and__end__points__of__helical__tubes__in__RELION,__EMAN__or__XIMDISP__format).__Set__to__No__if__segment__coordinates__(RELION__auto-picked__results__or__EMAN__/__XIMDISP__segments)__are__provided. ++undefined++ 
do_extract_helix Extract__helical__segments?            5         No     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__if__you__want__to__extract__helical__segments.__RELION__(.star),__EMAN2__(.box)__and__XIMDISP__(.coords)__formats__of__tube__or__segment__coordinates__are__supported. ++undefined++ 
 do_invert Invert__contrast?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__contrast__in__the__particles__will__be__inverted. ++undefined++ 
   do_norm Normalize__particles?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__particles__will__be__normalized__in__the__way__RELION__prefers__it. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
do_recenter OR:__re-center__refined__coordinates?__            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__input__coordinates__will__be__re-centered__according__to__the__refined__origin__offsets__in__the__provided___data.star__file.__The__unit__is__pixel,__not__angstrom.__The__origin__is__at__the__center__of__the__box,__not__at__the__corner. ++undefined++ 
do_reextract OR__re-extract__refined__particles?__            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__input__Coordinates__above__will__be__ignored.__Instead,__one__uses__a___data.star__file__from__a__previous__2D__or__3D__refinement__to__re-extract__the__particles__in__that__refinement,__possibly__re-centered__with__their__refined__origin__offsets.__This__is__particularly__useful__when__going__from__binned__to__unbinned__particles. ++undefined++ 
do_rescale Rescale__particles?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__particles__will__be__re-scaled.__Note__that__the__particle__diameter__below__will__be__in__the__down-scaled__images. ++undefined++ 
do_reset_offsets Reset__the__refined__offsets__to__zero?__            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__input__origin__offsets__will__be__reset__to__zero.__This__may__be__useful__after__2D__classification__of__helical__segments,__where__one__does__not__want__neighbouring__segments__to__be__translated__on__top__of__each__other__for__a__subsequent__3D__refinement__or__classification. ++undefined++ 
do_set_angpix Manually__set__pixel__size?__            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__rlnMagnification__and__rlnDetectorPixelSize__will__be__set__in__the__resulting__STAR__file.__Only__use__this__option__if__CTF__information__is__NOT__coming__from__the__input__coordinate__STAR__file(s).__For__example,__because__you__decided__not__to__estimate__the__CTF__for__your__micrographs.__You__must__NOT__use__this__option__if__you__intend__to__use__Bayesian__Polishing__afterwards. ++undefined++ 
extract_size Particle__box__size__(pix):            6        128    64.000000   512.000000     8.000000  undefined  undefined Size__of__the__extracted__particles__(in__pixels).__This__should__be__an__even__number! ++undefined++ 
fndata_reextract Refined__particles__STAR__file:__            3         ""     0.000000     0.000000     0.000000 Input__STAR__file__(*.{star})  undefined Filename__of__the__STAR__file__with__the__refined__particle__coordinates,__e.g.__from__a__previous__2D__or__3D__classification__or__auto-refine__run. ++undefined++ 
helical_bimodal_angular_priors Use__bimodal__angular__priors?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined Normally__it__should__be__set__to__Yes__and__bimodal__angular__priors__will__be__applied__in__the__following__classification__and__refinement__jobs.__Set__to__No__if__the__3D__helix__looks__the__same__when__rotated__upside__down. ++undefined++ 
helical_nr_asu Number__of__unique__asymmetrical__units:            6          1     1.000000   100.000000     1.000000  undefined  undefined Number__of__unique__helical__asymmetrical__units__in__each__segment__box.__This__integer__should__not__be__less__than__1.__The__inter-box__distance__(pixels)__=__helical__rise__(Angstroms)__*__number__of__asymmetrical__units__/__pixel__size__(Angstroms).__The__optimal__inter-box__distance__might__also__depend__on__the__box__size,__the__helical__rise__and__the__flexibility__of__the__structure.__In__general,__an__inter-box__distance__of__~10%__*__the__box__size__seems__appropriate. ++undefined++ 
helical_rise Helical__rise__(A):            6          1     0.000000   100.000000     0.010000  undefined  undefined Helical__rise__in__Angstroms.__(Please__click__'?'__next__to__the__option__above__for__details__about__how__the__inter-box__distance__is__calculated.) ++undefined++ 
helical_tube_outer_diameter Tube__diameter__(A):__            6        200   100.000000  1000.000000    10.000000  undefined  undefined Outer__diameter__(in__Angstroms)__of__helical__tubes.__This__value__should__be__slightly__larger__than__the__actual__width__of__helical__tubes. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
    nr_mpi Number__of__MPI__procs:            6          1     1.000000    64.000000     1.000000  undefined  undefined Number__of__MPI__nodes__to__use__in__parallel.__When__set__to__1,__MPI__will__not__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_MPI_MAX. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
recenter_x Re-center__on__X-coordinate__(in__pix):__            1          0     0.000000     0.000000     0.000000  undefined  undefined Re-extract__particles__centered__on__this__X-coordinate__(in__pixels__in__the__reference) ++undefined++ 
recenter_y Re-center__on__Y-coordinate__(in__pix):__            1          0     0.000000     0.000000     0.000000  undefined  undefined Re-extract__particles__centered__on__this__Y-coordinate__(in__pixels__in__the__reference) ++undefined++ 
recenter_z Re-center__on__Z-coordinate__(in__pix):__            1          0     0.000000     0.000000     0.000000  undefined  undefined Re-extract__particles__centered__on__this__Z-coordinate__(in__pixels__in__the__reference) ++undefined++ 
   rescale Re-scaled__size__(pixels):__            6        128    64.000000   512.000000     8.000000  undefined  undefined The__re-scaled__value__needs__to__be__an__even__number ++undefined++ 
 star_mics micrograph__STAR__file:__            3         ""     0.000000     0.000000     0.000000 Input__STAR__file__(*.{star})  undefined Filename__of__the__STAR__file__that__contains__all__micrographs__from__which__to__extract__particles. ++undefined++ 
white_dust Stddev__for__white__dust__removal:__            6         -1     -1.00000    10.000000     0.100000  undefined  undefined Remove__very__white__pixels__from__the__extracted__particles.__Pixels__values__higher__than__this__many__times__the__image__stddev__will__be__replaced__with__values__from__a__Gaussian__distribution.__&&&&Use__negative__value__to__switch__off__dust__removal. ++undefined++ 
 
