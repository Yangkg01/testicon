start session
set liblist "D:\PB application\testicon126\testicon.pbl" 
set application "D:\PB application\testicon126\testicon.pbl" "testicon"
build application full
build library "D:\PB application\testicon126\testicon.pbl" "" pbd
build executable "D:\PB application\testicon126\orca_64p.exe" "TRAMOS.ICO" "" "y"  newvstylecontrols x64
end session
