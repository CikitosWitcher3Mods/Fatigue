rem Copy Scripts
XCOPY %modPath%\scripts %modPath%\Packed\modFatigue\content\scripts\ /e /s /y

rem Copying Mod To Witcher 3 Mods
XCOPY %modPath%\Packed\modFatigue "%gamePath%\mods\modFatigue\" /e /s /y
cd /d %modPath%