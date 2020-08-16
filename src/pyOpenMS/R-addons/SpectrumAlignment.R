
SpectrumAlignment$$set("public","getSpectrumAlignment",function(result,spec1,spec2){
  if(!is_list(result)) { stop("arg result should be a list") }
  if(!(is.R6(spec1) && class(spec1)[1]=="MSSpectrum" && is.R6(spec2) && class(spec2)[1]=="MSSpectrum")) { stop("spec1 and spec2 be MSSpectrum object") }
  result1 <- py_to_r(result)
  private$$py_obj$$getSpectrumAlignment(result1,spec1,spec2)
  tryCatch({
    eval.parent(substitute(result <- r_to_py(result1)))
    invisible()
           }, error = function(e) { invisible()})
})