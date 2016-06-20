call packVariables.cmd
cd /d "%modKitPath%"
call wcc_lite uncook -indir="%gamePath%\content\content0\bundles"  -outdir=%modPath%\Unpacked -skiperrors -imgfmt=tga -unbundleonly