# load the CSV file with a header, and keep strings as character vectors

# Read the csv file 
nycTreeData.df <- read.csv("2015-street-tree-census-tree-data.csv", header = TRUE, stringsAsFactors = FALSE, na.strings = "NA")

# create an object with all of the common names of the trees
commonName <- nycTreeData.df$spc_common
treeNames.sorted.freq.t <- sort(table(commonName), decreasing = TRUE)
plot(treeNames.sorted.freq.t[1:10])

# create an object that contains the status of all of the trees and give me the unique values
treeStatus <- nycTreeData.df$status
unique(treeStatus)

# find all of the rows where the tree is listed as dead or a stump
dead <- c("Stump", "Dead")
deadTrees <- nycTreeData.df[nycTreeData.df$status %in% dead,]
aliveTrees <- nycTreeData.df[nycTreeData.df$status %in% "Alive",]

# Exercise to do together
# How do I create a plot that shows the number of dead and alive trees on blocks that have dead trees?

