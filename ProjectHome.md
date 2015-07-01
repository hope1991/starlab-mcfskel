The source & compiled binaries from the paper "Mean Curvature Skeletons". The paper is available in the **download** section. In the downloads you will also find pre-compiled binaries for Window, OSX and Ubuntu. **NEWS**: currently Xiang Gao is re-implementing this project while participating in the **CGAL Google Summer of Code 2013**

![https://developers.google.com/open-source/soc/images/soc-logo-300x200.png](https://developers.google.com/open-source/soc/images/soc-logo-300x200.png)


# Checking out the source code #
```
git clone https://code.google.com/p/starlab-mcfskel
cd starlab-mcfskel
git clone https://code.google.com/p/starlab.core core
git clone https://code.google.com/p/starlab.surfacemesh surfacemesh
```

Then open the file **mcfskel.pro** in `QtCreator` and perform **qmake** & **build**

This is a set of plugins for the starlab environment. The set contains:
```
remesher                    generates an approximately uniform mesh
voromat                     generates a medial manifold by projecting a mesh onto the voronoi poles
mcfskel                     mean curvature skeletonization (with medial guidance)
surfacemesh_to_skeleton     a simple plugin to convert contracted meshes into curve-skeletons 
surfacemesh_io_obj          I/O of obj files containing medial information
skeleton_resample           finely resamples a curve-skeleton (used in comparisons)
skeleton_compare            compares euclidean distance between two skeletons
```

# Usage #
A typical usage is to load the mesh, apply a re-meshing operation, apply the **voromat** plugin without the embedding option, then start the skeletonization process (MCF steps). The resulting mesh can be collapsed into simple curves by applying the **short\_ecollapse** plugin. The result can be saved to 'cg' file format.

# Example #
<a href='http://www.youtube.com/watch?feature=player_embedded&v=gs5R2RhngVA' target='_blank'><img src='http://img.youtube.com/vi/gs5R2RhngVA/0.jpg' width='425' height=344 /></a>

# Gallery #
![https://lh6.googleusercontent.com/-jA6ubOslwZE/T_laLl8Ki0I/AAAAAAAAnI0/b3Yc_eMJgxg/s800/code_gallery.png](https://lh6.googleusercontent.com/-jA6ubOslwZE/T_laLl8Ki0I/AAAAAAAAnI0/b3Yc_eMJgxg/s800/code_gallery.png)

# Bibtex Entry #
```
@article{taglia_sgp12,
title={Mean Curvature Skeletons},
author={Andrea Tagliasacchi and Ibraheem Alhashim and Matt Olson and Hao Zhang},
booktitle={Computer Graphics Forum (Proc. of the Symposium on Geometry Processing)},
volume={31},
number={5},
pages={1735--1744},
year={2012},
organization={Wiley Online Library}}
```