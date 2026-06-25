---
layout: page
title: acoustic archeology
description: underwater flint detection
img: /assets/img/flint_flakes.jpg
importance: 3
category: environmental
---

Due to the rise in sea-level over the past 20 000 years, numerous archeological sites close to existing coastlines, are now submerged. Detecting these sites, by non-invasive means, is important for world cultural heritage. Just as we did for biodiversity monitoring of [whales](/DT-tbx-v1/projects/whales/), acoustic exploration is indicated here. In particular, since flint relics often characterize the presence of pre-historic sites in particular, we can exploit the fact that they have very pronounced acoustic resonance signatures to probe coastal waters. This is very close to what we did in the [sediment mapping](/DT-tbx-v1/projects/OAT/) twin, and the principles and methods used for the modeling are similar.

Actual flints were digitized and their geometry transferred by CAD software to a mesher, and then collections of flints were embedded in a faithful representation of the coastal underwater sediments.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/flint_3D_geometry.png' | relative_url }}" alt="" title="example image"/>
    </div>
</div>
<div class="caption">
    Real flints, their CAD model and the 3D environment.
</div>

This is a 2D cross-section of the mesh of the complete environmemt, showing the different layers, the flint collections in the cultural layers, the acoustic source (circle) and one of the hydrophones (diamond).

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/flint_layer_mesh1.jpg' | relative_url }}" alt="" title="example image"/>
    </div>
</div>
<div class="caption">
    Spectral element mesh of real underwater sediment structure.
</div>

Time-domain simulations of the acouric-elastic wave equation were performed with the [SPECFEM](https://geodynamics.org/cig/software/specfem2d/) code an then frequency spectra were computed. By taking the difference between simulations with and without flints, we easily detect their presence as well as their resonances. This is illlustrated in the figures below. 




<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/flint_time_sig_diff.jpg' | relative_url }}" alt="" title="time difference"  data-zoomable />
    </div>
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/flint_spec_diff.jpg' | relative_url }}" alt="" title="spectra"  data-zoomable />
    </div>
</div>
<div class="caption">
    Difference of time signals at three hydrophones (left).  Spectral signatures of three typical flints (right.) Click on images to zoom.
</div>

Full details of this twin and simulation results can be found in our paper {% cite Hermand2011 %} and the IEEE/Oceans [presentation](/DT-tbx-v1/assets/pdf/Hemand_IEEE_Flint2011.pdf).

References
----------

{% bibliography --cited %}


