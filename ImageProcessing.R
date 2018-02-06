############## Infant Cognition lab ##############
#### Last edit: 2/5/18 
#### Created by: Michaela DeBolt




install.packages("magick")
library("magick")

# negative edits  
path = "~/Desktop/images" # set your path to the main directory containing the images you would like to edit
newpath = "~/Desktop/images/NegEdits" #setting a second path to save the edited images 
file.names <- dir(path, pattern =".jpg") # create a list of your file names in your main directory

for(i in 1:length(file.names)){
  file <- image_read(file.names[i]) # set the file to the ith item in your list of file names 
  img = image_negate(file) # this is the function that will "negate" your image. save to the object "img". 
  mytime <- format(Sys.time(), "%b_%d_%H_%M_%S_%Y") # this is not necessary, but if you want a time stamp...this will do it. 
  myfile <- file.path(newpath, paste0(mytime,"_",file.names[i],"Negedit","_", ".jpg")) # this will save your file with whatever you want to call it. You can delete the mytime thing if you dont want the time/date. 
  image_write(img, path = myfile , format = "jpg") # This will save your new image to your specified (above) working directory! 
}

# blur edits
path = "~/Desktop/images"
newpath = "~/Desktop/images/BlurEdits"
file.names <- dir(path, pattern =".jpg")
for(i in 1:length(file.names)){
  file <- image_read(file.names[i])
  img = image_blur(file, radius = 10,sigma = 11)
  myfile <- file.path(newpath, paste0(file.names[i],"_","BlurEdit","_", ".jpg"))
  image_write(img, path = myfile , format = "jpg")
}





