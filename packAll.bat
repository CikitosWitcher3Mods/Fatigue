call packVariables.cmd
rem ==== Clearing Folders"
rmdir "%gamePath%\mods\modFatigue\" /s /q
rmdir %modPath%\Packed\modFatigue\content\ /s /q

rem Packing 
cd /d "%modKitPath%"
call wcc_lite pack -dir=%modPath%\Cooked -outdir=%modPath%\Packed\modFatigue\content\

rem Copy Scripts
XCOPY %modPath%\scripts %modPath%\Packed\modFatigue\content\scripts\ /e /s /y

rem ==== Generate metadata
call wcc_lite metadatastore -path=%modPath%\Packed\modFatigue\content\

rem Copying Mod To Witcher 3 Mods
XCOPY %modPath%\Packed\modFatigue "%gamePath%\mods\modFatigue\" /e /s /y
cd /d %modPath%