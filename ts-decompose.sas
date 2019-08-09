/* Time Series decomposition with SAS Proc Timeseries */
/* author: Cindy  Aug 2019  */

/* decompose with default option  */
proc timeseries data=sashelp.air outdecomp=outdecomp;
   id date interval=month;
   var air;
   decomp orig tcs tcc sic tc sc cc ic;
run;

/* decompose with additive option - just for a comparison  */
proc timeseries data=sashelp.air outdecomp=outdecomp;
   id date interval=month;
   var air;
   decomp orig tcs tcc sic tc sc cc ic / mode=additive;
run;
