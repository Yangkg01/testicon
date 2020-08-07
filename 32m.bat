start session
set liblist "D:\PB application\testicon126\testicon.pbl" 
set application "D:\PB application\testicon126\testicon.pbl" "testicon"
build application full
build library "D:\PB application\testicon126\testicon.pbl" ""32
build executable "orca_32m.exe" "" "" "y" machinecode newvstylecontrols
end session
