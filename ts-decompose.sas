proc timeseries data=sashelp.air outdecomp=airdecomp;
   id date interval=month;
   var air;
   decomp orig tcs tcc sic tc sc cc ic;
run;

