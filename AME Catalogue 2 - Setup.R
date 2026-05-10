###############################################################################

# PLEASE FOR GOD'S SAKE READ THE README

# VARIABLES YOU SHOULD EDIT

# The prefix is what goes in front of your object names in the catalogue
# For example, if you put 'ROFL' as the prefix, you'll get names like
# ROFL-13HM and ROFL-S134FIV
# Type your prefix between the quotes 

prefix <- "AME"

# The directory is where the AME Catalogue will look for your ED Discovery
# spreadsheets, and where it'll export its own spreadsheets to. If you don't put
# your ED Discovery Spreadsheets in this directory, the program will not work.
# Type your directory between the quotes. In Windows, you can right click the top bar
# of the file explorer window where it shows the path, then click "copy address as text,"
# then you can paste the path between the quotes below.

directory <- ""

# Below is where you put all your custom names for celestial objects.
# After "names_cat <- c(" where it says "PUT YOUR NAMES HERE", 
# put the body name (from the BodyName column of the "AME Catalogue (Final).csv") of the object
# you want to give a custom name to. Each entry should go on a separate line between the quotes.
# There should be a comma at the end of every line you put it, except for the last line.
# Similarly, put your custom name entries on the lines between the parenthesis after
# "names_custom <- c(".

names_cat <- NA
names_cat <- c(
  "PUT NAMES HERE",
  "HERE WORKS TOO",
  "ONE PER LINE"
  )
names_cat <- as.data.frame(names_cat)

names_custom <- NA
names_custom <- c(
  "PUT CUSTOM NAMES HERE",
  "HERE WORKS TOO",
  "ONE PER LINE"
)
names_custom <- as.data.frame(names_custom)

###############################################################################

# DON'T EDIT ANY OF THIS STUFF

if (dir.exists("cache") == FALSE) {
  dir.create("cache")
}
if (dir.exists("data") == FALSE) {
  dir.create("data")
}
if (dir.exists("sound") == FALSE) {
  dir.create("sound")
}
vars <- as.data.frame(NA)
vars$prefix <- prefix
vars$directory <- directory
write.csv(vars, file = "cache/vars.rvars")
write.csv(names_cat, file = "cache/names_cat.rvars")
write.csv(names_custom, file = "cache/names_custom.rvars")

###############################################################################
