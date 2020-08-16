
# Returns a vector of double values.
Chromatogram$$set("public","getTimeArray",function() {
  return(private$$py_obj$$getTimeArray())
} )

# Returns a vector of double values.
Chromatogram$$set("public","getIntensityArray",function() {
  return(private$$py_obj$$getIntensityArray())
} )

Chromatogram$$set("public","setTimeArray",function(data) {
  if ( !(is_double(data) || is_integer(data)) ) { stop("arg transitions wrong type") }
  private$$py_obj$$setTimeArray(as.list(data))
  invisible()
} )

Chromatogram$$set("public","setIntensityArray",function(data) {
  if ( !(is_double(data) || is_integer(data)) ) { stop("arg transitions wrong type") }
  private$$py_obj$$setIntensityArray(as.list(data))
  invisible()
} )
