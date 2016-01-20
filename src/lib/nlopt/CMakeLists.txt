# ==============================================================================
# NLOPT CMake File
# ==============================================================================

# objects in library -----------------------------------------------------------
SET(NLOPT_SRC
        auglag.c
        bobyqa.c
        ccsa_quadratic.c
        cdirect.c
        cobyla.c
        crs.c
        deprecated.c
        DIRect.c
        direct_wrap.c
#        DIRparallel.c
        DIRserial.c
        DIRsubrout.c
#        dummy.c
        f77api.c
        general.c
        hybrid.c
        isres.c
        mlsl.c
        mma.c
        mssubs.c
        mt19937ar.c
        newuoa.c
        nldrmd.c
#        nlopt_optimize-mex.c
        optimize.c
        options.c
        plip.c
        plis.c
        pnet.c
        praxis.c
        pssubs.c
        qsort_r.c
        redblack.c
#        redblack_test.c
        rescale.c
        sbplx.c
        slsqp.c
        sobolseq.c
        stop.c
        testfuncs.c
        timer.c
        )

# create static library --------------------------------------------------------
IF(LIBS_STATIC)
    ADD_LIBRARY(nlopt_static STATIC ${NLOPT_SRC})
    SET_TARGET_PROPERTIES(nlopt_static PROPERTIES
                            OUTPUT_NAME nlopt
                            CLEAN_DIRECT_OUTPUT 1)
ENDIF(LIBS_STATIC)

# create shared library --------------------------------------------------------
IF(LIBS_SHARED)
    ADD_LIBRARY(nlopt_shared SHARED ${NLOPT_SRC})
    SET_TARGET_PROPERTIES(nlopt_shared PROPERTIES
                            OUTPUT_NAME nlopt
                            CLEAN_DIRECT_OUTPUT 1
                            VERSION ${NLOPT_VERSION})
    INSTALL(TARGETS 
                nlopt_shared
            LIBRARY DESTINATION
                lib
            )
ENDIF(LIBS_SHARED)

