macro "Batch_process_to_opened_image.openImg"{
	// Macro in ImageJ that process in batch mode several images
	// it will ask you which folder, then one by one your images will be processesed. It will e created a new folder where you can save your data or image processed
	
dir1 = getDirectory("Choose Source Directory "); 
list = getFileList(dir1); 
dir2 = dir1+"analysed"+File.separator; //create a new sufolred. Change the name of the folder as you prefere
//dir3 = dir2+"analysed"+File.separator;
File.makeDirectory(dir2);
	
	;
	// read open images
	imgArray = newArray(nImages); 
	for (i=0; i<nImages; i++) {
		selectImage(i+1);
		imgArray[i] = getImageID(); 
		}
	
	for (i=0; i< imgArray.length; i++) {
		selectImage(imgArray[i]);

//INSERT YOUR CODE HERE.
// FOR EXAMPLE, AS FOLLOW, SAVE ALL THE IMAGES AS TIF:
	
    //title = getTitle() ;
	//saveAs("Tiff",dir2+title+".tif");
	//run("Close");
	
	}
}


