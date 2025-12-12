# 3D viewer integrations for Kitodo.Presentation or DFG-Viewer

 * [Installation](#installation)
 * [Integrations](#integrations)
   * [dlf-3dbigdataspace-viewer](#dlf-3dbigdataspace-viewer)
   * [dlf-3dhop](#dlf-3dhop)
   * [dlf-4dbrowser](#dlf-4dbrowser)
   * [dlf-aim-3d](#dlf-aim-3d)
   * [dlf-aton](#dlf-aton)
   * [dlf-jena-3dviewer-gaussiansplat](#dlf-jena-3dviewer-gaussiansplat)
   * [dlf-jena-3dviewer-holopyramid](#dlf-jena-3dviewer-holopyramid)
   * [dlf-jena-3dviewer-ply-pointcloud](#dlf-jena-3dviewer-ply-pointcloud)
   * [dlf-jena-3dviewer-vrglasses](#dlf-jena-3dviewer-vrglasses)
   * [dlf-kompakkt](#dlf-kompakkt)
   * [dlf-model-viewer](#dlf-model-viewer)
   * [dlf-pcss-viewer](#dlf-pcss-viewer)
   * [dlf-threejs](#dlf-threejs)
 * [DFG 3D-Viewer test system](#dfg-3d-viewer-test-system)
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

> [!NOTE]
> DLF prefix stands for “Digital Library Framework” and is the key of the TYPO3 extension “Kitodo.Presentation”. The name of the viewer integration can be chosen freely for your [custom viewer](https://kitodo.github.io/kitodo-presentation/Developers/Embedded3DViewer.html#Custom%20Viewer).

**Overview of the integrated viewers and their supported model formats** 

| Viewer | FBX | OBJ | DAE | PLY | 3DS | IFC | STL | GLB | glTF | JSON | XYZ | HTML |
| --- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| dlf-3dbigdataspace-viewer |  |  |  |  |  |  |  | :white_check_mark: |  |  |  |  |
| dlf-3dhop |  | :white_check_mark: |  | :white_check_mark: |  |  |  |  |  |  |  |  |
| dlf-4dbrowser |  |  |  |  |  |  |  |  |  | :white_check_mark: |  |  |
| dlf-aim-3d | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |  |
| dlf-aton |  |  |  |  |  |  |  | :white_check_mark: | :white_check_mark: |  |  |  |
| dlf-jena-3dviewer-gaussiansplat |  |  |  |  |  |  |  |  |  |  |  | :white_check_mark: |
| dlf-jena-3dviewer-holopyramid |  |  |  |  |  |  |  | :white_check_mark: | :white_check_mark: |  |  |  |
| dlf-jena-3dviewer-ply-pointcloud |  |  |  | :white_check_mark: |  |  |  |  |  |  |  |  |
| dlf-jena-3dviewer-vrglasses |  |  |  |  |  |  |  | :white_check_mark: | :white_check_mark: |  |  |  |
| dlf-kompakkt |  | :white_check_mark: |  |  |  |  | :white_check_mark: | :white_check_mark: | :white_check_mark: |  |  |  |
| dlf-model-viewer |  |  |  |  |  |  |  | :white_check_mark: | :white_check_mark: |  |  |  |
| dlf-pcss-viewer |  | :white_check_mark: |  |  |  |  |  | :white_check_mark: | :white_check_mark: |  |  |  |
| dlf-threejs |  |  |  | :white_check_mark: |  |  |  |  |  |  |  |  |

### dlf-3dbigdataspace-viewer

Integration of the [3D Artifact Viewer](https://github.com/rooom-com/3DBigDataSpace-AR-Viewer) from 3DBigDataSpace project.

Supported model formats: .glb

<img width="2533" height="1292" alt="image" src="https://github.com/user-attachments/assets/39cb0c2f-151b-4ad9-ad8e-91882001954d" />

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-3dbigdataspace-viewer

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-3dbigdataspace-viewer

### dlf-3dhop

Integration of [3DHOP](https://3dhop.net/) framework.

Supported model formats: .ply, .obj

<img width="1893" height="1051" alt="image" src="https://github.com/user-attachments/assets/81f766a1-5d9f-45c8-adb8-31132892e803" />

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[model]=https://3dtest.dfg-viewer.de/fileadmin/models/gargo.ply&tx_dlf[viewer]=dlf-3dhop

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[model]=https://bear-genuine-hookworm.ngrok-free.app/fileadmin/models/gargo.ply&tx_dlf[viewer]=dlf-3dhop

### dlf-4dbrowser

Integration of [UH4D Browser](https://4dbrowser.org).

Supported model formats: .json (IIIF manifest)

<img width="1889" height="1049" alt="image" src="https://github.com/user-attachments/assets/36e35480-9621-46df-89fd-8a430b174b16" />

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf%5Bmodel%5D=https%3A%2F%2Fzenodo.org%2Frecords%2F17391252%2Ffiles%2F86fc8419401c9a8ciiifmanifest.json&tx_dlf%5Bviewer%5D=dlf-4dbrowser

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf%5Bmodel%5D=https%3A%2F%2Fzenodo.org%2Frecords%2F17391252%2Ffiles%2F86fc8419401c9a8ciiifmanifest.json&tx_dlf%5Bviewer%5D=dlf-4dbrowser

### dlf-aim-3d

Integration of 3D Viewer implementation [thedworak/dfg_3dviewer](https://github.com/thedworak/dfg_3dviewer) of Daniel Dworak Hochschule Mainz.

Supported model formats: .obj, .dae, .fbx, .ply, .ifc, .stl, .xyz, .json, .3ds, .gltf, .glb

![image](https://github.com/user-attachments/assets/25092f15-a9c7-4564-96f8-342b341f2793)

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-aim-3d

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-aim-3d

### dlf-aton

Integration of [ATON](https://osiris.itabc.cnr.it/aton/) framework.

Supported model formats: .glb, .gltf

![image](https://github.com/user-attachments/assets/3e46f16d-e201-4656-930e-93aa547f3342)

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-aton

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-aton

### dlf-jena-3dviewer-gaussiansplat

Integration of the 3DView for Holopyramid from https://3drepo.eu/.

Supported model formats: .html

<img width="1896" height="975" alt="image" src="https://github.com/user-attachments/assets/96bd570e-209c-4420-8bf6-9ab370bdf87a" />

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[model]=https://lumalabs.ai/capture/059f25eb-e543-4404-9cd6-fc5c83c2442e&tx_dlf[modelFormat]=html&tx_dlf[viewer]=dlf-jena-3dviewer-gaussiansplat

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[model]=https://lumalabs.ai/capture/059f25eb-e543-4404-9cd6-fc5c83c2442e&tx_dlf[modelFormat]=html&tx_dlf[viewer]=dlf-jena-3dviewer-gaussiansplat

### dlf-jena-3dviewer-holopyramid

Integration of the 3DView for Holopyramid from https://3drepo.eu/.

Supported model formats: .glb, .gltf

![image](https://github.com/user-attachments/assets/90aaa744-cf2a-4fcf-bd4e-eab9b01477cf)

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-jena-3dviewer-holopyramid

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-jena-3dviewer-holopyramid

### dlf-jena-3dviewer-ply-pointcloud

Integration of the PLY Point Cloud Viewer from https://3drepo.eu/.

Supported model formats: .ply

<img width="1891" height="1049" alt="image" src="https://github.com/user-attachments/assets/f6537785-d179-48ca-b4e1-640dfeb9fcaf" />

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[model]=https://3dtest.dfg-viewer.de/fileadmin/models/gargo.ply&tx_dlf[viewer]=dlf-jena-3dviewer-ply-pointcloud

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[model]=https://bear-genuine-hookworm.ngrok-free.app/fileadmin/models/gargo.ply&tx_dlf[viewer]=dlf-jena-3dviewer-ply-pointcloud

### dlf-jena-3dviewer-vrglasses

Integration of the 3DView for VR Glasses from https://3drepo.eu/.

Supported model formats: .glb, .gltf

![image](https://github.com/user-attachments/assets/5994b03a-802c-4bfc-ad25-c07c7e28603e)

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-jena-3dviewer-vrglasses

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-jena-3dviewer-vrglasses

### dlf-kompakkt

Integration of [Kompakkt](https://kompakkt.de/) using the [Kompakkt Standalone Viewer](https://github.com/Kompakkt/StandaloneViewer).

Supported model formats: .glb, .babylon, .gltf, .obj, .stl

![image](https://github.com/user-attachments/assets/1fc458e8-fa48-4d69-b8dc-a1d3cbe46138)

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-kompakkt

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-kompakkt

### dlf-model-viewer

Integration of the [model-viewer](https://modelviewer.dev/). 

*Kitodo.Presentation an thus DFG-Viewer includes this as a default viewer now*

Supported model formats: .glb, .gltf

![image](https://github.com/user-attachments/assets/14345cce-a32d-4c6e-89f8-d63909e3f35e)

#### Test

Default of viewer Kitodo.Presentation and with that DFG-Viewer
https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml

Use the model viewer from the Integration repository
https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-model-viewer

##### GitHub Runner Testsystem

Default of viewer Kitodo.Presentation and with that DFG-Viewer
https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml

Use the model viewer from the Integration repository
https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-model-viewer

### dlf-pcss-viewer

Supported model formats: .glb, .gltf, .obj

<img width="2533" height="1213" alt="image" src="https://github.com/user-attachments/assets/22459815-f329-499b-8e36-f856185def6a" />

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-pcss-viewer

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[id]=https://data.3drepo.eu/xml/metsmods/b5df7cd550f64e818943ad96fff7e902metsmods.xml&tx_dlf[viewer]=dlf-pcss-viewer

### dlf-threejs

Integration of a minimal implementation of [three.js](https://threejs.org/) with ply model loader.

Supported model formats: .ply

![image](https://github.com/user-attachments/assets/ed8a6993-1c31-45dd-8b02-88652979ce53)

#### Test

https://3dtest.dfg-viewer.de/viewer?tx_dlf[model]=https://3dtest.dfg-viewer.de/fileadmin/models/gargo.ply&tx_dlf[viewer]=dlf-threejs

##### GitHub Runner Testsystem

https://bear-genuine-hookworm.ngrok-free.app/viewer?tx_dlf[model]=https://bear-genuine-hookworm.ngrok-free.app/fileadmin/models/gargo.ply&tx_dlf[viewer]=dlf-threejs

## DFG 3D-Viewer test system

If you have write permissions for this repository, you can start a DFG Viewer test system that includes the latest versions of the available integrations. **Please check beforehand if the test system https://bear-genuine-hookworm.ngrok-free.app/ is already running.**

Under `Actions` tab above, you will find the workflow named `Run DFG-Viewer test system over ngrok`. By clicking on it, a `Run workflow` button will appear in the upper-right area above the list of recent workflow executions. When clicking on this button, a popup opens. Click the green button with the label `Run workflow` in the popup.

![image](https://github.com/user-attachments/assets/c07eb48b-1186-4655-a966-10c35094c385)

It takes a moment for the starting workflow to be displayed. Reloading the page can make it appear faster.

![image](https://github.com/user-attachments/assets/c336c461-f9d8-4979-b998-725b8d8fbd02)

After a short time (1-2 minutes), the test system was generated and is accessible at the URL https://bear-genuine-hookworm.ngrok-free.app/ for one hour. After that, the test system will be automatically stopped.

## Further information

- [DFG 3D-Viewer](https://dfg-viewer.de/dfg-3d-viewer-2)
- [Infrastructure for Digital 3D Reconstructions](https://architekturinstitut.hs-mainz.de/projects/dfg-3d-viewer-2nd-phase)

## Maintainer
- [Hochschule Mainz](https://architekturinstitut.hs-mainz.de/)
- [Friedrich-Schiller-Universität Jena](https://www.uni-jena.de/)
- [Sächsische Landesbibliothek – Staats- und Universitätsbibliothek Dresden](https://www.slub-dresden.de/)
