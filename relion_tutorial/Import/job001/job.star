
# version 30001

data_job

_rlnJobType                             0
_rlnJobIsContinue                       0
 

# version 30001

data_joboptions_values

loop_ 
_rlnJobOptionVariable #1 
_rlnJobOptionValue #2 
        Cs        1.4 
        Q0        0.1 
    angpix      0.885 
beamtilt_x          0 
beamtilt_y          0 
  do_other         No 
  do_queue         No 
    do_raw        Yes 
fn_in_other    ref.mrc 
 fn_in_raw Movies/*.tiff 
    fn_mtf mtf_k2_200kV.star 
is_multiframe        Yes 
        kV        200 
min_dedicated         24 
 node_type Particle__coordinates__(*.box,__*_pick.star) 
optics_group_name opticsGroup1 
optics_group_particles         "" 
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
        Cs Spherical__aberration__(mm):            6        2.7     0.000000     8.000000     0.100000  undefined  undefined Spherical__aberration__of__the__microscope__used__to__collect__these__images__(in__mm).__Typical__values__are__2.7__(FEI__Titan__&__Talos,__most__JEOL__CRYO-ARM),__2.0__(FEI__Polara),__1.4__(some__JEOL__CRYO-ARM)__and__0.01__(microscopes__with__a__Cs__corrector). ++undefined++ 
        Q0 Amplitude__contrast:            6        0.1     0.000000     0.300000     0.010000  undefined  undefined Fraction__of__amplitude__contrast.__Often__values__around__10%__work__better__than__theoretically__more__accurate__lower__values... ++undefined++ 
    angpix Pixel__size__(Angstrom):            6        1.4     0.500000     3.000000     0.100000  undefined  undefined Pixel__size__in__Angstroms.__ ++undefined++ 
beamtilt_x Beamtilt__in__X__(mrad):            6          0     -1.00000     1.000000     0.100000  undefined  undefined Known__beamtilt__in__the__X-direction__(in__mrad).__Set__to__zero__if__unknown. ++undefined++ 
beamtilt_y Beamtilt__in__Y__(mrad):            6          0     -1.00000     1.000000     0.100000  undefined  undefined Known__beamtilt__in__the__Y-direction__(in__mrad).__Set__to__zero__if__unknown. ++undefined++ 
  do_other Import__other__node__types?            5         No     0.000000     0.000000     0.000000  undefined  undefined Set__this__to__Yes____if__you__plan__to__import__anything__else__than__movies__or__micrographs ++undefined++ 
  do_queue Submit__to__queue?            5         No     0.000000     0.000000     0.000000  undefined  undefined If__set__to__Yes,__the__job__will__be__submit__to__a__queue,__otherwise__the__job__will__be__executed__locally.__Note__that__only__MPI__jobs__may__be__sent__to__a__queue.__The__default__can__be__set__through__the__environment__variable__RELION_QUEUE_USE. ++undefined++ 
    do_raw Import__raw__movies/micrographs?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined Set__this__to__Yes__if__you__plan__to__import__raw__movies__or__micrographs ++undefined++ 
fn_in_other Input__file:            2    ref.mrc     0.000000     0.000000     0.000000 Input__file__(*.*)          . Select__any__file(s)__to__import.__&&&&Note__that__for__importing__coordinate__files,__one__has__to__give__a__Linux__wildcard,__where__the__*-symbol__is__before__the__coordinate-file__suffix,__e.g.__if__the__micrographs__are__called__mic1.mrc__and__the__coordinate__files__mic1.box__or__mic1_autopick.star,__one__HAS__to__give__'*.box'__or__'*_autopick.star',__respectively.&&&&Also__note__that__micrographs,__movies__and__coordinate__files__all__need__to__be__in__the__same__directory__(with__the__same__rootnames,__e.g.mic1__in__the__example__above)__in__order__to__be__imported__correctly.__3D__masks__or__references__can__be__imported__from__anywhere.__&&&&Note__that__movie-particle__STAR__files__cannot__be__imported__from__a__previous__version__of__RELION,__as__the__way__movies__are__handled__has__changed__in__RELION-2.0.__&&&&For__the__import__of__a__particle,__2D__references__or__micrograph__STAR__file__or__of__a__3D__reference__or__mask,__only__a__single__file__can__be__imported__at__a__time.__&&&&Note__that__due__to__a__bug__in__a__fltk__library,__you__cannot__import__from__directories__that__contain__a__substring____of__the__current__directory,__e.g.__dont__important__from__/home/betagal__if__your__current__directory__is__called__/home/betagal_r2.__In__this__case,__just__change__one__of__the__directory__names. ++undefined++ 
 fn_in_raw Raw__input__files:            1 Micrographs/*.mrcs     0.000000     0.000000     0.000000  undefined  undefined Provide__a__Linux__wildcard__that__selects__all__raw__movies__or__micrographs__to__be__imported. ++undefined++ 
    fn_mtf MTF__of__the__detector:            2         ""     0.000000     0.000000     0.000000 STAR__Files__(*.star)          . As__of__release-3.1,__the__MTF__of__the__detector__is__used__in__the__refinement__stages__of__refinement.____If__you__know__the__MTF__of__your__detector,__provide__it__here.__Curves__for__some__well-known__detectors__may__be__downloaded__from__the__RELION__Wiki.__Also__see__there__for__the__exact__format__&&If__you__do__not__know__the__MTF__of__your__detector__and__do__not__want__to__measure__it,__then__by__leaving__this__entry__empty,__you__include__the__MTF__of__your__detector__in__your__overall__estimated__B-factor__upon__sharpening__the__map.Although__that__is__probably__slightly__less__accurate,__the__overall__quality__of__your__map__will__probably__not__suffer__very__much.__&&&&Note__that__when__combining__data__from__different__detectors,__the__differences__between__their__MTFs__can__no__longer__be__absorbed__in__a__single__B-factor,__and__providing__the__MTF__here__is__important! ++undefined++ 
is_multiframe Are__these__multi-frame__movies?            5        Yes     0.000000     0.000000     0.000000  undefined  undefined Set__to__Yes__for__multi-frame__movies,__set__to__No__for__single-frame__micrographs. ++undefined++ 
        kV Voltage__(kV):            6        300    50.000000   500.000000    10.000000  undefined  undefined Voltage__the__microscope__was__operated__on__(in__kV) ++undefined++ 
min_dedicated Minimum__dedicated__cores__per__node:            6         24     1.000000    64.000000     1.000000  undefined  undefined Minimum__number__of__dedicated__cores__that__need__to__be__requested__on__each__node.__This__is__useful__to__force__the__queue__to__fill__up__entire__nodes__of__a__given__size.__The__default__can__be__set__through__the__environment__variable__RELION_MINIMUM_DEDICATED. ++undefined++ 
 node_type Node__type:            4 Particle__coordinates__(*.box,__*_pick.star)     0.000000     0.000000     0.000000  undefined  undefined Select__the__type__of__Node__this__is. ++Particle__coordinates__(*.box,__*_pick.star)++Particles__STAR__file__(.star)++Movie-particles__STAR__file__(.star)++2D__references__(.star__or__.mrcs)++Micrographs__STAR__file__(.star)++3D__reference__(.mrc)++3D__mask__(.mrc)++Unfiltered__half-map__(unfil.mrc)++ 
optics_group_name Optics__group__name:            1 opticsGroup1     0.000000     0.000000     0.000000  undefined  undefined Name__of__this__optics__group.__Each__group__of__movies/micrographs__with__different__optics__characteristics__for__CTF__refinement__should__have__a__unique__name. ++undefined++ 
optics_group_particles Rename__optics__group__for__particles:            1         ""     0.000000     0.000000     0.000000  undefined  undefined Only__for__the__import__of__a__particles__STAR__file__with__a__single,__or__no,__optics__groups__defined:__rename__the__optics__group__for__the__imported__particles__to__this__string. ++undefined++ 
other_args Additional__arguments:            1         ""     0.000000     0.000000     0.000000  undefined  undefined In__this__box__command-line__arguments__may__be__provided__that__are__not__generated__by__the__GUI.__This__may__be__useful__for__testing__developmental__options__and/or__expert__use__of__the__program.__To__print__a__list__of__possible__options,__run__the__corresponding__program__from__the__command__line__without__any__arguments. ++undefined++ 
      qsub Queue__submit__command:            1       qsub     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__command__used__to__submit__scripts__to__the__queue,__e.g.__qsub__or__bsub.&&Note__that__the__person__who__installed__RELION__should__have__made__a__custom__script__for__your__cluster/queue__setup.__Check__this__is__the__case__(or__create__your__own__script__following__the__RELION__Wiki)__if__you__have__trouble__submitting__jobs.__The__default__command__can__be__set__through__the__environment__variable__RELION_QSUB_COMMAND. ++undefined++ 
qsubscript Standard__submission__script:            2 /public/EM/RELION/relion/bin/relion_qsub.csh     0.000000     0.000000     0.000000 Script__Files__(*.{csh,sh,bash,script})          . The__template__for__your__standard__queue__job__submission__script.__Its__default__location__may__be__changed__by__setting__the__environment__variable__RELION_QSUB_TEMPLATE.__In__the__template__script__a__number__of__variables__will__be__replaced:__&&XXXcommandXXX__=__relion__command__+__arguments;__&&XXXqueueXXX__=__The__queue__name;__&&XXXmpinodesXXX__=__The__number__of__MPI__nodes;__&&XXXthreadsXXX__=__The__number__of__threads;__&&XXXcoresXXX__=__XXXmpinodesXXX__*__XXXthreadsXXX;__&&XXXdedicatedXXX__=__The__minimum__number__of__dedicated__cores__on__each__node;__&&XXXnodesXXX__=__The__number__of__requested__nodes__=__CEIL(XXXcoresXXX__/__XXXdedicatedXXX);__&&If__these__options__are__not__enough__for__your__standard__jobs,__you__may__define__a__user-specified__number__of__extra__variables:__XXXextra1XXX,__XXXextra2XXX,__etc.__The__number__of__extra__variables__is__controlled__through__the__environment__variable__RELION_QSUB_EXTRA_COUNT.__Their__help__text__is__set__by__the__environment__variables__RELION_QSUB_EXTRA1,__RELION_QSUB_EXTRA2,__etc__For__example,__setenv__RELION_QSUB_EXTRA_COUNT__1,__together__with__setenv__RELION_QSUB_EXTRA1__"Max__number__of__hours__in__queue"__will__result__in__an__additional__(text)__ein__the__GUI__Any__variables__XXXextra1XXX__in__the__template__script__will__be__replaced__by__the__corresponding__value.Likewise,__default__values__for__the__extra__entries__can__be__set__through__environment__variables__RELION_QSUB_EXTRA1_DEFAULT,__RELION_QSUB_EXTRA2_DEFAULT,__etc.__But__note__that__(unlike__all__other__entries__in__the__GUI)__the__extra__values__are__not__remembered__from__one__run__to__the__other. ++undefined++ 
 queuename Queue__name:__            1    openmpi     0.000000     0.000000     0.000000  undefined  undefined Name__of__the__queue__to__which__to__submit__the__job.__The__default__name__can__be__set__through__the__environment__variable__RELION_QUEUE_NAME. ++undefined++ 
 
