
# version 30001

data_job

_rlnJobType                             4
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
    angpix         -1 
angpix_ref       3.54 
do_amyloid         No 
do_ctf_autopick        Yes 
do_ignore_first_ctfpeak_autopick         No 
do_invert_refs        Yes 
    do_log         No 
do_pick_helical_segments         No 
  do_queue         No 
do_read_fom_maps         No 
  do_ref3d         No 
do_write_fom_maps        Yes 
fn_input_autopick Select/job005/micrographs_selected.star 
fn_ref3d_autopick         "" 
fn_refs_autopick Select/job009/class_averages.star 
   gpu_ids         "" 
helical_nr_asu          1 
helical_rise         -1 
helical_tube_kappa_max        0.1 
helical_tube_length_min         -1 
helical_tube_outer_diameter        200 
  highpass         -1 
log_adjust_thr          0 
log_diam_max        180 
log_diam_min        150 
log_invert         No 
log_maxres         20 
log_upper_thr          5 
   lowpass         20 
maxstddevnoise_autopick         -1 
min_dedicated         24 
minavgnoise_autopick       -999 
mindist_autopick        100 
    nr_mpi          1 
other_args         "" 
particle_diameter         -1 
psi_sampling_autopick          5 
      qsub       qsub 
qsubscript /public/EM/RELION/relion/bin/relion_qsub.csh 
 queuename    openmpi 
ref3d_sampling 30__degrees 
ref3d_symmetry         C1 
    shrink          0 
threshold_autopick          0 
   use_gpu        Yes 
 

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
    angpix Pixel__size__in__micrographs__(A)            6         -1     0.300000     5.000000     0.100000  undefined  undefined Pixel__size__in__Angstroms.__If__a__CTF-containing__STAR__file__is__input,__then__the__value__given__here__will__be__ignored,__and__the__pixel__size__will__be__calculated__from__the__values__in__the__STAR__file.__A__negative__value__can__then__be__given__here. ++undefined++ 
