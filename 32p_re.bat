start session
set liblist "testicon.pbl" 
set application "testicon.pbl" "testicon"
build application full
build library "testicon.pbl" "" pbd
build executable "orca_32p_new.exe" "TRAMOS.ICO" "resource.pbr" "y"  newvstylecontrols
end session
