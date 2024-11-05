# 3D viewer integrations for Kitodo.Presentation or DFG-Viewer

 * [Installation](#installation)
 * [Integrations](#integrations)
   * [dlf-3dhop](#dlf-3dhop)
   * [dlf-aton](#dlf-aton)
   * [dlf-kompakkt](#dlf-kompakkt)
   * [dlf-model-viewer](#dlf-model-viewer)
   * [dlf-thedworak-dfg-3dviewer](#dlf-thedworak-dfg-3dviewer)
   * [dlf-threejs](#dlf-threejs)
 * [Further information](#further-information)
 * [Maintainer](#maintainer)

This repository contains integrations of existing 3D viewers or reference implementations of 3D viewers for embedding in Kitodo.Presentation or DFG-Viewer.

## Installation

- Clone repository or download source code.
- Run the `install.sh` bash script to download libraries and frameworks under `modules` folder of each viewer implementation

After these steps, you will have a folder with the respective viewer integration, its dependencies and resources as well as the `dlf-3d-viewer.yml` configuration file required for the integration.

For more informations regarding embedding this folder into Kitodo.Presentation and DFG-Viewer, read the [Embedded 3D Viewer](https://kitodo.github.io/kitodo-presentation/Developers/Embedded3DViewer.html) documentation.

## Integrations

These are integrations of 3D viewers or custom 3D viewer implementations base on a JavaScript 3D library (e.g. three.js) which have been prepared for Kitodo.Presentation and thus for the DFG-Viewer.

*DLF prefix stands for “Digital Library Framework” and is the key of the TYPO3 extension “Kitodo.Presentation”. The name can of the integration can be chosen freely for your [custom viewer](https://kitodo.github.io/kitodo-presentation/Developers/Embedded3DViewer.html#Custom%20Viewer).*

### dlf-3dhop

Integration of [3DHOP](https://3dhop.net/) framework.

Supported model formats: .ply, .obj

![image](https://github.com/user-attachments/assets/153f06ab-855b-4989-b06a-73cef84cc0f0)

### dlf-aton

Integration of [ATON](https://osiris.itabc.cnr.it/aton/) framework.

Supported model formats: .glb, .gltf

![image](https://github.com/user-attachments/assets/3e46f16d-e201-4656-930e-93aa547f3342)

### dlf-kompakkt

Integration of [Kompakkt](https://kompakkt.de/) using the [Kompakkt Standalone Viewer](https://github.com/Kompakkt/StandaloneViewer).

Supported model formats: .glb, .babylon, .gltf, .obj, .stl

![image](https://github.com/user-attachments/assets/1fc458e8-fa48-4d69-b8dc-a1d3cbe46138)

### dlf-model-viewer

Integration of the [model-viewer](https://modelviewer.dev/). 

*Kitodo.Presentation an thus DFG-Viewer includes this as a default viewer now*

Supported model formats: .glb, .gltf

![image](https://github.com/user-attachments/assets/14345cce-a32d-4c6e-89f8-d63909e3f35e)

### dlf-thedworak-dfg-3dviewer

Integration of 3D Viewer implementation [thedworak/dfg_3dviewer](https://github.com/thedworak/dfg_3dviewer) of Daniel Dworak Hochschule Mainz.

Supported model formats: .obj, .dae, .fbx, .ply, .ifc, .stl, .xyz, .json, .3ds, .gltf

![image](https://github.com/user-attachments/assets/7501684c-059c-45f7-8d0b-4929ac55852f)

### dlf-threejs

Integration of a minimal implementation of [three.js](https://threejs.org/) with ply model loader.

Supported model formats: .ply

![image](https://github.com/user-attachments/assets/ed8a6993-1c31-45dd-8b02-88652979ce53)

## Further information

- [DFG 3D-Viewer](https://dfg-viewer.de/dfg-3d-viewer-2)
- [Infrastructure for Digital 3D Reconstructions](https://architekturinstitut.hs-mainz.de/projects/dfg-3d-viewer-2nd-phase)

## Maintainer
- [Hochschule Mainz](https://architekturinstitut.hs-mainz.de/)
- [Friedrich-Schiller-Universität Jena](https://www.uni-jena.de/)
- [Sächsische Landesbibliothek – Staats- und Universitätsbibliothek Dresden](https://www.slub-dresden.de/)
