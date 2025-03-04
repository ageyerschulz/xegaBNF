
#' Print a production table of a grammar.
#'
#' @param PT A production table of the grammar G.
#' @param G  A grammar object
#' @param verbose Print production table? Default: \code{TRUE}.
#'
#' @return An invisible list of the production table.
#'
#' @family Diagnostics
#'
#' @examples
#' g<-compileBNF(booleanGrammar())
#' cat("Production table:\n")
#' l<-printPT(g$PT, g, verbose=TRUE)
#' cat("Short Production table:\n")
#' printPT(g$SPT, g, verbose=TRUE)
#' 
#' @export
printPT<-function(PT, G, verbose=TRUE)
{ l<-list()
  decodeSymVec<-function(v, ST)
     { return(Reduce(unlist(lapply(ST$Symbols[v],as.character)), f=paste0)) }
  for (i in (1:length(PT$LHS)))
     { a<-paste0(decodeSymVec(PT$LHS[i], G$ST), " := ")
       l[[i]]<-paste0(a, decodeSymVec(PT$RHS[[i]], G$ST))
       if (verbose) {cat(l[[i]], "\n")} }
return(invisible(l))}

