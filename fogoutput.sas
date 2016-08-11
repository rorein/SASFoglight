/*First step: reads a CSV file that I have created from Foglight in order to view it better and/or alter what is shown -- DONE!*/
	/*Using proc import seems like the best way to read in CSV files*/
/*Second step: actually alter the CSV file for different uses*/
/*Third step: actually read Foglight and create a CSV file that will then be outputted*/


/*-------------------------------------------STEP 1--------------------------------------------------------*/

/*import of function to be edited in data*/
proc import datafile='path~here'
		dbms=dlm out=configitems replace;
	delimiter=',';
	getnames=yes;
run;

/*creation and/or output of unedited function -- 
	proc print to output
	proc content to create*/
proc content data=configitems;
run;


/*-----------------------------------------STEP 2----------------------------------------------------------*/

/*method/function to be altered*/
data editconfig;
	set configitems;

run;

/*output of edited function*/
title 'Configuration Items';
proc print data=editconfig noobs;
run;
title;


