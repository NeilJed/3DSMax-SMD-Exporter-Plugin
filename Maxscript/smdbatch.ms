-- // Example maxscript to use the batch functions of the v1.6 3DS Max SMD Exporter
-- // 
-- // If you wish to invoke the SMD exporter via Maxscript fot Batch type operations you can
-- // use the following example script as a basis.
-- //
-- // Invoke the SMD exporter with the WBSMDExport() function and the following parameters.
-- // Note that you must include all parameters with your function call.
-- //
-- // WBSMDExport [strFilename] [bExportSelected] [nSMDType] [bHL1Format] [nUVChannel] [nStartFrame] [nEndFrame] [bReverseAnim] [bKeyFramesOnly] [bBookendKeys] [bSkipNonRenderable]
-- //
-- // Paramters:
-- //
-- // [strFilename] should be a string. The path and filename you want to export e.g "c:\myfile\reference.smd"
-- // [bExportSelected] should be true or false. Set this if you want to export only the selected objects.
-- // [nSMDType] should be a number. Set for the type of SMD file you want to create. 0 = Reference, 1 = Sequence.
-- // [bHL1Format] should be true or false. Set if you want to use HL1 format SMD files.
-- // [nUVChannel] which UV Channel to use for the export
-- // [nStartFrame] should be a number. The start frame of your animation sequence.
-- // [nEndFrame] should be a number. The end frame of your animation squence.
-- // [bReverseAnim] should be true or false. Use to export your animation sequence in reverse.
-- // [bKeyFramesOnly] should be true or false. Export only the keyframes for your animation.
-- // [bBookendKeys] should be true or false. When using only keyframes, always create keys on the first and last frame.
-- // [bSkipNonRenderable] should be true or false. Set to skip exporting meshes for any items marked un-renderable.
-- //
-- // Result codes:
-- // Results are always returned as type String.
-- //
-- // "OK" - Export suceeded without problems.
-- // "WARNING" - Export suceeded but warnings were raised.
-- // "ERROR" - Export failed and an exception was thrown.
-- //
-- // Examples:
-- // Show all export parameters.

WBSMDExport()

-- // Show plug-in version number

WBSMDExportVersion()
WBSMDExportVersionNum()

-- // Export a reference SMD

WBSMDExport "c:\myfiles\reference.smd" false 0 false 1 0 0 false false false false

-- // Export a sequence SMD

WBSMDExport "c:\myfiles\reference.smd" false 1 false 1 0 30 false false false false

