
library(xegaBNF)

testBNF<-function(fn, verbose=TRUE)
{
G<-newBNF(fn)
Gc<-compileBNF(G())
if (verbose) 
   { cat("Grammar:", G()$filename, "PT:", "\n\n")
     printPT(Gc$PT, Gc)
     cat("\n","Grammar:", G()$filename, "SPT:", "\n\n")
     printPT(Gc$SPT, Gc)
     cat("\n\n")
   }   
}

testBNF("BG0.txt")
testBNF("BG1.txt")
testBNF("BG1symb2.txt")
testBNF("BG1symb2r2.txt")
testBNF("pascal.txt")

cat("end of script testBNF.\n")

