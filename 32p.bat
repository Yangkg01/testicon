start session
set liblist "D:\PB application\testicon126\testicon.pbl" 
set application "D:\PB application\testicon126\testicon.pbl" "testicon"
build application full
build library "D:\PB application\testicon126\testicon.pbl" "" pbd
build executable "D:\PB application\testicon126\orca_32p_new.exe" "D:\PB application\testicon126\TRAMOS.ICO" "D:\PB application\testicon126\resource.pbr" "y"  newvstylecontrols
end session
