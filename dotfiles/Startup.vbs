Set shell = CreateObject("WScript.Shell" ) 
shell.Run """C:\Program Files\VcXsrv\vcxsrv.exe"" :0 -screen 0 @1 -nodecoration -wgl"	
shell.Run "C:\Arch\Arch.exe run ""~/.scripts/wlaunch""", 0
