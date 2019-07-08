# 3D Studio Max SMD export plug-in

## Changelog

### 1.7-rev2
* Added support for Max 2020

### 1.7
* Deprecated support for older 3DS Max versions.
* Added support for Max 2017, 2018 & 2019
* Re-written code for full Unicode support.
* Added alternate UV channel export option and added to Maxscript interface.
* Added native export of CAT parent, hub and bone objects in Max 2018 & 2019.

### 1.6
* Fixed issues with GUI layout.
* Added tool-tip help for export options.
* Added feature to use material name if no diffuse texture is specified.
* Added feature to not export mesh for objects flagged un-renderable.                     
* Added export keyframes only and bookend feature.
* Re-wrote MaxScript interface.        
* Added support for Max 2011 & 2012

### 1.5
* Added support for editable spline objects per request.
* Added support for Max 2010

### 1.4
* Added better support for exporting explicitly defined vertex normals.
* Added alternate method for exporting smoothing normals in case of failure.

### 1.3
* Fixed issue with material type detection on non-English versions of Max.
* Fixed small issue with vertex weight export.

### 1.2
* Fixed issue with batch mode always exporting SMD sequences backwards.
* Fixed small issue with vertex weight export.
* Added support for Max 2009.

### 1.1
* Added HL1 format export function
* Added batch export function for Maxscript
* Resolved issue where exporting only part of a chain of bones without exporting the root node would fail.

### 1.0
* Fixed bug where mesh materials with out a BITMAP type diffuse texture would cause the exporter to crash.
* Removed logging to text file option and replaced with combined progress/log dialog.
* Ported to 64-bit version of Max 9.

### 0.5b
* Fixed error were normals were returned as -1.#IND000 instead of sane values. I'm not 100% sure if this is user or a 3DXI error, however this seems to fix it.
* Added option to log errors/warnings to a log file.

### 0.4b
* Fixed bones that have been mirrroed (no right hand rule) being exported incorrectly. **TIP:** If you mirror bones, reset their transforms before you use them!

### 0.3b
* Fixed sub-materials of Sub/Multi-Object material types not being exported correctly.
* Added trap for invalid face material ID's.

### 0.2b
* Fixed bug where floating point numbers were output in users regional locale format.
* Fixed hidden bones and meshes being exported. Now, in normal "Export" modeonly what is visible is exported. In "Export Selected" mode, what is selected is exported even if it is hidden.
* Fixed bug where a bone who's parent is not to be exported had it's position and rotation misplaced.
* Revised mesh output so that if a vertex's weights includes a bone that isn'tto be exported, all weights are collapsed and assigned to the meshes default bone. This stops invalid vertex weights.
* Stopped exporter over-writing file with nothing if Cancel button pressed.

### 0.1b
* Initial release 
