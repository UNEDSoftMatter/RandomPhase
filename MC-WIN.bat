SET PATH=%PATH%;%cd%\gnuplot;%cd%\bin;
SET /a Bytes=300000000
editbin /STACK:%Bytes% %cd%\bin\Monte_Carlo_2D_win.exe 
dos2unix -n %~1 %~1.tmp  
%cd%\bin\Monte_Carlo_2D_win.exe %~1.tmp %~2
del %~1.tmp