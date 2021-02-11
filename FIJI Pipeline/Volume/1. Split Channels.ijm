dir1 = getDirectory("Choose Source Directory "); 
dir2 = getDirectory("Choose Destination Directory "); 
list = getFileList(dir1);
setBatchMode(true);
for (i=0; i<list.length; i++) {
showProgress(i+1, list.length); open(dir1+list[i]);

//Split Channels
run("Split Channels");

//Saving Brightfield Channel
saveAs("Tiff", dir2+list[i]);
run("Close");

//Close Chlorophyll Channel
close();

//Close AlexaFluor555 Channel
close();

//Close DAPI Channel
run("Close");
}