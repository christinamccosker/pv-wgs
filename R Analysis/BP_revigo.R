# A treemap R script produced by the Revigo server at http://revigo.irb.hr/
# If you found Revigo useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# author: Anton Kratz <anton.kratz@gmail.com>, RIKEN Omics Science Center, Functional Genomics Technology Team, Japan
# created: Fri, Nov 02, 2012  7:25:52 PM
# last change: Fri, Nov 09, 2012  3:20:01 PM

# -----------------------------------------------------------------------------
# If you don't have the treemap package installed, uncomment the following line:
# install.packages( "treemap" );
library(treemap) 								# treemap package by Martijn Tennekes

# Set the working directory if necessary
# setwd("C:/Users/username/workingdir");

# --------------------------------------------------------------------------
# Here is your data from Revigo. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","frequency","uniqueness","dispensability","representative");
revigo.data <- rbind(c("GO:0000122","negative regulation of transcription by RNA polymerase II",0.48144309713813077,0.7262302165944945,-0,"negative regulation of transcription by RNA polymerase II"),
c("GO:0006355","regulation of DNA-templated transcription",11.135305937063894,0.6541798229950018,0.51793256,"negative regulation of transcription by RNA polymerase II"),
c("GO:0008284","positive regulation of cell population proliferation",0.22820187682100118,0.6896197983053194,0.50413218,"negative regulation of transcription by RNA polymerase II"),
c("GO:0010628","positive regulation of gene expression",0.484610858376656,0.625229955723404,0.55760858,"negative regulation of transcription by RNA polymerase II"),
c("GO:0043065","positive regulation of apoptotic process",0.14442726802966876,0.700014752511997,0.17647726,"negative regulation of transcription by RNA polymerase II"),
c("GO:0006468","protein phosphorylation",3.756826993126081,0.9408680242828984,0.02199923,"protein phosphorylation"),
c("GO:0006508","proteolysis",5.329242630377004,0.9569986056513445,0.43473889,"protein phosphorylation"),
c("GO:0006915","apoptotic process",0.3770497347375319,0.987177515465937,0,"apoptotic process"),
c("GO:0006955","immune response",0.6332667307635791,0.8178738104301352,-0,"immune response"),
c("GO:0007186","G protein-coupled receptor signaling pathway",1.464221945905271,0.6711899598083721,0.31757721,"immune response"),
c("GO:0035556","intracellular signal transduction",4.385343312708344,0.6337569153652018,0.60127973,"immune response"),
c("GO:0007155","cell adhesion",1.0284049482842672,0.9857764410178013,0.01508773,"cell adhesion"),
c("GO:0007283","spermatogenesis",0.14108475073214172,0.8863109358038005,-0,"spermatogenesis"),
c("GO:0007399","nervous system development",1.1853974230914583,0.8718955297045332,0.57046428,"spermatogenesis"),
c("GO:0015031","protein transport",2.9737820130332575,0.9839612832966271,0.01847727,"protein transport"),
c("GO:0016477","cell migration",0.48278207313949656,0.9868570362244452,0.01370061,"cell migration"));

stuff <- data.frame(revigo.data);
names(stuff) <- revigo.names;

stuff$frequency <- as.numeric( as.character(stuff$frequency) );
stuff$uniqueness <- as.numeric( as.character(stuff$uniqueness) );
stuff$dispensability <- as.numeric( as.character(stuff$dispensability) );

# by default, outputs to a PDF file
pdf( file="revigo_treemap.pdf", width=16, height=9 ) # width and height are in inches

# check the tmPlot command documentation for all possible parameters - there are a lot more
treemap(
  stuff,
  index = c("representative","description"),
  vSize = "uniqueness",
  type = "categorical",
  vColor = "representative",
  title = "Revigo TreeMap",
  inflate.labels = FALSE,      # set this to TRUE for space-filling group labels - good for posters
  lowerbound.cex.labels = 0,   # try to draw as many labels as possible (still, some small squares may not get a label)
  bg.labels = "#CCCCCCAA",   # define background color of group labels
								 # "#CCCCCC00" is fully transparent, "#CCCCCCAA" is semi-transparent grey, NA is opaque
  position.legend = "none"
)

dev.off()

