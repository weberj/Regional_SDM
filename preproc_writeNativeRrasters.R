#####
# This script will take a folder of geoTiffs and 
# write them out in native R raster format
#
####

library(raster)

# set this path to the folder where the environmental rasters reside
# it can have other files, but only *.tifs that you want to be included
# in the brick
pathToTifs <- "G:/RegionalSDM/env_vars/geotiffs"

setwd(pathToTifs)

# Joe was here.

# set the output path
outPath <- "G:/RegionalSDM/env_vars/nativeR"


# get a list of the grids
tiflist <- list.files(pattern = ".tif$")

# loop through each tiff in the list, write it out in native R format
for(tif in tiflist){
	x <- raster(tif)
	nm <- substr(tif,1,nchar(tif) - 4)
	writeRaster(x, filename = paste(outPath,"/",nm,sep=""), format = "raster")
	
	}


