proc timeseries data=sashelp.air outdecomp=baselib.airdecomp out=airout plots=(series cycles residual);
   id date interval=month;
   var air;
   decomp orig tcs tcc sic tc sc cc ic;
run;
