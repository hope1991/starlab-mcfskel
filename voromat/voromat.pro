CONFIG += starlab 
STARLAB_TEMPLATE += plugin 
STARLAB_DEPENDS += surfacemesh_model

# COMMENT OUT FOR QHULL
CONFIG += matlab 

# which library to import?
CONFIG(matlab){
    STARLAB_EXTERNAL += matlab
} else {
    DEFINES += QHULL
    error(Attempting to use QHULL)
}

HEADERS += voromat.h \
    MatlabVoronoiHelper.h
SOURCES += voromat.cpp
