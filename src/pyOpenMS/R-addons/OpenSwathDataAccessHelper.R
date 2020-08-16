
OpenSwathDataAccessHelper$$set("public","convertToSpectrumPtr",function(spectrum){
  if( !(is.R6(spectrum) && class(spectrum)=="MSSpectrum")) { stop("arg spec wrong type") }
  res <- private$$py_obj$$convertToSpectrumPtr(spectrum)
  return(OSSpectrum$$new(res))
} )

OpenSwathDataAccessHelper$$set("public","convertToChromatogramPtr",function(chrom){
  if( !(is.R6(chrom) && class(chrom)=="MSChromatogram")) { stop("arg chrom wrong type") }
  res <- private$$py_obj$$convertToChromatogramPtr(chrom)
  return(OSChromatogram$$new(res))
} )