angpix_ref Pixel__size__in__references__(A)            6         -1     0.300000     5.000000     0.100000  undefined  undefined Pixel__size__in__Angstroms__for__the__provided__reference__images.__This__will__be__used__to__calculate__the__filters__and__the__particle__diameter__in__pixels.__If__a__negative__value__is__given__here,__the__pixel__size__in__the__references__will__be__assumed__to__be__the__same__as__the__one__in__the__micrographs,__i.e.__the__particles__that__were__used__to__make__the__references__were__not__rescaled__upon__extraction. ++undefined++ 
do_amyloid Pick__amyloid__segments?            5         No     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__if__you__want__to__use__the__algorithm__that__was__developed__specifically__for__picking__amyloids. ++undefined++ 
do_ctf_autopick Are__References__CTF__corrected?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__if__the__references__were__created__with__CTF-correction__inside__RELION.__&&&&If__set__to__Yes,__the__input__micrographs__can__only__be__given__as__a__STAR__file,__which__should__contain__the__CTF__information__for__each__micrograph. ++undefined++ 
do_ignore_first_ctfpeak_autopick Ignore__CTFs__until__first__peak?            5         No     0.000000     0.000000     0.000000  undefined  undefined Set__this__to__Yes,__only__if__this__option__was__also__used__to__generate__the__references. ++undefined++ 
do_invert_refs References__have__inverted__contrast?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__to__indicate__that__the__reference__have__inverted__contrast__with__respect__to__the__particles__in__the__micrographs. ++undefined++ 
    do_log OR:__use__Laplacian-of-Gaussian?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__a__Laplacian-of-Gaussian__blob__detection__will__be__used__(you__can__then__leave__the__'References'__field__empty.__The__preferred__way__to__autopick__is__by__setting__this__to__no__and__providing__references__that__were__generated__by__2D__classification__from__this__data__set__in__RELION.__The__Laplacian-of-Gaussian__method__may__be__useful__to__kickstart__a__new__data__set.__Please__note__that__some__options__in__the__autopick__tab__are__ignored__in__this__method.__See__help__messages__of__each__option__for__details. ++undefined++ 
do_pick_helical_segments Pick__2D__helical__segments?            5         No     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__if__you__want__to__pick__2D__helical__segments. ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
do_read_fom_maps Read__FOM__maps?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__written__out__previously,__read__the__FOM__maps__back__in__and__re-run__the__picking__to__quickly__find__the__optimal__threshold__and__inter-particle__distance__parameters ++undefined++ 
  do_ref3d OR:__provide__a__3D__reference?            5         No     0.000000     0.000000     0.000000  undefined  undefined Set__this__option__to__Yes__if__you__want__to__provide__a__3D__map,__which__will__be__projected__into__multiple__directions__to__generate__2D__references. ++undefined++ 
do_write_fom_maps Write__FOM__maps?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__intermediate__probability__maps__will__be__written__out,__which__(upon__reading__them__back__in)__will__speed__up__tremendously__the__optimization__of__the__threshold__and__inter-particle__distance__parameters.__However,__with__this__option,__one__cannot__run__in__parallel,__as__disc__I/O__is__very__heavy__with__this__option__set. ++undefined++ 
fn_input_autopick Input__micrographs__for__autopick:            3         ""     0.000000     0.000000     0.000000 Input__micrographs__(*.{star})  undefined Input__STAR__file__(preferably__with__CTF__information)__with__all__micrographs__to__pick__from. ++undefined++ 
fn_ref3d_autopick 3D__reference:            3         ""     0.000000     0.000000     0.000000 Input__reference__(*.{mrc})  undefined Input__MRC__file__with__the__3D__reference__maps,__from__which__2D__references__will__be__made__by__projection.__Note__that__the__absolute__greyscale__needs__to__be__correct,__so__only__use__maps__created__by__RELION__itself__from__this__data__set. ++undefined++ 
fn_refs_autopick 2D__references:            3         ""     0.000000     0.000000     0.000000 Input__references__(*.{star,mrcs})  undefined Input__STAR__file__or__MRC__stack__with__the__2D__references__to__be__used__for__picking.__Note__that__the__absolute__greyscale__needs__to__be__correct,__so__only__use__images__created__by__RELION__itself,__e.g.__by__2D__class__averaging__or__projecting__a__RELION__reconstruction. ++undefined++ 
   gpu_ids Which__GPUs__to__use:            1         ""     0.000000     0.000000     0.000000  undefined  undefined This__argument__is__not__necessary.__If__left__empty,__the__job__itself__will__try__to__allocate__available__GPU__resources.__You__can__override__the__default__allocation__by__providing__a__list__of__which__GPUs__(0,1,2,3,__etc)__to__use.__MPI-processes__are__separated__by__':'.__For__example:__0:1:0:1:0:1 ++undefined++ 
helical_nr_asu Number__of__unique__asymmetrical__units:            6          1     1.000000   100.000000     1.000000  undefined  undefined Number__of__unique__helical__asymmetrical__units__in__each__segment__box.__This__integer__should__not__be__less__than__1.__The__inter-box__distance__(pixels)__=__helical__rise__(Angstroms)__*__number__of__asymmetrical__units__/__pixel__size__(Angstroms).__The__optimal__inter-box__distance__might__also__depend__on__the__box__size,__the__helical__rise__and__the__flexibility__of__the__structure.__In__general,__an__inter-box__distance__of__~10%__*__the__box__size__seems__appropriate. ++undefined++ 
helical_rise Helical__rise__(A):            6         -1     0.000000   100.000000     0.010000  undefined  undefined Helical__rise__in__Angstroms.__(Please__click__'?'__next__to__the__option__above__for__details__about__how__the__inter-box__distance__is__calculated.) ++undefined++ 
helical_tube_kappa_max Maximum__curvature__(kappa):__            6        0.1     0.050000     0.500000     0.010000  undefined  undefined Maximum__curvature__allowed__for__picking__helical__tubes.__Kappa__=__0.3__means__that__the__curvature__of__the__picked__helical__tubes__should__not__be__larger__than__30%__the__curvature__of__a__circle__(diameter__=__particle__mask__diameter).__Kappa__~__0.05__is__recommended__for__long__and__straight__tubes__(e.g.__TMV,__VipA/VipB__and__AChR__tubes)__while__0.20__~__0.40__seems__suitable__for__flexible__ones__(e.g.__ParM__and__MAVS-CARD__filaments). ++undefined++ 
helical_tube_length_min Minimum__length__(A):__            6         -1   100.000000  1000.000000    10.000000  undefined  undefined Minimum__length__(in__Angstroms)__of__helical__tubes__for__auto-picking.__Helical__tubes__with__shorter__lengths__will__not__be__picked.__Note__that__a__long__helical__tube__seen__by__human__eye__might__be__treated__as__short__broken__pieces__due__to__low__FOM__values__or__high__picking__threshold. ++undefined++ 
helical_tube_outer_diameter Tube__diameter__(A):__            6        200   100.000000  1000.000000    10.000000  undefined  undefined Outer__diameter__(in__Angstroms)__of__helical__tubes.__This__value__should__be__slightly__larger__than__the__actual__width__of__the__tubes. ++undefined++ 
  highpass Highpass__filter__(A)            6         -1   100.000000  1000.000000   100.000000  undefined  undefined Highpass__filter__that__will__be__applied__to__the__micrographs.__This__may__be__useful__to__get__rid__of__background__ramps__due__to__uneven__ice__distributions.__Give__a__negative__value__to__skip__the__highpass__filter.____Useful__values__are__often__in__the__range__of__200-400__Angstroms. ++undefined++ 
log_adjust_thr Adjust__default__threshold__(stddev):            6          0     -1.00000     1.000000     0.050000  undefined  undefined Use__this__to__pick__more__(negative__number__->__lower__threshold)__or__less__(positive__number__->__higher__threshold)__particles__compared__to__the__default__setting.__The__threshold__is__moved__this__many__standard__deviations__away__from__the__average. ++undefined++ 
log_diam_max Max.__diameter__for__LoG__filter__(A)            6        250    50.000000   500.000000    10.000000  undefined  undefined The__largest__allowed__diameter__for__the__blob-detection__algorithm.__This__should__correspond__to__the__largest__size__of__your__particles__in__Angstroms. ++undefined++ 
log_diam_min Min.__diameter__for__LoG__filter__(A)            6        200    50.000000   500.000000    10.000000  undefined  undefined The__smallest__allowed__diameter__for__the__blob-detection__algorithm.__This__should__correspond__to__the__smallest__size__of__your__particles__in__Angstroms. ++undefined++ 
log_invert Are__the__particles__white?            5         No     0.000000     0.000000     0.000000  undefined  undefined Set__this__option__to__No__if__the__particles__are__black,__and__to__Yes__if__the__particles__are__white. ++undefined++ 
log_maxres Maximum__resolution__to__consider__(A)            6         20    10.000000   100.000000     5.000000  undefined  undefined The__Laplacian-of-Gaussian__filter__will__be__applied__to__downscaled__micrographs__with__the__corresponding__size.__Give__a__negative__value__to__skip__downscaling. ++undefined++ 
log_upper_thr Upper__threshold__(stddev):            6        999     0.000000     5.000000     0.500000  undefined  undefined Use__this__to__discard__picks__with__LoG__thresholds__that__are__this__many__standard__deviations__above__the__average,__e.g.__to__avoid__high__contrast__contamination__like__ice__and__ethane__droplets.__Good__values__depend__on__the__contrast__of__micrographs__and__need__to__be__interactively__explored;__for__low__contrast__micrographs,__values__of__~__1.5__may__be__reasonable,__but__the__same__value__will__be__too__low__for__high-contrast__micrographs. ++undefined++ 
   lowpass Lowpass__filter__references__(A)            6         20    10.000000   100.000000     5.000000  undefined  undefined Lowpass__filter__that__will__be__applied__to__the__references__before__template__matching.__Do__NOT__use__very__high-resolution__templates__to__search__your__micrographs.__The__signal__will__be__too__weak__at__high__resolution__anyway,__and__you__may__find__Einstein__from__noise....__Give__a__negative__value__to__skip__the__lowpass__filter. ++undefined++ 
maxstddevnoise_autopick Maximum__stddev__noise:            6        1.1     0.900000     1.500000     0.020000  undefined  undefined This__is__useful__to__prevent__picking__in__carbon__areas,__or__areas__with__big__contamination__features.__Peaks__in__areas__where__the__background__standard__deviation__in__the__normalized__micrographs__is__higher__than__this__value__will__be__ignored.__Useful__values__are__probably__in__the__range__1.0__to__1.2.__Set__to__-1__to__switch__off__the__feature__to__eliminate__peaks__due__to__high__background__standard__deviations.&&This__option__is__ignored__in__the__Laplacian-of-Gaussian__picker. ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
minavgnoise_autopick Minimum__avg__noise:            6       -999     -2.00000     0.500000     0.050000  undefined  undefined This__is__useful__to__prevent__picking__in__carbon__areas,__or__areas__with__big__contamination__features.__Peaks__in__areas__where__the__background__standard__deviation__in__the__normalized__micrographs__is__higher__than__this__value__will__be__ignored.__Useful__values__are__probably__in__the__range__-0.5__to__0.__Set__to__-999__to__switch__off__the__feature__to__eliminate__peaks__due__to__low__average__background__densities.&&This__option__is__ignored__in__the__Laplacian-of-Gaussian__picker. ++undefined++ 
mindist_autopick Minimum__inter-particle__distance__(A):            6        100     0.000000  1000.000000    20.000000  undefined  undefined Particles__closer__together__than__this__distance__will__be__consider__to__be__a__single__cluster.__From__each__cluster,__only__one__particle__will__be__picked.__&&This__option__takes__no__effect__for__picking__helical__segments.__The__inter-box__distance__is__calculated__with__the__number__of__asymmetrical__units__and__the__helical__rise__on__'Helix'__tab.__This__option__is__also__ignored__in__the__Laplacian-of-Gaussian__picker.__The__inter-box__distance__is__calculated__from__particle__diameters. ++undefined++ 
    nr_mpi Number__of__MPI__procs:            6          1     1.000000    64.000000     1.000000  undefined  undefined Number__of__MPI__nodes__to__use__in__parallel.__When__set__to__1,__MPI__will__not__be__used.__The__maximum__can__be__set__through__the__environment__variable__RELION_MPI_MAX. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
particle_diameter Mask__diameter__(A)            6         -1     0.000000  2000.000000    20.000000  undefined  undefined Diameter__of__the__circular__mask__that__will__be__applied__around__the__templates__in__Angstroms.__When__set__to__a__negative__value,__this__value__is__estimated__automatically__from__the__templates__themselves. ++undefined++ 
psi_sampling_autopick In-plane__angular__sampling__(deg)            6          5     1.000000    30.000000     1.000000  undefined  undefined Angular__sampling__in__degrees__for__exhaustive__searches__of__the__in-plane__rotations__for__all__references. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
ref3d_sampling 3D__angular__sampling:            4 30__degrees     0.000000     0.000000     0.000000  undefined  undefined There__are__only__a__few__discrete__angular__samplings__possible__because__we__use__the__HealPix__library__to__generate__the__sampling__of__the__first__two__Euler__angles__on__the__sphere.__The__samplings__are__approximate__numbers__and__vary__slightly__over__the__sphere.&&__For__autopicking,__30__degrees__is__usually__fine__enough,__but__for__highly__symmetrical__objects__one__may__need__to__go__finer__to__adequately__sample__the__asymmetric__part__of__the__sphere. ++30__degrees++15__degrees++7.5__degrees++3.7__degrees++1.8__degrees++0.9__degrees++0.5__degrees++0.2__degrees++0.1__degrees++ 
ref3d_symmetry  Symmetry:            1         C1     0.000000     0.000000     0.000000  undefined  undefined Symmetry__point__group__of__the__3D__reference.__Only__projections__in__the__asymmetric__part__of__the__sphere__will__be__generated. ++undefined++ 
    shrink Shrink__factor:            6          1     0.000000     1.000000     0.100000  undefined  undefined This__is__useful__to__speed__up__the__calculations,__and__to__make__them__less__memory-intensive.__The__micrographs__will__be__downscaled__(shrunk)__to__calculate__the__cross-correlations,__and__peak__searching__will__be__done__in__the__downscaled__FOM__maps.__When__set__to__0,__the__micrographs__will__de__downscaled__to__the__lowpass__filter__of__the__references,__a__value__between__0__and__1__will__downscale__the__micrographs__by__that__factor.__Note__that__the__results__will__not__be__exactly__the__same__when__you__shrink__micrographs!&&In__the__Laplacian-of-Gaussian__picker,__this__option__is__ignored__and__the__shrink__factor__always__becomes__0. ++undefined++ 
threshold_autopick Picking__threshold:            6       0.05     0.000000     1.000000     0.010000  undefined  undefined Use__lower__thresholds__to__pick__more__particles__(and__more__junk__probably).&&This__option__is__ignored__in__the__Laplacian-of-Gaussian__picker.__Please__use__'Adjust__default__threshold'__in__the__'Laplacian'__tab__instead. ++undefined++ 
   use_gpu Use__GPU__acceleration?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__try__to__use__GPU__acceleration.__The__Laplacian-of-Gaussian__picker__does__not__support__GPU. ++undefined++ 
 
