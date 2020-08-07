start session
set liblist "testicon.pbl" 
set application "testicon.pbl" "testicon"
build application full
build library "testicon.pbl" ""32
build executable "orca_32m.exe" "" "" "y" machinecode newvstylecontrols
end session
