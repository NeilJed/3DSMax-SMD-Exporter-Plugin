# 3D Studio Max SMD export plug-in
A plug-in for Autodesk 3D Studio Max for exporting SMD format files, popular with Half-Life and Source based games.

## Overview
This plug-in allows 3D Studio Max to export SMD format files used primarily in Half-Life and Source engine based games. However the format has been adopted as an intermediate format by various other 3D games and tools. It can create reference and sequence SMD files for use when compiling models along with extra features to easy creation workflow.

## Features
* Supports Standard and Mult/Sub-Object material types.
* Supports Editable Mesh and Editable Poly geometry.
* Supports Skin and Physique modifiers.
* Supports Biped bone export.
* Supports use of Dummy and Point helpers as bones (Skin Modifier Only)
* Exports CAT bones as SMD bones (Max 2018 onwards)
* Uses material name when diffuse texture is not assigned.
* Optional exporting of different UV channel.
* Optional exporting of an animation sub-range.
* Optional reversing of animation on export.
* Optional exporting of keyframes only.
* Optional skipping of meshes marked non-renderable.
* Export in HL1 or HL2 SMD format.
* Batch export mode via Maxscript.

## Supported versions
* 3DS Max 2017 - 64bit
* 3DS Max 2018 - 64bit
* 3DS Max 2019 - 64bit
* 3DS Max 2020 - 64bit

Older versions of 3DS Studio Max not shown in this list may be supported in previous releases.

## Installation
Copy the `SMDExport.dle` file for the correct version for your edition of 3D Studio Max into your 3DS Max plug-ins folder (i.e. `C:\Program Files\Autodesk\3ds Max 2020\Plugins`) and re-start. You can check its loaded via the Plug-ins Manager.

## Basic usage
Once installed, using the *Export* option of the File menu you should find *Source SMD* as an option. You can use regular *Export* which will export everything visible in the scene or *Export Selected* to only export selected items.

When exporting a reference SMD, frame 0 will be used as the reference pose.

For sequence SMD's, by default it will export the entire animation range. If you only want a sub-range, select the start and end frame in the export options dialog box. You can also opt to have the animation exported backwards by ticking the reverse checkbox.

For instructions of how to use batch mode, please check the included Maxscript sample.

## Tips & tricks

* For Max 2018 onwards, CAT parent, hub and bone nodes will be exported automatically as SMD bone nodes. For Max 2017, make the CAT bones "non-renderable" to avoid the CAT bones mesh being exported.

* Don't mirror bones using the *Tools->Mirror* method. Use *Animation->Bone Tools->Mirror*.  If you don't use the later method your bone axies become flipped resulting in broken animation exports. You'll see a warning in the export window if any of your bones are mirrored incorrectly.

* In addition to bones, each mesh also exports an extra "mesh bone" corresponding to the meshes own origin. These unused bones are stripped out by the model compiler and can be ignored. However, if you export a mesh that uses a Skin or Physique modifier and fail to unhide or select the bones it uses for weighting, every vertex weight for that mesh will be assiged to the mesh bone instead.

* When using a Skin modifier, you can also use helper objects such as Dummy or Point as bones and weight vertices to them. This can be useful for mechanical animation such as guns where parts slide (or translate) via their bone rather than just a simple rotation.

* In HL1 format only one vertex weight per bone is allowed. If more than one is assigned the exporter looks for the bone with the greatest influence and normalises it's weight to 1.0.

## Known Issues
* Some object types, such as nVidia collision hulls cause the exporter to crash.
* On rare occasions, a mesh which has been merged from another may stall the exporter.  

## Legal

### Author
This software was created by and is &copy; 2018 Neil "Jed" Jedrzejewski

### License & Warranty
The content owner grants a non-exclusive, perpetual, personal use license to view, download, display, and copy the content, subject to the following restrictions:

1. The content is licensed for personal and non-profit use only, not commercial use. The content may not be used in any way whatsoever in which you charge money, collect fees, or receive any form of remuneration for commercial gain. The content may not be resold, relicensed, sub-licensed, rented, leased, or used in advertising.

2. Title and ownership, and all rights now and in the future, of and for the content remain exclusively with the content owner.

3. This software is provided 'as-is', without any express or implied warranty.

4. The content owner will not be liable for any third party claims or incidental, consequential, or other damages arising out of this license or the use of the content.

5. This notice must NOT be removed or altered from any distribution of this software.
