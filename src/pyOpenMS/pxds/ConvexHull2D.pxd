from libcpp cimport bool
from libcpp.vector cimport vector as libcpp_vector
from DPosition cimport *
from DBoundingBox cimport *
cimport numpy as np

# this class has addons, see the ./addons folder

cdef extern from "<OpenMS/DATASTRUCTURES/ConvexHull2D.h>" namespace "OpenMS":

    cdef cppclass ConvexHull2D:

        ConvexHull2D() nogil except +
        ConvexHull2D(ConvexHull2D) nogil except + # wrap-ignore

        bool operator==(ConvexHull2D) nogil except +
        void clear()       nogil except +
        Size compress()    nogil except +
        void expandToBoundingBox() nogil except +

        # as cython/autowrap have problems handling integer template args
        # we wrap following methods manually in ../addons/ConvexHull2D.pyx:
        # better/todo: implement converter in ../converters !

        bool addPoint(DPosition2 point) nogil except +
        void addPoints(libcpp_vector[DPosition2] points) nogil except +

        bool encloses(DPosition2) nogil except +
        libcpp_vector[DPosition2] getHullPoints() nogil except + 
        void setHullPoints(libcpp_vector[DPosition2] ) nogil except + 
        DBoundingBox2 getBoundingBox() nogil except +

        # int enclosesXY(float x,float y) # wrap-ignore
        # np.ndarray[np.float32_t, ndim=2] getHullPointsNPY() # wrap-ignore
        # void setHullPointsNPY(np.ndarray[np.float32_t, ndim=2] points) # wrap-ignore
        # tuple getBoundingBox2D() # wrap-ignore
        # void addPointXY(double x,double y) # wrap-ignore
        # void addPointsNPY(np.ndarray[np.float32_t, ndim=2] points) # wrap-ignore


