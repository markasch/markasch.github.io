---
layout: page
title: underwater sediment mapping
description: ocean acoustic tomography
img: /assets/img/OAT-inv-TL.jpg
importance: 2
category: environmental
---

Knowledge o underwater sediment properties is important in different environmental contexts. It is needed for: 

- sonar communications,
- biodiversity monitoring (see this [twin](/DT-tbx-v1/projects/whales/)),
- detection of buried objects (see this [twin](/DT-tbx-v1/projects/flints/)).

Over the ten-year period 2001-2011, my group was involved in numerous projects, leading up to a three-week mission at sea, where  real-time inversion was performed using sockets, as described in this [post](/DT-tbx-v1/blog/2021/DT-stereo/).

Mathematically, we have a classical imaging inverse problem to solve:

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/OAT_direct_pb_phys_modell.png' | relative_url }}" alt="" title="model imaging problem"/>
    </div>
</div>
<div class="caption">
    The imaging problem: given a source and an array where measurements are obtained, find the properties of the unknown medium.
</div>

This model is readily adapted to a realistic context of underwater sedimentology characterization, as shown below.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/OAT_invPb.png' | relative_url }}" alt="" title="real inverse problem"/>
    </div>
</div>
<div class="caption">
    The sediment characterization problem, including geoacoustics : given a source and a receiver array, where measurements are obtained, find the properties of the unknown medium, both water and seafloor.
</div>

We have successfully performed inversion of the sediment properties and the sound-speed profile in the water layer, using an adjoint approach {% cite Hermand2006a  %}.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/OAT_combo1.png' | relative_url }}" alt="" title="OAT"  data-zoomable />
    </div>
    <div class="col-sm mt-3 mt-md-0">
        <img class="img-fluid rounded z-depth-1" src="{{ '/assets/img/OAT_combo2.png' | relative_url }}" alt="" title="geoacosutics inversion"  data-zoomable />
    </div>
</div>
<div class="caption">
    Ocean acoustics tomography for recovering the soud-speed profile (left).  Geoacoustic inversion for recovering the sediment properties (right.) Click on images to zoom.
</div>


References
----------

{% bibliography --cited %}


